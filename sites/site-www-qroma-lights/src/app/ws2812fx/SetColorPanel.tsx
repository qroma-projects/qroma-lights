import React from 'react';
import { ColorBox } from 'material-ui-color';
import { QCheckbox } from '../../react-qroma-mui/input-controls/QCheckbox';
import { QButton } from '../../react-qroma-mui/input-controls/QButton';
import { Stack } from '@mui/material';
import EditIcon from '@mui/icons-material/Edit';
import ShareIcon from '@mui/icons-material/Share';
import { QTheme } from '../../react-qroma-mui/input-controls/theme';


type SetColorPanelProps = {
  activeColorHex: string
  gammaCorrectionEnabled: boolean

  onColorChange: (newColorHex: string) => void
  onGammaCorrectionEnabledChange: (enabled: boolean) => void
  
  saveConfig: () => void
  renameQromaStrip: () => void
  shareAnimation: () => void
}


export const SetColorPanel = (props: SetColorPanelProps) => {

  return (
    <>
      <ColorBox 
        defaultValue={props.activeColorHex}
        value={props.activeColorHex}
        disableAlpha
        key={"color-panel"}
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
        <QButton
          sx={{
            marginTop: "10px",
            marginLeft: "10px",
          }}
          onClick={() => { props.shareAnimation(); }}
          >
          Share <ShareIcon />
        </QButton>
      </Stack>
    </>
  )
}
