import React, { useState } from 'react';
import { Tab, Tabs } from '@mui/material';
import { SetColorPanel } from './SetColorPanel';
import { SetFlashPanel } from './SetFlashPanel';
import { ConfigureWx2812FxPanel } from './ConfigureWx2812FxPanel';
import { convertHexColorToRgbBytes, convertRgbBytesToHexColor } from '../app_utils';
import { IQromaLightsApi } from '../api/QromaLightsApi';
import { 
  QromaStripConfig,
  QromaStrip_WS2812FX_FadeSpeed,
  QromaStrip_WS2812FX_NeoPixelRgbOrder,
  QromaStrip_WS2812FX_NeoPixelTxRate,
  QromaStrip_WS2812FX_Pattern,
  QromaStrip_WS2812FX_PixelsSize,
  QromaStrip_WS2812FX_StripIndex,
  ShareableAnimation
} from '../../qroma-proto/qroma-lights-types';
import { DoValidationResponse, QInputAValueDialog } from '../../react-qroma-mui/input-controls/QInputAValueDialog';
import useBaseUrl from '@docusaurus/useBaseUrl';
import { convertBinaryToBase64 } from '../../react-qroma-lib/qroma-lib/utils';


type QpWs2812FxPanel_LoadedProps = {
  qromaLightsApi: IQromaLightsApi
  config: QromaStripConfig
  stripIndex: QromaStrip_WS2812FX_StripIndex
  tabIndex: number
  onSetTabIndex: (newTabIndex: number) => void

  isConfigChanged: boolean
  notifyConfigChanged: () => void
  saveConfig: () => void
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
  
  const ws2812fxConfig = props.config;

  const [isRenameDialogOpen, setIsRenameDialogOpen] = useState(false);
  const [isShareAnimationDialogOpen, setIsShareAnimationDialogOpen] = useState(false);

  console.log("SHOWING QpWs2812FxPanel_Loaded")
  console.log(props)

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
  const pinIoNumber = ioSettings.pin;
  const ledSignalColorOrder = ioSettings.neoPixelRgbOrder;
  const ledDataRate = ioSettings.neoPixelTxRate;

  
  const handleChange = (event: React.SyntheticEvent, newValue: number) => {
    props.onSetTabIndex(newValue);
  };

  const onNewGammaCorrectionEnabled = (enabled: boolean) => {
    console.log("onNewGammaCorrectionEnabled: " + enabled);

    const animationUpdate = ws2812fxConfig.animation;
    animationUpdate.useGammaCorrection = enabled;

    props.qromaLightsApi.setStripAnimation(props.stripIndex, animationUpdate);
  }


  const onNewSolidColorHex = (newSolidColorHex: string) => {
    console.log("onNewSolidColorHex")

    const hexRgb = convertHexColorToRgbBytes(newSolidColorHex);
    const animationUpdate = ws2812fxConfig.animation;

    animationUpdate.color1.red = hexRgb[0];
    animationUpdate.color1.green = hexRgb[1];
    animationUpdate.color1.blue = hexRgb[2];

    props.qromaLightsApi.setStripAnimation(props.stripIndex, animationUpdate);
  }

  const onNewAnimationColor1Hex = (colorHex: string) => {
    const hexRgb = convertHexColorToRgbBytes(colorHex);
    const animationUpdate = ws2812fxConfig.animation;

    animationUpdate.color1.red = hexRgb[0];
    animationUpdate.color1.green = hexRgb[1];
    animationUpdate.color1.blue = hexRgb[2];

    props.qromaLightsApi.setStripAnimation(props.stripIndex, animationUpdate);
  }

  const onNewAnimationColor2Hex = (colorHex: string) => {
    const hexRgb = convertHexColorToRgbBytes(colorHex);
    const animationUpdate = ws2812fxConfig.animation;

    animationUpdate.color2.red = hexRgb[3];
    animationUpdate.color2.green = hexRgb[4];
    animationUpdate.color2.blue = hexRgb[5];

    props.qromaLightsApi.setStripAnimation(props.stripIndex, animationUpdate);
  }

  const onNewAnimationColor3Hex = (colorHex: string) => {
    const hexRgb = convertHexColorToRgbBytes(colorHex);
    const animationUpdate = ws2812fxConfig.animation;

    animationUpdate.color3.red = hexRgb[6];
    animationUpdate.color3.green = hexRgb[7];
    animationUpdate.color3.blue = hexRgb[8];

    props.qromaLightsApi.setStripAnimation(props.stripIndex, animationUpdate);
  }

  const onReverseDirection = (reverse: boolean) => {
    const animationUpdate = ws2812fxConfig.animation;
    animationUpdate.reversed = reverse;
    
    props.qromaLightsApi.setStripAnimation(props.stripIndex, animationUpdate);
  }

  const onPatternChange = (value: QromaStrip_WS2812FX_Pattern) => {
    const animationUpdate = ws2812fxConfig.animation;
    animationUpdate.pattern = value;
    
    props.qromaLightsApi.setStripAnimation(props.stripIndex, animationUpdate);
  }

  const onPixelSpeedChange = (value: number) => {
    const animationUpdate = ws2812fxConfig.animation;
    animationUpdate.speed = value;
    
    props.qromaLightsApi.setStripAnimation(props.stripIndex, animationUpdate);
  }

  const onFadeSpeedChange = (value: QromaStrip_WS2812FX_FadeSpeed) => {
    const animationUpdate = ws2812fxConfig.animation;
    animationUpdate.fadeSpeed = value;
    
    props.qromaLightsApi.setStripAnimation(props.stripIndex, animationUpdate);
  }

  const onPixelsSizeChange = (value: QromaStrip_WS2812FX_PixelsSize) => {
    const animationUpdate = ws2812fxConfig.animation;
    animationUpdate.size = value;
    
    props.qromaLightsApi.setStripAnimation(props.stripIndex, animationUpdate);
  }

  const onNewMaxBrightness = (brightness: number) => {
    props.qromaLightsApi.setStripBrightness(props.stripIndex, brightness);

    console.log("onNewMaxBrightness() - 1: " + brightness);
  } 

  const onNewLedCount = (newLedCount: number): void => {
    const ioSettingsUpdate = ws2812fxConfig.ioSettings;
    ioSettingsUpdate.ledCount = newLedCount;
    
    props.qromaLightsApi.setStripIoSettings(props.stripIndex, ioSettingsUpdate);
  } 
  
  const onNewPinIoNumber = (pinNumber: number) => {
    const ioSettingsUpdate = ws2812fxConfig.ioSettings;
    ioSettingsUpdate.pin = pinNumber;
    
    props.qromaLightsApi.setStripIoSettings(props.stripIndex, ioSettingsUpdate);
  } 
  
  const onNewTxDataRate = (txRate: QromaStrip_WS2812FX_NeoPixelTxRate) => {
    const ioSettingsUpdate = ws2812fxConfig.ioSettings;
    ioSettingsUpdate.neoPixelTxRate = txRate;
    
    props.qromaLightsApi.setStripIoSettings(props.stripIndex, ioSettingsUpdate);
  }

  const onNewLedSignalColorOrder = (ledSignalColorOrder: QromaStrip_WS2812FX_NeoPixelRgbOrder) => {
    const ioSettingsUpdate = ws2812fxConfig.ioSettings;
    ioSettingsUpdate.neoPixelRgbOrder = ledSignalColorOrder;
    
    props.qromaLightsApi.setStripIoSettings(props.stripIndex, ioSettingsUpdate);
  }

  const onCloseRenameDialog = () => {
    setIsRenameDialogOpen(false);
  }

  const setNewQromaStripName = async (name: string) => {
    props.notifyConfigChanged();
    props.qromaLightsApi.setStripName(props.stripIndex, name);
  }

  const shareableAnimationUrlRoot = useBaseUrl("app/apply-animation/#/");

  const startShareAnimation = () => {
    setIsShareAnimationDialogOpen(true);
  }

  const onCloseShareDialog = () => {
    setIsShareAnimationDialogOpen(false);
  }

  const doShareAnimation = (name: string) => {
    const shareableAnimationData: ShareableAnimation = {
      name,
      animation,
    };
    console.log("SHAREABLE ANIMATION")
    console.log(shareableAnimationData)

    const shareableAnimationBytes = ShareableAnimation.toBinary(shareableAnimationData);
    const messageBase64 = convertBinaryToBase64(shareableAnimationBytes);
    const shareableAnimationUrl = shareableAnimationUrlRoot + messageBase64;

    window.open(shareableAnimationUrl, "_blank");
  }

  
  return (
    <>
      <QInputAValueDialog 
        isOpen={isRenameDialogOpen}
        title={'Rename Qroma Strip [' + props.config.name + ']'} 
        inputLabel={'Name'} 
        initValue={props.config.name}
        commitButtonLabel={'Save'} 
        doValidation={(latestValue: string): DoValidationResponse => {
          return {
            isValidValue: latestValue.length > 0,
            validationMessage: latestValue.length > 0 ? undefined : "Qroma Strip must have a name"
          } as DoValidationResponse;
        }}
        onHandleCommit={(name: string): void => {
          setNewQromaStripName(name);
          onCloseRenameDialog();
        }}
        onHandleClose={onCloseRenameDialog}
        key={"rename-qroma-strip-" + props.config.name}
        />
      
      <QInputAValueDialog 
        isOpen={isShareAnimationDialogOpen}
        title={'Name Animation to Share'} 
        inputLabel={'Name'} 
        initValue={props.config.name}
        commitButtonLabel={'Share'} 
        doValidation={(latestValue: string): DoValidationResponse => {
          return {
            isValidValue: latestValue.length > 0,
            validationMessage: latestValue.length > 0 ? undefined : "Animation must have a name"
          } as DoValidationResponse;
        }}
        onHandleCommit={(name: string): void => {
          doShareAnimation(name);
          // setNewQromaStripName(name);
          onCloseShareDialog();
        }}
        onHandleClose={onCloseRenameDialog}
        key={"rename-qroma-strip-" + props.config.name}
        />


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

          saveConfig={props.saveConfig}
          renameQromaStrip={() => setIsRenameDialogOpen(true) }
          shareAnimation={startShareAnimation}
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

          saveConfig={props.saveConfig}
          renameQromaStrip={() => setIsRenameDialogOpen(true) }
          shareAnimation={startShareAnimation}
          />
      </TabPanel>
      <TabPanel value={props.tabIndex} index={2}>
        <ConfigureWx2812FxPanel 
          maxBrightness={maxBrightness}
          ledCount={ledCount}
          pinIoNumber={pinIoNumber}
          ledSignalColorOrder={ledSignalColorOrder}
          ledDataRate={ledDataRate}
          
          onNewMaxBrightness={onNewMaxBrightness}
          onNewLedCount={onNewLedCount}
          onNewPinIoNumber={onNewPinIoNumber}
          onNewTxDataRate={onNewTxDataRate}
          onNewLedSignalColorOrder={onNewLedSignalColorOrder}

          saveConfig={props.saveConfig}
          renameQromaStrip={() => setIsRenameDialogOpen(true) }
          />
      </TabPanel>
    </>
  )
}
