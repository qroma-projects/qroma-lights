import React, { useState } from 'react';
import { IQromaLightsApi } from '../api/QromaLightsApi';
import { QButton } from '../../react-qroma-mui/input-controls/QButton';
import { QTheme } from '../../react-qroma-mui/input-controls/theme';
import EditIcon from '@mui/icons-material/Edit';
import { DoValidationResponse, QInputAValueDialog } from '../../react-qroma-mui/input-controls/QInputAValueDialog';
import { QromaLightsDeviceConfig, QromaStrip_WS2812FX_StripIndex } from '../../qroma-proto/qroma-lights-types';
import { Stack } from '@mui/material';


export interface IQromaLightsRootDevicePanelProps {
  qromaLightsApi: IQromaLightsApi
  qldConfig: QromaLightsDeviceConfig
  refreshConfig: (delayInMs: number) => void
  setActiveQromaStripPathIndex: (activeQromaStripPathIndex: QromaStrip_WS2812FX_StripIndex) => void
  
  isConfigChanged: boolean
  notifyConfigChanged: () => void
  saveConfig: () => void
}

export const QromaLightsRootDevicePanel = (props: IQromaLightsRootDevicePanelProps) => {

  const [isRenameDialogOpen, setIsRenameDialogOpen] = useState(false);

  const onRenameDevice = () => {
    console.log("RENAME DEVICE");
    setIsRenameDialogOpen(true);
  }

  const onCloseRenameDialog = () => {
    setIsRenameDialogOpen(false);
  }

  const setNewDeviceName = async (newValue: string) => {
    props.notifyConfigChanged();
    props.qromaLightsApi.setDeviceName(newValue);
    props.refreshConfig(250);
  }


  return (
    <>
      <QInputAValueDialog 
        isOpen={isRenameDialogOpen}
        title={'Rename Device [' + props.qldConfig.deviceName + ']'} 
        inputLabel={'Name'} 
        initValue={props.qldConfig.deviceName}
        commitButtonLabel={'Save'} 
        doValidation={(latestValue: string): DoValidationResponse => {
          return {
            isValidValue: latestValue.length > 0,
            validationMessage: latestValue.length > 0 ? undefined : "Device must have a name"
          } as DoValidationResponse;
        }}
        onHandleCommit={(commandName: string): void => {
          setNewDeviceName(commandName);
          onCloseRenameDialog();
        }}
        onHandleClose={onCloseRenameDialog}
        key={"rename-device-" + props.qldConfig.deviceName}
        />

      <p style={{
          fontFamily: "Exo",
          fontWeight: "bold",
          fontSize: "24px",
        }}>
      {props.qldConfig?.deviceName} {props.isConfigChanged ? " *" : ""}
      </p>

      <QButton
        sx={{ marginTop: "10px" }}
        onClick={() => { props.setActiveQromaStripPathIndex(QromaStrip_WS2812FX_StripIndex.QSSI_STRIP_01); }}
        >
        {props.qldConfig.qromaStrip1Config.name}
      </QButton>

      <QButton
        sx={{ marginTop: "10px" }}
        onClick={() => { props.setActiveQromaStripPathIndex(QromaStrip_WS2812FX_StripIndex.QSSI_STRIP_02); }}
        >
        {props.qldConfig.qromaStrip2Config.name}
      </QButton>

      <Stack 
        direction="row"
        sx={{paddingLeft: "30px", paddingRight: "30px"}}
        >
        <QButton
          variant="contained"
          onClick={onRenameDevice}
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
          onClick={() => { props.qromaLightsApi.restartDevice(); }}
          >
          Restart
        </QButton>
      </Stack>

      <QButton
          sx={{ 
            marginTop: "10px",            
          }}
          onClick={() => { props.saveConfig(); }}
          >
          Save
        </QButton>
    </>
  )
}
