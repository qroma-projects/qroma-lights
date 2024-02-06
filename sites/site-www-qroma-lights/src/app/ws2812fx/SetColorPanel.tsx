import React from 'react';
import { ColorBox } from 'material-ui-color';
import { QCheckbox } from '../../react-qroma-mui/input-controls/QCheckbox';
import { QButton } from '../../react-qroma-mui/input-controls/QButton';
import { Stack } from '@mui/material';
import EditIcon from '@mui/icons-material/Edit';
import { QTheme } from '../../react-qroma-mui/input-controls/theme';


type SetColorPanelProps = {
  activeColorHex: string
  gammaCorrectionEnabled: boolean
  // numActiveSegments: number
  // editingSegmentIndex: number

  onColorChange: (newColorHex: string) => void
  onGammaCorrectionEnabledChange: (enabled: boolean) => void
  // saveFlashConfiguration: () => void
  // onEditingSegmentIndexChange: (newEditingSegmentIndex: number) => void
  
  // saveFlashCommand: () => void
  saveConfig: () => void
  renameQromaStrip: () => void
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

      {/* <QButton 
        fullWidth 
        variant='outlined'      
        sx={{
          marginTop: "16px",
        }}
        // onClick={() => props.saveFlashConfiguration()}
        >
        Rename
      </QButton> */}

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
{/* 
      <QButton
        variant="contained"
        // onClick={onRenameDevice}
        sx={{
          color: "white",
          backgroundColor: QTheme.Q3,
          fontFamily: "Exo",
          fontWeight: "bold",
          marginTop: "10px",
          textTransform: "none",
        }}
        >
        <EditIcon />Rename
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
      </QButton> */}


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
