// import React from 'react';
// // import { QromaDriverCommand, QromaDriverCommandsStorageKey } from '../../../qroma-persist/local-storage/qroma-driver-commands';
// // import { writeStorage, useLocalStorage } from '@rehooks/local-storage';
// // import { QromaStrip_WS2812FX_Animation } from '../../../proto-ts/driver-ws2812fx';
// // import { encodeB64 } from '../../../utils';
// import {v4 as uuidv4} from 'uuid';
// import { DoValidationResponse, QInputAValueDialog } from '../input-controls/QInputAValueDialog';
// import { QromaStrip_WS2812FX_Animation } from '../../qroma-proto/qroma-lights-types';


// type SaveFlashCommandDialogProps = {
//   isOpen: boolean
//   animation: QromaStrip_WS2812FX_Animation
//   onHandleClose: ()=> void
// }

// export const SaveFlashCommandDialog = (props: SaveFlashCommandDialogProps) => {

//   const [allFlashes] = useLocalStorage<QromaDriverCommand[]>(QromaDriverCommandsStorageKey, []);
//   const animationBytes = QromaStrip_WS2812FX_Animation.toBinary(props.animation);
//   const animationBytesB64 = encodeB64(animationBytes);

//   const onHandleSave = (flashName: string) => {
//     const newFlash = {
//       driverId: "qroma-ws2812fx",
//       cmdBytesB64: animationBytesB64,
//       cmdName: flashName,
//       cmdId: uuidv4(),
//       createdTime: new Date(),
//     } as QromaDriverCommand;
  
//     allFlashes.push(newFlash);
  
//     writeStorage(QromaDriverCommandsStorageKey, allFlashes);

//     props.onHandleClose();
//   }

//   return (
//     <QInputAValueDialog 
//       isOpen={props.isOpen}
//       title={'Save Flash'} 
//       inputLabel={'Name'} 
//       initValue={'New Flash'} 
//       commitButtonLabel={'Save'} 
//       doValidation={(latestValue: string): DoValidationResponse => {
//         return {
//           isValidValue: latestValue.length > 0,
//           validationMessage: latestValue.length > 0 ? undefined : "Flash must have a name"
//         } as DoValidationResponse;
//       }}
//       onHandleCommit={function (commandName: string): void {
//         onHandleSave(commandName);
//       }}
//       onHandleClose={props.onHandleClose} 
//       />
//   );
// }
