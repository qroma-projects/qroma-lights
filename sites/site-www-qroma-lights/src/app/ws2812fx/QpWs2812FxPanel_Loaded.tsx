import React, { useEffect, useState } from 'react';
// import { QromaPointDetails } from '../../../proto-ts/qroma-point-config';
import { Tab, Tabs } from '@mui/material';
import SetColorPanel from './SetColorPanel';
import SetFlashPanel from './SetFlashPanel';
import ConfigureWx2812FxPanel from './ConfigureWx2812FxPanel';
// import { 
//   createSaveQromaStripStateCommandBytes, 
//   createSetAnimationCommandBytes,
//   createSetBrightnessCommandBytes,
//   createSetLedCountCommandBytes,
//   createSetLedDataRateCommandBytes,
//   createSetLedIoSettingsCommandBytes,
//   createSetLedSignalColorOrderCommandBytes,
//   createSetPinNumberCommandBytes,
//   createSetSolidColorAnimation,
//   createSetSolidColorCommandBytes,
//   createUpdateSegmentCountCommandBytes
// } from '../../../qroma-api/qroma-device/qroma-ws2812fx';
// import { getSerialProviderConnection } from '../../../qroma-serial/SerialProvider';
// import { readQromaPointConfig } from '../../../qroma-api/qroma-device/qroma-device';
// import { QromaPoint_WS2812FX_IoSettings, QromaStrip_WS2812FX_FadeSpeed, QromaStrip_WS2812FX_NeoPixelRgbOrder, QromaStrip_WS2812FX_NeoPixelTxRate, QromaStrip_WS2812FX_Pattern, QromaStrip_WS2812FX_PixelsSize, WS2812FX_Config } from '../../../proto-ts/driver-ws2812fx';
import { convertHexColorToRgbBytes, convertRgbBytesToHexColor } from '../app_utils';

// import { SaveFlashCommandDialog } from './SaveFlashCommandDialog';
// import { SaveQromaPointConfigurationDialog } from './SaveQromaPointConfigurationDialog';
import { QromaStripConfig, QromaStrip_WS2812FX_FadeSpeed, QromaStrip_WS2812FX_NeoPixelRgbOrder, QromaStrip_WS2812FX_NeoPixelTxRate, QromaStrip_WS2812FX_Pattern, QromaStrip_WS2812FX_PixelsSize, QromaStrip_WS2812FX_StripIndex } from '../qroma-proto/qroma-lights-types';
import { sleep } from '../../react-qroma-lib';
import { createSetAnimationCommandBytes, createSetSolidColorAnimation } from './qroma-ws2812fx';
import { IQromaLightsApi } from '../api/QromaLightsApi';
// import { SaveFlashCommandDialog } from './SaveFlashCommandDialog';
// import { SaveQromaPointConfigurationDialog } from './SaveQromaPointConfigurationDialog';


type QpWs2812FxPanel_LoadedProps = {
  // qromaPoint: QromaPointDetails
  qromaLightsApi: IQromaLightsApi
  config: QromaStripConfig
  stripIndex: QromaStrip_WS2812FX_StripIndex
  tabIndex: number
  onSetTabIndex: (newTabIndex: number) => void
  // onRefreshConfig: () => void
}


interface TabPanelProps {
  children?: React.ReactNode;
  index: number;
  value: number;
}

function TabPanel(props: TabPanelProps) {
  const { children, value, index, ...other } = props;

  return (
    <div
      role="tabpanel"
      hidden={value !== index}
      id={`simple-tabpanel-${index}`}
      aria-labelledby={`simple-tab-${index}`}
      {...other}
    >
      {value === index && (
        <>
          {children}
        </>
      )}
    </div>
  );
}

function a11yProps(index: number) {
  return {
    id: `simple-tab-${index}`,
    'aria-controls': `simple-tabpanel-${index}`,
  };
}

export const QpWs2812FxPanel_Loaded = (props: QpWs2812FxPanel_LoadedProps) => {
  
  const [ws2812fxConfig, setWs2812fxConfig] = useState(props.config);
  // const [editingSegmentIndex, setEditingSegment] = useState(0);

  const [isSaveAnimationCommandModalOpen, setIsSaveAnimationCommandModalOpen] = useState(false);
  const [isSaveQromaPointConfigurationModalOpen, setIsSaveQromaPointConfigurationModalOpen] = useState(false);

  console.log("SHOWING QpWs2812FxPanel_Loaded")
  console.log(props)

  // const ledsConfig = ws2812fxConfig?.leds!;
  // const animation = ledsConfig.segmentAnimations[editingSegmentIndex];
  const animation = ws2812fxConfig.animation;

  const animationColor1Hex = convertRgbBytesToHexColor(
    animation.color1.red,
    animation.color1.green,
    animation.color1.blue,
    );
  const animationColor2Hex = convertRgbBytesToHexColor(
    animation.color2.red,
    animation.color2.green,
    animation.color2.blue,
    );
  const animationColor3Hex = convertRgbBytesToHexColor(
    animation.color3.red,
    animation.color3.green,
    animation.color3.blue,
    );

  const gammaCorrectionEnabled = animation.useGammaCorrection;
  const reverseDirection = animation.reversed;
  const pattern = animation.pattern;
  const fadeSpeed = animation.fadeSpeed;
  const pixelsSize = animation.size;
  const pixelSpeed = animation.speed;


  const ioSettings = ws2812fxConfig.ioSettings;
  const maxBrightness = ws2812fxConfig.brightness;
  const ledCount = ioSettings.ledCount;
  // const numSegments = ledsConfig.numSegments;
  // const maxSegmentCount = ledsConfig.maxNumSegments;
  const pinIoNumber = ioSettings.pin;
  const ledSignalColorOrder = ioSettings.neoPixelRgbOrder;
  const ledDataRate = ioSettings.neoPixelTxRate;

  
  // useEffect(() => {
  //   const loadConfig = async () => {
  //     if (ws2812fxConfig !== null) {
  //       return;
  //     }

  //     const qpConfigBytes = await readQromaPointConfig(props.qromaPoint.instanceId);
  //     if (qpConfigBytes === null) {
  //       console.log("FAILED TO LOAD QP CONFIG");
  //       return;
  //     }

  //     const qpConfig = WS2812FX_Config.fromBinary(qpConfigBytes);
  //     console.log(qpConfig);

  //     setWs2812fxConfig(qpConfig);
  //   }

  //   loadConfig()
  //     .catch(console.error);
  // }, []);

  
  const handleChange = (event: React.SyntheticEvent, newValue: number) => {
    props.onSetTabIndex(newValue);
  };

  const onNewGammaCorrectionEnabled = (enabled: boolean) => {
    console.log("onNewGammaCorrectionEnabled: " + enabled);

    // const animationCmd = ws2812fxConfig?.leds?.segmentAnimations[editingSegmentIndex]!;
    const animationUpdate = ws2812fxConfig.animation;
    animationUpdate.useGammaCorrection = enabled;

    props.qromaLightsApi.setStripAnimation(props.stripIndex, animationUpdate);

    // animationCmd.useGammaCorrection = enabled;

    // const cmdBytes = createSetAnimationCommandBytes(props.qromaPoint.instanceId, animationCmd, editingSegmentIndex);

    // // const conn = getSerialProviderConnection();
    // // conn.sendBytes(cmdBytes);

    // const newWs2812FxConfig = WS2812FX_Config.clone(ws2812fxConfig);
    // newWs2812FxConfig.leds!.segmentAnimations[editingSegmentIndex].useGammaCorrection = enabled;

    // setWs2812fxConfig(newWs2812FxConfig);
  }


  const onNewSolidColorHex = (newSolidColorHex: string) => {
    console.log("onNewSolidColorHex")

    const hexRgb = convertHexColorToRgbBytes(newSolidColorHex);
    const animationUpdate = ws2812fxConfig.animation;

    animationUpdate.color1.red = hexRgb[0];
    animationUpdate.color1.green = hexRgb[1];
    animationUpdate.color1.blue = hexRgb[2];

    // newWs2812FxConfig.leds!.segmentAnimations[editingSegmentIndex].threeSetsOfColorRgbBytes[1] = hexRgb[1];
    // newWs2812FxConfig.leds!.segmentAnimations[editingSegmentIndex].threeSetsOfColorRgbBytes[2] = hexRgb[2];

    // animationUpdate.color1 = enabled;

    props.qromaLightsApi.setStripAnimation(props.stripIndex, animationUpdate);


    // const animationCmd = createSetSolidColorAnimation(newSolidColorHex, gammaCorrectionEnabled);
    // const cmdBytes = createSetAnimationCommandBytes(props.qromaPoint.instanceId, animationCmd, editingSegmentIndex);

    // const conn = getSerialProviderConnection();
    // conn.sendBytes(cmdBytes);

    // const newWs2812FxConfig = WS2812FX_Config.clone(ws2812fxConfig);
    // const hexRgb = convertHexColorToRgbBytes(newSolidColorHex);

    // newWs2812FxConfig.leds!.segmentAnimations[editingSegmentIndex].threeSetsOfColorRgbBytes[0] = hexRgb[0];
    // newWs2812FxConfig.leds!.segmentAnimations[editingSegmentIndex].threeSetsOfColorRgbBytes[1] = hexRgb[1];
    // newWs2812FxConfig.leds!.segmentAnimations[editingSegmentIndex].threeSetsOfColorRgbBytes[2] = hexRgb[2];

    // setWs2812fxConfig(newWs2812FxConfig);
  }

  const onNewAnimationColor1Hex = (colorHex: string) => {
    const hexRgb = convertHexColorToRgbBytes(colorHex);
    const animationUpdate = ws2812fxConfig.animation;

    animationUpdate.color1.red = hexRgb[0];
    animationUpdate.color1.green = hexRgb[1];
    animationUpdate.color1.blue = hexRgb[2];

    props.qromaLightsApi.setStripAnimation(props.stripIndex, animationUpdate);

    // const animationCmd = ws2812fxConfig?.leds?.segmentAnimations[editingSegmentIndex]!;

    // const hexRgb = convertHexColorToRgbBytes(colorHex);
    // animationCmd.threeSetsOfColorRgbBytes[0] = hexRgb[0];
    // animationCmd.threeSetsOfColorRgbBytes[1] = hexRgb[1];
    // animationCmd.threeSetsOfColorRgbBytes[2] = hexRgb[2];

    // const cmdBytes = createSetAnimationCommandBytes(props.qromaPoint.instanceId, animationCmd, editingSegmentIndex);
    // const conn = getSerialProviderConnection();
    // conn.sendBytes(cmdBytes);

    // const newWs2812FxConfig = WS2812FX_Config.clone(ws2812fxConfig);
    // newWs2812FxConfig.leds!.segmentAnimations[editingSegmentIndex].threeSetsOfColorRgbBytes[0] = hexRgb[0];
    // newWs2812FxConfig.leds!.segmentAnimations[editingSegmentIndex].threeSetsOfColorRgbBytes[1] = hexRgb[1];
    // newWs2812FxConfig.leds!.segmentAnimations[editingSegmentIndex].threeSetsOfColorRgbBytes[2] = hexRgb[2];

    // setWs2812fxConfig(newWs2812FxConfig);

    // console.log("Implement color command");
  }

  const onNewAnimationColor2Hex = (colorHex: string) => {
    const hexRgb = convertHexColorToRgbBytes(colorHex);
    const animationUpdate = ws2812fxConfig.animation;

    animationUpdate.color2.red = hexRgb[3];
    animationUpdate.color2.green = hexRgb[4];
    animationUpdate.color2.blue = hexRgb[5];

    props.qromaLightsApi.setStripAnimation(props.stripIndex, animationUpdate);

    // const animationCmd = ws2812fxConfig?.leds?.segmentAnimations[editingSegmentIndex]!;

    // const hexRgb = convertHexColorToRgbBytes(colorHex);
    // animationCmd.threeSetsOfColorRgbBytes[3] = hexRgb[0];
    // animationCmd.threeSetsOfColorRgbBytes[4] = hexRgb[1];
    // animationCmd.threeSetsOfColorRgbBytes[5] = hexRgb[2];

    // const cmdBytes = createSetAnimationCommandBytes(props.qromaPoint.instanceId, animationCmd, editingSegmentIndex);
    // const conn = getSerialProviderConnection();
    // conn.sendBytes(cmdBytes);

    // const newWs2812FxConfig = WS2812FX_Config.clone(ws2812fxConfig);
    // newWs2812FxConfig.leds!.segmentAnimations[editingSegmentIndex].threeSetsOfColorRgbBytes[3] = hexRgb[0];
    // newWs2812FxConfig.leds!.segmentAnimations[editingSegmentIndex].threeSetsOfColorRgbBytes[4] = hexRgb[1];
    // newWs2812FxConfig.leds!.segmentAnimations[editingSegmentIndex].threeSetsOfColorRgbBytes[5] = hexRgb[2];

    // setWs2812fxConfig(newWs2812FxConfig);

    // console.log("Implement color command");
  }

  const onNewAnimationColor3Hex = (colorHex: string) => {
    const hexRgb = convertHexColorToRgbBytes(colorHex);
    const animationUpdate = ws2812fxConfig.animation;

    animationUpdate.color3.red = hexRgb[6];
    animationUpdate.color3.green = hexRgb[7];
    animationUpdate.color3.blue = hexRgb[8];

    props.qromaLightsApi.setStripAnimation(props.stripIndex, animationUpdate);

    // const animationCmd = ws2812fxConfig?.leds?.segmentAnimations[editingSegmentIndex]!;

    // const hexRgb = convertHexColorToRgbBytes(colorHex);
    // animationCmd.threeSetsOfColorRgbBytes[6] = hexRgb[0];
    // animationCmd.threeSetsOfColorRgbBytes[7] = hexRgb[1];
    // animationCmd.threeSetsOfColorRgbBytes[8] = hexRgb[2];

    // const cmdBytes = createSetAnimationCommandBytes(props.qromaPoint.instanceId, animationCmd, editingSegmentIndex);
    // const conn = getSerialProviderConnection();
    // conn.sendBytes(cmdBytes);

    // const newWs2812FxConfig = WS2812FX_Config.clone(ws2812fxConfig);
    // newWs2812FxConfig.leds!.segmentAnimations[editingSegmentIndex].threeSetsOfColorRgbBytes[6] = hexRgb[0];
    // newWs2812FxConfig.leds!.segmentAnimations[editingSegmentIndex].threeSetsOfColorRgbBytes[7] = hexRgb[1];
    // newWs2812FxConfig.leds!.segmentAnimations[editingSegmentIndex].threeSetsOfColorRgbBytes[8] = hexRgb[2];

    // setWs2812fxConfig(newWs2812FxConfig);

    // console.log("Implement color command");
  }

  const onReverseDirection = (reverse: boolean) => {
    const animationUpdate = ws2812fxConfig.animation;
    animationUpdate.reversed = reverse;
    
    props.qromaLightsApi.setStripAnimation(props.stripIndex, animationUpdate);

    // const animationCmd = ws2812fxConfig?.leds?.segmentAnimations[editingSegmentIndex]!;
    // animationCmd.reversed = reverse;

    // const cmdBytes = createSetAnimationCommandBytes(props.qromaPoint.instanceId, animationCmd, editingSegmentIndex);
    // const conn = getSerialProviderConnection();
    // conn.sendBytes(cmdBytes);

    // const newWs2812FxConfig = WS2812FX_Config.clone(ws2812fxConfig);
    // newWs2812FxConfig.leds!.segmentAnimations[editingSegmentIndex].reversed = reverse;

    // setWs2812fxConfig(newWs2812FxConfig);

    // console.log("Implement reverse direction command");
  }

  const onPatternChange = (value: QromaStrip_WS2812FX_Pattern) => {
    const animationUpdate = ws2812fxConfig.animation;
    animationUpdate.pattern = value;
    
    props.qromaLightsApi.setStripAnimation(props.stripIndex, animationUpdate);

    // const animationCmd = ws2812fxConfig?.leds?.segmentAnimations[editingSegmentIndex]!;
    // animationCmd.pattern = value;

    // const cmdBytes = createSetAnimationCommandBytes(props.qromaPoint.instanceId, animationCmd, editingSegmentIndex);
    // const conn = getSerialProviderConnection();
    // conn.sendBytes(cmdBytes);

    // const newWs2812FxConfig = WS2812FX_Config.clone(ws2812fxConfig);
    // newWs2812FxConfig.leds!.segmentAnimations[editingSegmentIndex].pattern = value;

    // setWs2812fxConfig(newWs2812FxConfig);

    // console.log("Implement new pattern command: " + value);
  }

  const onPixelSpeedChange = (value: number) => {
    const animationUpdate = ws2812fxConfig.animation;
    animationUpdate.speed = value;
    
    props.qromaLightsApi.setStripAnimation(props.stripIndex, animationUpdate);


    // const animationCmd = ws2812fxConfig?.leds?.segmentAnimations[editingSegmentIndex]!;
    // animationCmd.speed = value;

    // const cmdBytes = createSetAnimationCommandBytes(props.qromaPoint.instanceId, animationCmd, editingSegmentIndex);
    // const conn = getSerialProviderConnection();
    // conn.sendBytes(cmdBytes);

    // const newWs2812FxConfig = WS2812FX_Config.clone(ws2812fxConfig);
    // newWs2812FxConfig.leds!.segmentAnimations[editingSegmentIndex].speed = value;

    // setWs2812fxConfig(newWs2812FxConfig);

    console.log("Implement new pixel speed command");
  }

  const onFadeSpeedChange = (value: QromaStrip_WS2812FX_FadeSpeed) => {
    const animationUpdate = ws2812fxConfig.animation;
    animationUpdate.fadeSpeed = value;
    
    props.qromaLightsApi.setStripAnimation(props.stripIndex, animationUpdate);

    
    // const animationCmd = ws2812fxConfig?.leds?.segmentAnimations[editingSegmentIndex]!;
    // animationCmd.fadeSpeed = value;

    // const cmdBytes = createSetAnimationCommandBytes(props.qromaPoint.instanceId, animationCmd, editingSegmentIndex);
    // const conn = getSerialProviderConnection();
    // conn.sendBytes(cmdBytes);

    // const newWs2812FxConfig = WS2812FX_Config.clone(ws2812fxConfig);
    // newWs2812FxConfig.leds!.segmentAnimations[editingSegmentIndex].fadeSpeed = value;

    // setWs2812fxConfig(newWs2812FxConfig);

    console.log("Implement new fade speed command");
  }

  const onPixelsSizeChange = (value: QromaStrip_WS2812FX_PixelsSize) => {
    const animationUpdate = ws2812fxConfig.animation;
    animationUpdate.size = value;
    
    props.qromaLightsApi.setStripAnimation(props.stripIndex, animationUpdate);

    
    // const animationCmd = ws2812fxConfig?.leds?.segmentAnimations[editingSegmentIndex]!;
    // animationCmd.size = value;

    // const cmdBytes = createSetAnimationCommandBytes(props.qromaPoint.instanceId, animationCmd, editingSegmentIndex);
    // const conn = getSerialProviderConnection();
    // conn.sendBytes(cmdBytes);

    // const newWs2812FxConfig = WS2812FX_Config.clone(ws2812fxConfig);
    // newWs2812FxConfig.leds!.segmentAnimations[editingSegmentIndex].size = value;

    // setWs2812fxConfig(newWs2812FxConfig);

    console.log("Implement new pixel size command");
  }

  const onNewMaxBrightness = (brightness: number) => {
    props.qromaLightsApi.setStripBrightness(props.stripIndex, brightness);

    console.log("onNewMaxBrightness() - 1: " + brightness);

    // const cmdBytes = createSetBrightnessCommandBytes(props.qromaPoint.instanceId, brightness);
    // const conn = getSerialProviderConnection();
    // conn.sendBytes(cmdBytes);
    
    // const newWs2812FxConfig = WS2812FX_Config.clone(ws2812fxConfig);
    // newWs2812FxConfig.leds!.brightness = brightness;

    // setWs2812fxConfig(newWs2812FxConfig);
    // console.log("onNewMaxBrightness()");
  } 

  // const onNewSegmentCount = (segmentCount: number) => {

  //   const cmdBytes = createUpdateSegmentCountCommandBytes(props.qromaPoint.instanceId, 
  //     segmentCount, maxSegmentCount, ledCount);
  //   const conn = getSerialProviderConnection();
  //   conn.sendBytes(cmdBytes);

  //   console.log("REFRESH CONFIG - SEGMENT");
  //   props.onRefreshConfig();
  // } 
  
  const onNewLedCount = (newLedCount: number): void => {
    const ioSettingsUpdate = ws2812fxConfig.ioSettings;
    ioSettingsUpdate.ledCount = newLedCount;
    
    props.qromaLightsApi.setStripIoSettings(props.stripIndex, ioSettingsUpdate);


    // const conn = getSerialProviderConnection();

    // const setLedCountCmdBytes = createSetLedCountCommandBytes(props.qromaPoint.instanceId, ioSettings, newLedCount);
    // conn.sendBytes(setLedCountCmdBytes);

    // const setSegmentCountCmdBytes = createUpdateSegmentCountCommandBytes(props.qromaPoint.instanceId, 
    //   numSegments, maxSegmentCount, newLedCount);
    // conn.sendBytes(setSegmentCountCmdBytes);

    // console.log("REFRESH CONFIG - LED COUNT");
    // props.onRefreshConfig();
  } 
  
  const onNewPinIoNumber = (pinNumber: number) => {
    const ioSettingsUpdate = ws2812fxConfig.ioSettings;
    ioSettingsUpdate.pin = pinNumber;
    
    props.qromaLightsApi.setStripIoSettings(props.stripIndex, ioSettingsUpdate);


    // const cmdBytes = createSetPinNumberCommandBytes(props.qromaPoint.instanceId, ioSettings, pinNumber);
    // const conn = getSerialProviderConnection();
    // conn.sendBytes(cmdBytes);
    
    // const newWs2812FxConfig = WS2812FX_Config.clone(ws2812fxConfig);
    // newWs2812FxConfig.ioSettings!.pin = pinNumber;

    // setWs2812fxConfig(newWs2812FxConfig);
  } 
  
  const onNewTxDataRate = (txRate: QromaStrip_WS2812FX_NeoPixelTxRate) => {
    const ioSettingsUpdate = ws2812fxConfig.ioSettings;
    ioSettingsUpdate.neoPixelTxRate = txRate;
    
    props.qromaLightsApi.setStripIoSettings(props.stripIndex, ioSettingsUpdate);


    // const cmdBytes = createSetLedDataRateCommandBytes(props.qromaPoint.instanceId, ioSettings, txRate);
    // const conn = getSerialProviderConnection();
    // conn.sendBytes(cmdBytes);
    
    // const newWs2812FxConfig = WS2812FX_Config.clone(ws2812fxConfig);
    // newWs2812FxConfig.ioSettings!.neoPixelTxRate = txRate;

    // setWs2812fxConfig(newWs2812FxConfig);
  }

  const onNewLedSignalColorOrder = (ledSignalColorOrder: QromaStrip_WS2812FX_NeoPixelRgbOrder) => {
    const ioSettingsUpdate = ws2812fxConfig.ioSettings;
    ioSettingsUpdate.neoPixelRgbOrder = ledSignalColorOrder;
    
    props.qromaLightsApi.setStripIoSettings(props.stripIndex, ioSettingsUpdate);


    // const cmdBytes = createSetLedSignalColorOrderCommandBytes(props.qromaPoint.instanceId, ioSettings, ledSignalColorOrder);
    // const conn = getSerialProviderConnection();
    // conn.sendBytes(cmdBytes);
    
    // const newWs2812FxConfig = WS2812FX_Config.clone(ws2812fxConfig);
    // newWs2812FxConfig.leds!.brightness = maxBrightness;

    // setWs2812fxConfig(newWs2812FxConfig);
  }

  // const onNewConfiguration = async (
  //   maxBrightness: number,
  //   ledCount: number,
  //   numberOfSegments: number,
  //   maxSegmentCount: number,
  //   pinIoNumber: number,
  //   ledSignalColorOrder: QromaStrip_WS2812FX_NeoPixelRgbOrder,
  //   ledDataRate: QromaStrip_WS2812FX_NeoPixelTxRate,  ) => 
  // {
  //   const newIoSettings = {
  //     pin: pinIoNumber,
  //     ledCount: ledCount,
  //     neoPixelRgbOrder: ledSignalColorOrder,
  //     neoPixelTxRate: ledDataRate,
  //   } as QromaPoint_WS2812FX_IoSettings;

  //   const cmdBytes = createSetLedIoSettingsCommandBytes(
  //     props.qromaPoint.instanceId, 
  //     newIoSettings
  //     );

  //   const updateSegmentCountCmdBytes = createUpdateSegmentCountCommandBytes(
  //     props.qromaPoint.instanceId, numberOfSegments, maxSegmentCount, ledCount);

  //   const setBrightnessCmdBytes = createSetBrightnessCommandBytes(props.qromaPoint.instanceId, maxBrightness);

  //   const conn = getSerialProviderConnection();
  //   conn.sendBytes(setBrightnessCmdBytes);
    
  //   await sleep(100);

  //   conn.sendBytes(cmdBytes);
    
  //   await sleep(100);

  //   conn.sendBytes(updateSegmentCountCmdBytes);

  //   const newWs2812FxConfig = WS2812FX_Config.clone(ws2812fxConfig);
  //   newWs2812FxConfig.ioSettings = newIoSettings;
  //   newWs2812FxConfig.leds!.brightness = maxBrightness;
    
  //   setWs2812fxConfig(newWs2812FxConfig);
  // }

  // const saveAnimationConfiguration = () => {
  //   const cmdBytes = createSaveQromaStripStateCommandBytes(props.qromaPoint.instanceId);
  //   const conn = getSerialProviderConnection();
  //   conn.sendBytes(cmdBytes);
  // }

  // const onNewEditingSegmentIndex = (newEditingSegmentIndex: number) => {
  //   console.log("EDIT SEGMENT INDEX: " + newEditingSegmentIndex);
  //   setEditingSegment(newEditingSegmentIndex);
  // }

  const saveAnimationCommand = () => {
    setIsSaveAnimationCommandModalOpen(true);
  }

  const handleCloseAnimationCommandModal = () => {
    setIsSaveAnimationCommandModalOpen(false);
  }

  const saveQromaPointConfiguration = () => {
    setIsSaveQromaPointConfigurationModalOpen(true);
  }

  const handleCloseSaveQromaPointConfigurationModal = () => {
    setIsSaveQromaPointConfigurationModalOpen(false);
  }

  const currentAnimation = ws2812fxConfig?.leds?.segmentAnimations[editingSegmentIndex]!;
  const qromaPointIoSettings = ws2812fxConfig?.ioSettings!;

  
  return (
    <>
      {/* <SaveFlashCommandDialog 
        isOpen={isSaveAnimationCommandModalOpen}
        animation={currentAnimation}
        onHandleClose={handleCloseAnimationCommandModal}
        />
      <SaveQromaPointConfigurationDialog
        isOpen={isSaveQromaPointConfigurationModalOpen}
        qromaPointIoSettings={qromaPointIoSettings}
        maxBrightness={maxBrightness}
        numberOfSegments={numSegments}
        maxSegmentCount={maxSegmentCount}
        onHandleClose={handleCloseSaveQromaPointConfigurationModal}
        /> */}
      <Tabs value={props.tabIndex} onChange={handleChange} aria-label="basic tabs example">
        <Tab label="Color" {...a11yProps(0)} />
        <Tab label="Flash" {...a11yProps(1)} />
        <Tab label="Configuration" {...a11yProps(2)} />
      </Tabs>
      <TabPanel value={props.tabIndex} index={0}>
        <SetColorPanel 
          activeColorHex={animationColor1Hex}
          onColorChange={onNewSolidColorHex}
          gammaCorrectionEnabled={gammaCorrectionEnabled}
          onGammaCorrectionEnabledChange={onNewGammaCorrectionEnabled}
          // saveFlashConfiguration={saveAnimationConfiguration}
          // numActiveSegments={numSegments}
          // editingSegmentIndex={editingSegmentIndex}
          // onEditingSegmentIndexChange={onNewEditingSegmentIndex}
          saveFlashCommand={saveAnimationCommand}
          />
      </TabPanel>
      <TabPanel value={props.tabIndex} index={1}>
        <SetFlashPanel 
          color1Hex={animationColor1Hex}
          onColor1Change={onNewAnimationColor1Hex}
          color2Hex={animationColor2Hex}
          onColor2Change={onNewAnimationColor2Hex}
          color3Hex={animationColor3Hex}
          onColor3Change={onNewAnimationColor3Hex}
          gammaCorrectionEnabled={gammaCorrectionEnabled}
          onGammaCorrectionEnabledChange={onNewGammaCorrectionEnabled}
          reverseDirection={reverseDirection}
          onReverseDirectionChange={onReverseDirection}
          pattern={pattern}
          onPatternChange={onPatternChange}
          fadeSpeed={fadeSpeed}
          onFadeSpeedChange={onFadeSpeedChange}
          pixelsSize={pixelsSize}
          onPixelsSizeChange={onPixelsSizeChange}
          pixelSpeed={pixelSpeed}
          onPixelSpeedChange={onPixelSpeedChange}
          // saveFlashConfiguration={saveAnimationConfiguration}
          // numActiveSegments={numSegments}
          // editingSegmentIndex={editingSegmentIndex}
          // onEditingSegmentIndexChange={onNewEditingSegmentIndex}
          saveFlashCommand={saveAnimationCommand}
          />
      </TabPanel>
      <TabPanel value={props.tabIndex} index={2}>
        <ConfigureWx2812FxPanel 
          maxBrightness={maxBrightness}
          ledCount={ledCount}
          // segmentCount={numSegments}
          // maxSegmentCount={maxSegmentCount}
          pinIoNumber={pinIoNumber}
          ledSignalColorOrder={ledSignalColorOrder}
          ledDataRate={ledDataRate}
          
          onNewMaxBrightness={onNewMaxBrightness}
          // onNewSegmentCount={onNewSegmentCount}
          onNewLedCount={onNewLedCount}
          onNewPinIoNumber={onNewPinIoNumber}
          onNewTxDataRate={onNewTxDataRate}
          onNewLedSignalColorOrder={onNewLedSignalColorOrder}

          // onNewConfiguration={onNewConfiguration}

          saveQromaPointConfiguration={saveQromaPointConfiguration}
          />
      </TabPanel>
    </>
  )
}

