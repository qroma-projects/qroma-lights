// import React from 'react';
// import { writeStorage, useLocalStorage } from '@rehooks/local-storage';
// import { QromaPoint_WS2812FX_IoSettings } from '../../../proto-ts/driver-ws2812fx';
// // import { encodeB64 } from '../../../utils';
// import { DoValidationResponse, QInputAValueDialog } from '../input-controls/QInputAValueDialog';
// import { Ws2812FxQromaPointConfiguration, QromaPointWs2812FxConfigurationsStorageKey } from '../../../qroma-persist/local-storage/qroma-point-configurations';


// type SaveQromaPointConfigurationDialogProps = {
//   isOpen: boolean

//   qromaPointIoSettings: QromaPoint_WS2812FX_IoSettings
//   maxBrightness: number
//   numberOfSegments: number
//   maxSegmentCount: number

//   onHandleClose: ()=> void
// }

// export const SaveQromaPointConfigurationDialog = (props: SaveQromaPointConfigurationDialogProps) => {

//   const [allConfigurations] = useLocalStorage<Ws2812FxQromaPointConfiguration[]>(QromaPointWs2812FxConfigurationsStorageKey, []);
//   // const ioSettingsBytes = QromaPoint_WS2812FX_IoSettings.toBinary(props.qromaPointIoSettings);
//   // const ioSettingsBytesB64 = encodeB64(ioSettingsBytes);

//   const onHandleSave = (configName: string) => {
//     const newConfig = {
//       driverId: "qroma-ws2812fx",

//       // ioSettingsBytesB64: ioSettingsBytesB64,
//       maxBrightness: props.maxBrightness,
//       numberOfSegments: props.numberOfSegments,
//       ledCount: props.qromaPointIoSettings.ledCount,
//       maxSegmentCount: props.maxSegmentCount,
//       pinIoNumber: props.qromaPointIoSettings.pin,
//       ledSignalColorOrder: props.qromaPointIoSettings.neoPixelRgbOrder,
//       ledDataRate: props.qromaPointIoSettings.neoPixelTxRate,
    
      
//       configurationName: configName,
//       createdTime: new Date(),
//     } as Ws2812FxQromaPointConfiguration;
  
//     allConfigurations.push(newConfig);
  
//     writeStorage(QromaPointWs2812FxConfigurationsStorageKey, allConfigurations);

//     props.onHandleClose();
//   }

//   return (
//     <QInputAValueDialog 
//       isOpen={props.isOpen}
//       title={'Save Qroma Point Configuration'} 
//       inputLabel={'Name'} 
//       initValue={'Config'} 
//       commitButtonLabel={'Save'} 
//       doValidation={(latestValue: string): DoValidationResponse => {
//         return {
//           isValidValue: latestValue.length > 0,
//           validationMessage: latestValue.length > 0 ? undefined : "Configuration must have a name"
//         } as DoValidationResponse;
//       }}
//       onHandleCommit={function (commandName: string): void {
//         onHandleSave(commandName);
//       }}
//       onHandleClose={props.onHandleClose} 
//       />
//   );
// }
