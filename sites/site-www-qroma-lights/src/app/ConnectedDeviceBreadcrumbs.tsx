import React from 'react';
import { Breadcrumbs, Link } from '@mui/material';
import { QromaLightsDeviceConfig, QromaStripConfig, QromaStrip_WS2812FX_StripIndex } from '../qroma-proto/qroma-lights-types';
import { IQromaLightsApi } from './api/QromaLightsApi';


export interface IConnectedDeviceBreadcrumbsProps {
  qromaLightsApi: IQromaLightsApi
  qromaLightsDeviceConfig: QromaLightsDeviceConfig
  // activeQromaStripPathIndex: QromaStrip_WS2812FX_StripIndex
  qromaStripConfig: QromaStripConfig
  setActiveQromaStripPathIndex: (activeQromaStripPathIndex: QromaStrip_WS2812FX_StripIndex) => void
}


export const ConnectedDeviceBreadcrumbs = (props: IConnectedDeviceBreadcrumbsProps) => {

  const breadcrumbLinks = [
    <Link 
      underline="hover" 
      color="inherit" 
      href="#"
      onClick={() => props.setActiveQromaStripPathIndex(QromaStrip_WS2812FX_StripIndex.QSSI_NOT_SET)}
      key="qroma-device-breadcrumb"
      >
      {props.qromaLightsDeviceConfig.deviceName}
    </Link>,
    <Link 
      underline="hover" 
      color="inherit" 
      href="#"
      key="qroma-strip-breadcrumb"
      >
      {props.qromaStripConfig.name}
    </Link>
  ];


  return (
    <Breadcrumbs separator="›" aria-label="breadcrumb" 
      sx={{
        // marginBottom: "15px"
        // marginTop: "20px"
      }}>
      {breadcrumbLinks}
    </Breadcrumbs>
  )
}
