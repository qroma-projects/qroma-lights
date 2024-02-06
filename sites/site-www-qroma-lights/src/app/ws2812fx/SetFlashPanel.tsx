import React from 'react';
import QSelect from '../input-controls/QSelect';
import QCheckbox from '../input-controls/QCheckbox';
import QColorPicker from '../input-controls/QColorPicker';
import { PATTERN_VALUES, PATTERN_LABELS, FADE_SPEED_LABELS, FADE_SPEED_VALUES, PIXEL_SIZE_LABELS, PIXEL_SIZE_VALUES } from './EnumValues';
import QNumberRange from '../input-controls/QNumberRange';
import { Divider } from '@mui/material';
import QNumberSelect from '../input-controls/QNumberSelect';
import { QButton } from '../input-controls/QButton';
import { QromaStrip_WS2812FX_FadeSpeed, QromaStrip_WS2812FX_Pattern, QromaStrip_WS2812FX_PixelsSize } from '../../qroma-proto/qroma-lights-types';
import { createNumberRange } from '../app_utils';

type SetFlashPanelProps = {
  color1Hex: string
  onColor1Change: (newColorHex: string) => void
  color2Hex: string
  onColor2Change: (newColorHex: string) => void
  color3Hex: string
  onColor3Change: (newColorHex: string) => void

  gammaCorrectionEnabled: boolean
  onGammaCorrectionEnabledChange: (enabled: boolean) => void

  reverseDirection: boolean
  onReverseDirectionChange: (reverseDirection: boolean) => void

  pattern: QromaStrip_WS2812FX_Pattern
  onPatternChange: (newValue: QromaStrip_WS2812FX_Pattern) => void

  pixelSpeed: number
  onPixelSpeedChange: (newValue: number) => void

  fadeSpeed: QromaStrip_WS2812FX_FadeSpeed
  onFadeSpeedChange: (newValue: QromaStrip_WS2812FX_FadeSpeed) => void

  pixelsSize: QromaStrip_WS2812FX_PixelsSize
  onPixelsSizeChange: (newValue: QromaStrip_WS2812FX_PixelsSize) => void

  saveFlashConfiguration: () => void
  // saveFlashCommand: () => void

  // numActiveSegments: number
  // editingSegmentIndex: number
  // onEditingSegmentIndexChange: (newEditingSegmentIndex: number) => void
}

const SetFlashPanel = (props: SetFlashPanelProps) => {

  // const getEditingSegmentIndexComponent = () => {
  //   if (props.numActiveSegments === 1) {
  //     return undefined;
  //   }

  //   const segmentIndexes = createNumberRange(0, props.numActiveSegments);

  //   return <QNumberSelect 
  //     label='Segment' 
  //     id={'active-segment'} 
  //     value={props.editingSegmentIndex} 
  //     values={segmentIndexes}
  //     valueLabelOffset={1}
  //     onSetValue={(newValue: number): void => {
  //       props.onEditingSegmentIndexChange(newValue);
  //     }} 
  //     />
  // }

  return (
    <>
      {/* {getEditingSegmentIndexComponent()} */}
      <QSelect id="pattern"
        label='Pattern'
        value={props.pattern}
        values={PATTERN_VALUES as QromaStrip_WS2812FX_Pattern[]}
        valueLabels={PATTERN_LABELS}
        onSetValue={props.onPatternChange}
        />

      <Divider light
        sx={{
          marginTop: "8px",
          marginBottom: "8px",
        }}
        />

      <QColorPicker 
        label='Color 1'
        valueColorHex={props.color1Hex}
        onColorChange={props.onColor1Change}
        />

      <QColorPicker 
        label='Color 2'
        valueColorHex={props.color2Hex}
        onColorChange={props.onColor2Change}
        />

      <QColorPicker 
        label='Color 3'
        valueColorHex={props.color3Hex}
        onColorChange={props.onColor3Change}
        />

      <Divider light 
        sx={{
          marginTop: "8px",
          marginBottom: "8px",
        }}
        />

      <QNumberRange 
        label={"Pixel Speed"}
        value={props.pixelSpeed} 
        onNewValue={props.onPixelSpeedChange} 
        rangeMin={2}
        rangeMax={65535}
        />
        

      <Divider light 
        sx={{
          marginTop: "8px",
          marginBottom: "8px",
        }}
        />

      <QSelect id="fade-speed" 
        label='Fade Speed'
        value={props.fadeSpeed}
        values={FADE_SPEED_VALUES as QromaStrip_WS2812FX_FadeSpeed[]}
        valueLabels={FADE_SPEED_LABELS}
        onSetValue={props.onFadeSpeedChange}
        />

      <QSelect id="pixel-size" 
        label='Pixel Size'
        value={props.pixelsSize}
        values={PIXEL_SIZE_VALUES as QromaStrip_WS2812FX_PixelsSize[]}
        valueLabels={PIXEL_SIZE_LABELS}
        onSetValue={props.onPixelsSizeChange}
        />

      <QCheckbox 
        onChecked={props.onReverseDirectionChange}
        label="Reverse Direction" 
        checked={props.reverseDirection}
        />

      <QCheckbox 
        onChecked={props.onGammaCorrectionEnabledChange}
        label="Use Gamma Correction" 
        checked={props.gammaCorrectionEnabled}
        />

      <QButton 
        fullWidth 
        variant='outlined'
        sx={{
          marginTop: "16px",
        }}
        onClick={() => props.saveFlashConfiguration()}
        >
        Do on Startup
      </QButton>

      {/* <QButton 
        sx={{
          marginTop: "16px", 
        }}
        onClick={() => props.saveFlashCommand()}
        >
        Save as Command
      </QButton> */}
    </>
  )

}

export default SetFlashPanel;