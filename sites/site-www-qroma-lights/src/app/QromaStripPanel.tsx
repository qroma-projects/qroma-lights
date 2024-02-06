import React, { useState } from 'react';
import { IQromaLightsApi } from './api/QromaLightsApi';
import { ConnectedDeviceBreadcrumbs } from './ConnectedDeviceBreadcrumbs';
import { QpWs2812FxPanel_Loaded } from './ws2812fx/QpWs2812FxPanel_Loaded';
import { QromaLightsDeviceConfig, QromaStrip_WS2812FX_StripIndex } from '../qroma-proto/qroma-lights-types';


export interface IQromaStripPanelProps {
  qromaLightsApi: IQromaLightsApi
  qldConfig: QromaLightsDeviceConfig
  assignedStripIndex: QromaStrip_WS2812FX_StripIndex
  refreshConfig: (delayInMs: number) => void
  setActiveQromaStripPathIndex: (activeQromaStripPathIndex: QromaStrip_WS2812FX_StripIndex) => void
}

export const QromaStripPanel = (props: IQromaStripPanelProps) => {
  
  const getQromaStripConfig = () => {
    const qromaStripConfig = props.assignedStripIndex === QromaStrip_WS2812FX_StripIndex.QSSI_STRIP_01 ? 
      props.qldConfig.qromaStrip1Config :
      props.qldConfig.qromaStrip2Config;
    return qromaStripConfig;
  }

  const qromaStripConfig = getQromaStripConfig();
  const [tabIndex, setTabIndex] = useState(0);

  return (
    <>
      <ConnectedDeviceBreadcrumbs
        qromaLightsApi={props.qromaLightsApi}
        qromaLightsDeviceConfig={props.qldConfig}
        // activeQromaStripPathIndex={props.assignedStripIndex}
        qromaStripConfig={qromaStripConfig}
        setActiveQromaStripPathIndex={props.setActiveQromaStripPathIndex}
        />
      {/* Qroma Strip Panel */}
      
      <QpWs2812FxPanel_Loaded 
        // qromaPoint={props.qromaPoint}
        qromaLightsApi={props.qromaLightsApi}
        stripIndex={props.assignedStripIndex}
        config={qromaStripConfig}
        tabIndex={tabIndex}
        onSetTabIndex={setTabIndex}
        // refreshConfig={props.refreshConfig}
        />
      {/* <RefreshConfigPanel /> */}
    </>
  )
}
