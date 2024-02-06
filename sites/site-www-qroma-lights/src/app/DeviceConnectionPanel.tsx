import React from 'react';
import { ConnectToDevicePanel } from './ConnectToDevicePanel';
import { ConnectedDevicePanel } from './ConnectedDevicePanel';
import { useQromaLightsApi } from './api/QromaLightsApi';


export const DeviceConnectionPanel = () => {

  const qromaLightsApi = useQromaLightsApi();

  if (qromaLightsApi.connectionState.isWebSerialConnected) {
    return (
      <ConnectedDevicePanel
        qromaLightsApi={qromaLightsApi}
        />
    )
  } else {
    return (
      <ConnectToDevicePanel
        qromaLightsApi={qromaLightsApi}
        />
    )
  }
}
