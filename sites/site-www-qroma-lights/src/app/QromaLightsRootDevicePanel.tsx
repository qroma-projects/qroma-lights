import React, { useState } from 'react';
import { IQromaLightsApi } from './api/QromaLightsApi';
import { QButton } from './input-controls/QButton';
import { QTheme } from './input-controls/theme';
import EditIcon from '@mui/icons-material/Edit';
import { DoValidationResponse, QInputAValueDialog } from './input-controls/QInputAValueDialog';
import { QromaLightsDeviceConfig, QromaStrip_WS2812FX_StripIndex } from '../qroma-proto/qroma-lights-types';


export interface IQromaLightsRootDevicePanelProps {
  qromaLightsApi: IQromaLightsApi
  qldConfig: QromaLightsDeviceConfig
  refreshConfig: (delayInMs: number) => void
  setActiveQromaStripPathIndex: (activeQromaStripPathIndex: QromaStrip_WS2812FX_StripIndex) => void
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

      <p>
      {props.qldConfig?.deviceName}
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

      <QButton
        variant="contained"
        onClick={onRenameDevice}
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
    </>
  )
}
