import React from 'react';
import { ConnectToDevicePanel } from './ConnectToDevicePanel';
import { IQromaLightsApi, useQromaLightsApi } from './api/QromaLightsApi';


export interface IDeviceConnectionPanelProps {
  children?: React.ReactNode
  qromaLightsApi: IQromaLightsApi
}


export const DeviceConnectionPanel = (props: IDeviceConnectionPanelProps): JSX.Element => {

  if (props.qromaLightsApi.connectionState.isWebSerialConnected) {
    return <>{
      props.children
    }</>

  } else {
    return (
      <ConnectToDevicePanel
        qromaLightsApi={props.qromaLightsApi}
        />
    )
  }
}
