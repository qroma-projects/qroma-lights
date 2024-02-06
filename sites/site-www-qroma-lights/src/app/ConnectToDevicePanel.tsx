import React from 'react';
import { Box, Button, Container } from '@mui/material';
import { QButton } from './input-controls/QButton';
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
      {/* <Container maxWidth="xs" sx={{textAlign: 'center'}}>
        <Box 
          sx={{ 
            p: 2,
            textAlign: 'center',
            border: '1px dashed grey' 
          }}
          > */}
          <QButton
            sx={{ marginTop: "10px" }}
            onClick={() => doQromaConnect()}>
              Connect
          </QButton>
        {/* </Box>
        
      </Container> */}
    </>
  )
}
