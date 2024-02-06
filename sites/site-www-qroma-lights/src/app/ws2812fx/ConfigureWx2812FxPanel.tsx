import React, { useState } from 'react';
import { Container, Stack } from '@mui/material';
// import { QromaStrip_WS2812FX_NeoPixelRgbOrder, QromaStrip_WS2812FX_NeoPixelTxRate } from '../../../proto-ts/driver-ws2812fx';
// import { useLocalStorage } from '@rehooks/local-storage';
// import { createNumberRange } from '../../../utils';
import { QButton } from '../input-controls/QButton';
import QNumberRange from '../input-controls/QNumberRange';
import QNumberSelect from '../input-controls/QNumberSelect';
import QSelect from '../input-controls/QSelect';
import { RGB_ORDER_LABELS, RGB_ORDER_VALUES, TX_RATE_LABELS, TX_RATE_VALUES } from './EnumValues';
import { QSelectAValueDialog } from '../input-controls/QSelectAValueDialog';
// import { Ws2812FxQromaPointConfiguration, QromaPointWs2812FxConfigurationsStorageKey } from '../../../qroma-persist/local-storage/qroma-point-configurations';
// import { QromaStrip_WS2812FX_NeoPixelRgbOrder, QromaStrip_WS2812FX_NeoPixelTxRate } from '../../qroma-proto/qroma-lights-types';
import { createNumberRange } from '../app_utils';
import { QromaStrip_WS2812FX_NeoPixelRgbOrder, QromaStrip_WS2812FX_NeoPixelTxRate } from '../../qroma-proto/qroma-lights-types';

export type ConfigureWx2812FxPanelProps = {
  maxBrightness: number
  ledCount: number
  // segmentCount: number
  // maxSegmentCount: number
  pinIoNumber: number
  ledSignalColorOrder: QromaStrip_WS2812FX_NeoPixelRgbOrder
  ledDataRate: QromaStrip_WS2812FX_NeoPixelTxRate

  onNewMaxBrightness: (brightness: number) => void
  // onNewSegmentCount: (segmentCount: number) => void
  onNewLedCount: (segmentCount: number) => void
  onNewPinIoNumber: (segmentCount: number) => void
  onNewLedSignalColorOrder: (ledSignalColorOrder: QromaStrip_WS2812FX_NeoPixelRgbOrder) => void
  onNewTxDataRate: (ledDataRate: QromaStrip_WS2812FX_NeoPixelTxRate) => void

  // onNewConfiguration: (
  //   maxBrightness: number,
  //   ledCount: number,
  //   numberOfSegments: number,
  //   maxSegmentCount: number,
  //   pinIoNumber: number,
  //   ledSignalColorOrder: QromaStrip_WS2812FX_NeoPixelRgbOrder,
  //   ledDataRate: QromaStrip_WS2812FX_NeoPixelTxRate,  
  // ) => void
  
  saveQromaPointConfiguration: () => void
}


const ConfigureWx2812FxPanel = (props: ConfigureWx2812FxPanelProps) => {

  const brightnessLevelOptions = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 150, 200, 225, 255];
  // const numberOfSegments = createNumberRange(1, props.maxSegmentCount);
  const pinIoNumbers = [14, 15];
  const pinIoNumberLabels = pinIoNumbers.map(n => n.toString());

  const [showApplySavedConfigurationDialog, setShowApplySavedConfigurationDialog] = useState(false);

  // const [allConfigs] = useLocalStorage<Ws2812FxQromaPointConfiguration[]>(QromaPointWs2812FxConfigurationsStorageKey, []);
  // const allConfigTitles = allConfigs.map(c => c.configurationName);
  // const allConfigValues = allConfigs;

  const applySavedConfiguration = async (configIndex: number) => {
    const configName = allConfigTitles[configIndex];
    const config = allConfigValues[configIndex];
    
    console.log("APPLYING CONFIG: " + configName);
    
    props.onNewConfiguration(
      config.maxBrightness,
      config.ledCount,
      config.numberOfSegments,
      config.maxSegmentCount,
      config.pinIoNumber,
      config.ledSignalColorOrder,
      config.ledDataRate,
      );
    setShowApplySavedConfigurationDialog(false);
  }

  return (
    <>
      {/* <QSelectAValueDialog 
        isOpen={showApplySavedConfigurationDialog}
        title='Apply Configuration'
        description='description'
        values={allConfigTitles}
        valueLabels={allConfigTitles}
        cancelButtonLabel='Cancel'
        commitButtonLabel='Apply'
        onHandleClose={() => setShowApplySavedConfigurationDialog(false)}
        onHandleCommit={(valueIndex: number) => applySavedConfiguration(valueIndex)}
        /> */}

      <QNumberSelect 
        id="max-brightness"
        label='Max Brightness'
        value={props.maxBrightness}
        values={brightnessLevelOptions}
        valueLabelOffset={0}
        onSetValue={props.onNewMaxBrightness}
        />

      {/* <QNumberSelect
        id="num-segments"
        label='Number of Segments'
        value={props.segmentCount}
        values={numberOfSegments}
        valueLabelOffset={0}
        onSetValue={props.onNewSegmentCount}
        /> */}

      <QNumberRange
        label='LED Count'
        value={props.ledCount}
        rangeMin={1}
        rangeMax={200}
        onNewValue={props.onNewLedCount}
        />
      
      <QSelect
        id="pin-io-number"
        label='Pin IO Number'
        value={props.pinIoNumber}
        values={pinIoNumbers}
        valueLabels={pinIoNumberLabels}
        onSetValue={props.onNewPinIoNumber}
        />

      <QSelect id="led-signal-color-order" 
        label='LED Signal Color Order'
        value={props.ledSignalColorOrder}
        values={RGB_ORDER_VALUES as QromaStrip_WS2812FX_NeoPixelRgbOrder[]}
        valueLabels={RGB_ORDER_LABELS}
        onSetValue={props.onNewLedSignalColorOrder}
        />

      <QSelect id="led-data-rate" 
        label='LED Data Rate'
        value={props.ledDataRate}
        values={TX_RATE_VALUES as QromaStrip_WS2812FX_NeoPixelTxRate[]}
        valueLabels={TX_RATE_LABELS}
        onSetValue={props.onNewTxDataRate}
        />

      <Stack 
        direction="row"
        sx={{paddingLeft: "24px", paddingRight: "24px"}}
        >
        <QButton 
          onClick={() => props.saveQromaPointConfiguration()}
          sx={{marginTop: "15px", marginRight: "6px"}}
          >
            Save Configuration
        </QButton>
        <QButton 
          onClick={() => setShowApplySavedConfigurationDialog(true)}
          sx={{marginTop: "15px", marginLeft: "6px"}}
          >
            Apply Configuration
        </QButton>
      </Stack>

    </>
  )

}

export default ConfigureWx2812FxPanel;