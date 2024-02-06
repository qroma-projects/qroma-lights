import React, { useState } from 'react';
import { IQromaLightsApi } from '../api/QromaLightsApi';
import { ConnectedDeviceBreadcrumbs } from '../ConnectedDeviceBreadcrumbs';
import { QpWs2812FxPanel_Loaded } from './QpWs2812FxPanel_Loaded';
import { QromaLightsDeviceConfig, QromaStrip_WS2812FX_StripIndex } from '../../qroma-proto/qroma-lights-types';


export interface IQromaStripPanelProps {
  qromaLightsApi: IQromaLightsApi
  qldConfig: QromaLightsDeviceConfig
  assignedStripIndex: QromaStrip_WS2812FX_StripIndex
  refreshConfig: (delayInMs: number) => void
  setActiveQromaStripPathIndex: (activeQromaStripPathIndex: QromaStrip_WS2812FX_StripIndex) => void

  isConfigChanged: boolean
  notifyConfigChanged: () => void
  saveConfig: () => void
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
        qromaStripConfig={qromaStripConfig}
        setActiveQromaStripPathIndex={props.setActiveQromaStripPathIndex}
        isConfigChanged={props.isConfigChanged}
        />
      
      <QpWs2812FxPanel_Loaded 
        qromaLightsApi={props.qromaLightsApi}
        stripIndex={props.assignedStripIndex}
        config={qromaStripConfig}
        tabIndex={tabIndex}
        onSetTabIndex={setTabIndex}

        isConfigChanged={props.isConfigChanged}
        notifyConfigChanged={props.notifyConfigChanged}
        refreshConfig={props.refreshConfig}
        saveConfig={props.saveConfig}
        />
    </>
  )
}
