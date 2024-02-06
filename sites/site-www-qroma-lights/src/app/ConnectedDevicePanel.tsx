import React, { useEffect, useState } from 'react';
import { IQromaLightsApi } from './api/QromaLightsApi';
import { QromaStripPanel } from './ws2812fx/QromaStripPanel';
import { QromaLightsRootDevicePanel } from './ws2812fx/QromaLightsRootDevicePanel';
import { sleep } from '../react-qroma-lib';
import { QromaLightsDeviceConfig, QromaStrip_WS2812FX_StripIndex } from '../qroma-proto/qroma-lights-types';


export interface IConnectedDevicePanelProps {
  qromaLightsApi: IQromaLightsApi
}


export const ConnectedDevicePanel = (props: IConnectedDevicePanelProps) => {

  const [qldConfig, setQldConfig] = useState(undefined as QromaLightsDeviceConfig | undefined);
  const [activeQromaStripPathIndex, setActiveQromaStripPathIndex] = useState(QromaStrip_WS2812FX_StripIndex.QSSI_NOT_SET);
  const [configChanged, setConfigChanged] = useState(false);


  const refreshConfig = async (delayInMs: number) => {
    if (delayInMs > 0) {
      await sleep(delayInMs);
    }

    const config = await props.qromaLightsApi.getQromaLightsDeviceConfig();
    if (config) {
      setQldConfig(config);
    }
  };

  useEffect(() => {
    refreshConfig(0);
  }, []);

  if (!qldConfig) {
    return (
      <>
        Connecting to Qroma Lights
      </>
    )
  }

  const saveConfig = () => {
    props.qromaLightsApi.saveCurrentState();
    setConfigChanged(false);
  }
  
  return (
    <>
      {activeQromaStripPathIndex === QromaStrip_WS2812FX_StripIndex.QSSI_NOT_SET ?
        <QromaLightsRootDevicePanel 
          qromaLightsApi={props.qromaLightsApi}
          qldConfig={qldConfig}
          refreshConfig={refreshConfig}
          setActiveQromaStripPathIndex={setActiveQromaStripPathIndex}
          isConfigChanged={configChanged}
          notifyConfigChanged={() => { setConfigChanged(true); }}
          saveConfig={saveConfig}
          />
        :
        <QromaStripPanel
          qromaLightsApi={props.qromaLightsApi}
          qldConfig={qldConfig}
          assignedStripIndex={activeQromaStripPathIndex}
          refreshConfig={refreshConfig}
          setActiveQromaStripPathIndex={setActiveQromaStripPathIndex}
          isConfigChanged={configChanged}
          notifyConfigChanged={() => { setConfigChanged(true); }}
          saveConfig={saveConfig}
          />
      }
    </>
  )
}
