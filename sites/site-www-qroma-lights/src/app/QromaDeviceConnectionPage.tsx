import React from 'react';
import { DeviceConnectionPanel } from './DeviceConnectionPanel';
import { Box, Container } from '@mui/material';


export const QromaDeviceConnectionPage = () => {

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
          <DeviceConnectionPanel />
        </Box>
      </Container>
    </>
  )

}
