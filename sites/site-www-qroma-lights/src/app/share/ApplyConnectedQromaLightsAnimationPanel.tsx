import React, { useEffect, useState } from 'react';
import { IQromaLightsApi } from '../api/QromaLightsApi';
import { QromaLightsDeviceConfig, QromaStrip_WS2812FX_StripIndex, ShareableAnimation } from '../../qroma-proto/qroma-lights-types';
import { sleep } from '../../react-qroma-lib';
import { convertBase64ToBinary } from '../../react-qroma-lib/qroma-lib/utils';
import { useLocation } from '@docusaurus/router';
import { QButton } from '../../react-qroma-mui/input-controls/QButton';


export interface IApplyConnectedQromaLightsAnimationPanelProps {
  qromaLightsApi: IQromaLightsApi
}


export const ApplyConnectedQromaLightsAnimationPanel = (props: IApplyConnectedQromaLightsAnimationPanelProps) => {

  const [qldConfig, setQldConfig] = useState(undefined as QromaLightsDeviceConfig | undefined);

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
    const unsubscribeFn = props.qromaLightsApi
      .subscribeToConfig((latestConfig) => {
        setQldConfig(latestConfig);
      });

    refreshConfig(0);

    return unsubscribeFn;
  }, []);



  const location = useLocation();
  console.log("LOCATION")
  console.log(location);

  const hash: string = location.hash;
  const isValid = hash.startsWith("#/");

  if (!isValid) {
    return <div>
      Invalid Base 64 message path. Paths must start with <b>#/</b>.
    </div>
  }

  if (qldConfig === undefined) {
    return <div>
      Loading config
    </div>
  }

  const b64Content = hash.substring(2);
  const messageBytes = convertBase64ToBinary(b64Content);

  const shareableAnimation = ShareableAnimation.fromBinary(messageBytes);
  console.log(shareableAnimation)

  const doApplyAnimationToStrip = (stripIndex: QromaStrip_WS2812FX_StripIndex) => {
    // console.log("APPLY ANIMATION")
    // console.log(stripIndex)
    // console.log(shareableAnimation)

    props.qromaLightsApi.setStripAnimation(stripIndex, shareableAnimation.animation);
  }

  const doSave = () => {
    props.qromaLightsApi.saveCurrentState();
  }


  return (
    <>
      <QButton
        sx={{ marginTop: "10px" }}
        onClick={() => doApplyAnimationToStrip(QromaStrip_WS2812FX_StripIndex.QSSI_STRIP_01)}>
          Apply Animation to {qldConfig.qromaStrip1Config.name}
      </QButton>
      <QButton
          sx={{ marginTop: "10px" }}
          onClick={() => doApplyAnimationToStrip(QromaStrip_WS2812FX_StripIndex.QSSI_STRIP_02)}>
            Apply Animation to {qldConfig.qromaStrip2Config.name}
      </QButton>
      <QButton
          sx={{ marginTop: "10px" }}
          onClick={() => doSave()}>
            Save
      </QButton>
    </>
  )
}
