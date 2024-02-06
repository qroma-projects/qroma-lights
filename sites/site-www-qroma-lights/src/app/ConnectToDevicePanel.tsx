import React from 'react';
import { QButton } from '../react-qroma-mui/input-controls/QButton';
import { IQromaLightsApi } from './api/QromaLightsApi';


export interface IConnectToDevicePanelProps {
  qromaLightsApi: IQromaLightsApi  
}


export const ConnectToDevicePanel = (props: IConnectToDevicePanelProps) => {
  
  const doQromaConnect = async () => {
    props.qromaLightsApi.init();
  };


  return (
    <>
      <QButton
        sx={{ marginTop: "10px" }}
        onClick={() => doQromaConnect()}>
          Connect
      </QButton>
    </>
  )
}
