import React, { useEffect, useState } from 'react';
// import { QromaPointDetails } from '../../../proto-ts/qroma-point-config';
import { Button } from '@mui/material';
// import { readQromaPointConfig, readQromaPointConfigT } from '../../../qroma-api/qroma-device/qroma-device';
// import { QromaStrip_WS2812FX_LedsConfig, WS2812FX_Config } from '../../../proto-ts/driver-ws2812fx';
import QpWs2812FxPanel_Loading from './QpWs2812FxPanel_Loading';
import QpWs2812FxPanel_Loaded from './QpWs2812FxPanel_Loaded';
import { QButton } from '../input-controls/QButton';


type QpWs2812FxPanelProps = {
  children: React.ReactNode
  qromaPoint: QromaPointDetails
}


const QpWs2812FxPanel = (props: QpWs2812FxPanelProps) => {

  const [ws2812fxConfig, setWs2812fxConfig] = useState(null as WS2812FX_Config | null);
  const [configLoadingStatus, setConfigLoadingStatus] = useState("");
  const [tabIndex, setTabIndex] = useState(0);

  const RefreshConfigPanel = () => {
    return (<>
      <QButton 
        fullWidth
        // sx={{marginTop: '16px'}}
        // variant='outlined' 
        sx={{marginTop: "16px"}}
        onClick={() => {getConfig()}}>Refresh Config</QButton>
    </>)
  }
  
  useEffect(() => {
    const loadConfig = async () => {
      if (ws2812fxConfig !== null) {
        return;
      }

      setConfigLoadingStatus("LOADING CONFIG");
      const qpConfigBytes = await readQromaPointConfig(props.qromaPoint.instanceId);
      if (qpConfigBytes === null) {
        console.log("FAILED TO LOAD QP CONFIG");
        return;
      }

      const qpConfig = WS2812FX_Config.fromBinary(qpConfigBytes);
      console.log(qpConfig);

      setWs2812fxConfig(qpConfig);
      setConfigLoadingStatus("");
    }

    loadConfig()
      .catch((e) => {
        setConfigLoadingStatus("LOADING CONFIG - ERROR");
        console.log("LOAD CONFIG ERROR");
        console.error(e);
      });
  }, []);


  const getConfig = async () => {
    setWs2812fxConfig(null);
    console.log("IN LOAD CONFIG");

    try {
      const qpConfig = await readQromaPointConfigT<WS2812FX_Config>(props.qromaPoint.instanceId, WS2812FX_Config);
      if (qpConfig === null) {
        console.log("FAILED TO LOAD QP CONFIG");
        return;
      }

      const ws2812FxConfig = qpConfig;
      console.log(ws2812FxConfig);
      setWs2812fxConfig(ws2812FxConfig);

    } catch (e) {
      console.log("ERROR LOADING WS2812FX CONFIG");
      console.log(e);
    }
  }

  const onRefreshConfig = () => {
    getConfig();
  }


  // const loadFakeConfig = () => {
  //   console.log("LOADING FAKE CONFIG");
  //   const fakeConfig = WS2812FX_Config.create();
  //   fakeConfig.leds = QromaStrip_WS2812FX_LedsConfig.create();
  //   setWs2812fxConfig(fakeConfig);
  //   console.log(fakeConfig);
  // }

  const onSetTabIndex = (newTabIndex: number) => {
    setTabIndex(newTabIndex);
  }



  if (ws2812fxConfig === null) {
    return (
      <>
        <QpWs2812FxPanel_Loading 
          qromaPoint={props.qromaPoint} 
          // loadFakeConfig={loadFakeConfig}
          configLoadingStatus={configLoadingStatus}
          />
        <RefreshConfigPanel />
      </>
    )
  } else {
    return (
      <>
        <QpWs2812FxPanel_Loaded 
          qromaPoint={props.qromaPoint}
          config={ws2812fxConfig}
          tabIndex={tabIndex}
          onSetTabIndex={onSetTabIndex}
          onRefreshConfig={onRefreshConfig}
          />
        <RefreshConfigPanel />
      </>
    )
  }
}

export default QpWs2812FxPanel;