import React from 'react';
import { ColorBox } from 'material-ui-color';
import QCheckbox from '../input-controls/QCheckbox';
import QNumberSelect from '../input-controls/QNumberSelect';
import { QButton } from '../input-controls/QButton';
import { createNumberRange } from '../app_utils';


type SetColorPanelProps = {
  activeColorHex: string
  gammaCorrectionEnabled: boolean
  // numActiveSegments: number
  // editingSegmentIndex: number

  onColorChange: (newColorHex: string) => void
  onGammaCorrectionEnabledChange: (enabled: boolean) => void
  // saveFlashConfiguration: () => void
  // onEditingSegmentIndexChange: (newEditingSegmentIndex: number) => void
  
  saveFlashCommand: () => void
}


const SetColorPanel = (props: SetColorPanelProps) => {

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
      <ColorBox 
        defaultValue={props.activeColorHex}
        value={props.activeColorHex}
        disableAlpha
        key={"color-" + props.editingSegmentIndex}
        onChange={(newColor) => {
          console.log("NEW COLOR");
          console.log(newColor);
          props.onColorChange("#" + newColor.hex);
        }}
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
        fullWidth 
        variant='outlined'      
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

export default SetColorPanel;
