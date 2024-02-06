import React, { useState } from 'react';
import { Stack } from '@mui/material';
import { QButton } from '../../react-qroma-mui/input-controls/QButton';
import { QNumberRange } from '../../react-qroma-mui/input-controls/QNumberRange';
import { QNumberSelect } from '../../react-qroma-mui/input-controls/QNumberSelect';
import { QSelect } from '../../react-qroma-mui/input-controls/QSelect';
import { RGB_ORDER_LABELS, RGB_ORDER_VALUES, TX_RATE_LABELS, TX_RATE_VALUES } from './EnumValues';
import { QromaStrip_WS2812FX_NeoPixelRgbOrder, QromaStrip_WS2812FX_NeoPixelTxRate } from '../../qroma-proto/qroma-lights-types';
import EditIcon from '@mui/icons-material/Edit';
import { QTheme } from '../../react-qroma-mui/input-controls/theme';


export type ConfigureWx2812FxPanelProps = {
  maxBrightness: number
  ledCount: number
  pinIoNumber: number
  ledSignalColorOrder: QromaStrip_WS2812FX_NeoPixelRgbOrder
  ledDataRate: QromaStrip_WS2812FX_NeoPixelTxRate

  onNewMaxBrightness: (brightness: number) => void

  onNewLedCount: (segmentCount: number) => void
  onNewPinIoNumber: (segmentCount: number) => void
  onNewLedSignalColorOrder: (ledSignalColorOrder: QromaStrip_WS2812FX_NeoPixelRgbOrder) => void
  onNewTxDataRate: (ledDataRate: QromaStrip_WS2812FX_NeoPixelTxRate) => void
  
  // saveQromaPointConfiguration: () => void
  saveConfig: () => void
  renameQromaStrip: () => void
}


export const ConfigureWx2812FxPanel = (props: ConfigureWx2812FxPanelProps) => {

  const brightnessLevelOptions = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 150, 200, 225, 255];
  const pinIoNumbers = [14, 15];
  const pinIoNumberLabels = pinIoNumbers.map(n => n.toString());

  const [showApplySavedConfigurationDialog, setShowApplySavedConfigurationDialog] = useState(false);

  // const applySavedConfiguration = async (configIndex: number) => {
  //   const configName = allConfigTitles[configIndex];
  //   const config = allConfigValues[configIndex];
    
  //   console.log("APPLYING CONFIG: " + configName);
    
  //   props.onNewConfiguration(
  //     config.maxBrightness,
  //     config.ledCount,
  //     config.numberOfSegments,
  //     config.maxSegmentCount,
  //     config.pinIoNumber,
  //     config.ledSignalColorOrder,
  //     config.ledDataRate,
  //     );
  //   setShowApplySavedConfigurationDialog(false);
  // }

  return (
    <>
      <QNumberSelect 
        id="max-brightness"
        label='Max Brightness'
        value={props.maxBrightness}
        values={brightnessLevelOptions}
        valueLabelOffset={0}
        onSetValue={props.onNewMaxBrightness}
        />

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
          variant="contained"
          onClick={props.renameQromaStrip}
          sx={{
            color: "white",
            backgroundColor: QTheme.Q3,
            fontFamily: "Exo",
            fontWeight: "bold",
            marginTop: "10px",
          }}
          >
          <EditIcon />Rename
        </QButton>
        <QButton
          sx={{
            marginTop: "10px",
            marginLeft: "10px",
          }}
          onClick={() => { props.saveConfig(); }}
          >
          Save
        </QButton>
      </Stack>

      {/* <Stack 
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
        <QButton 
          fullWidth 
          variant='outlined'      
          sx={{
            marginTop: "16px",
          }}
          // onClick={() => props.saveFlashConfiguration()}
          >
          Save
        </QButton>
      </Stack> */}
    </>
  )
}
