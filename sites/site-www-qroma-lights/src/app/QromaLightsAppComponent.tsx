import React from 'react';
import { DeviceConnectionPanel } from './DeviceConnectionPanel';
import { Box, Container } from '@mui/material';
import { ConnectedQromaLightsPanel } from './ConnectedQromaLightsPanel';
import { useQromaLightsApi } from './api/QromaLightsApi';


export const QromaLightsAppComponent = () => {

  const qromaLightsApi = useQromaLightsApi();

  return (
    <>
      <Container maxWidth="xs" sx={{textAlign: 'center'}}>
        <Box
          sx={{ 
            p: 2,
            textAlign: 'center',
            border: '1px dashed grey' 
          }}
          >
          <DeviceConnectionPanel
            qromaLightsApi={qromaLightsApi}
            >
            <ConnectedQromaLightsPanel
              qromaLightsApi={qromaLightsApi}
              />
          </DeviceConnectionPanel>
        </Box>
      </Container>
    </>
  )
}
