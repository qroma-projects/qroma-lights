// import {
//   QromaPoint_WS2812FX_IoSettings, 
//   QromaStrip_WS2812FX_Animation,
//   QromaStrip_WS2812FX_FadeSpeed,
//   QromaStrip_WS2812FX_NeoPixelRgbOrder,
//   QromaStrip_WS2812FX_NeoPixelTxRate,
//   QromaStrip_WS2812FX_Pattern,
//   QromaStrip_WS2812FX_PixelsSize,
//   QromaStrip_WS2812FX_Segment,
//   SetQromaStrip_WS2812FX_Brightness,
//   SetQromaStrip_WS2812FX_IoSettings,
//   SetQromaStrip_WS2812FX_SegmentAnimation,
//   SetQromaStrip_WS2812FX_Segments,
//   WS2812FX_Command
// } from "../../proto-ts/driver-ws2812fx";
import {
  QromaStrip_WS2812FX_Animation,
  QromaStrip_WS2812FX_FadeSpeed,
  QromaStrip_WS2812FX_NeoPixelRgbOrder,
  QromaStrip_WS2812FX_NeoPixelTxRate,
  QromaStrip_WS2812FX_Pattern,
  QromaStrip_WS2812FX_PixelsSize
} from "../../qroma-proto/qroma-lights-types";
import { convertHexColorToRgbBytes } from "../app_utils";
// import { createQromaCommCommandRoutedMessageBytes } from "./qroma-device";


export const createSaveQromaStripStateCommandBytes = (qromaPointId: string) => {
  const ws2812fxCommand: WS2812FX_Command = {
    command: {
      oneofKind: "saveQromaStripCurrentState",
      saveQromaStripCurrentState: {}
    }
  };
  const commandBytes = WS2812FX_Command.toBinary(ws2812fxCommand);

  const cmdBytes = createQromaCommCommandRoutedMessageBytes(qromaPointId, commandBytes);
  return cmdBytes;
}


export const createSetSolidColorAnimation = (hexColor: string, useGammaCorrection: boolean): QromaStrip_WS2812FX_Animation => {
  
  const rgbBytes = convertHexColorToRgbBytes(hexColor);
  const threeSetsOfColorRgbBytes = new Uint8Array(9);
  threeSetsOfColorRgbBytes[0] = rgbBytes[0];
  threeSetsOfColorRgbBytes[1] = rgbBytes[1];
  threeSetsOfColorRgbBytes[2] = rgbBytes[2];

  const animation: QromaStrip_WS2812FX_Animation = {
    pattern: QromaStrip_WS2812FX_Pattern.QSP_STATIC,
    threeSetsOfColorRgbBytes,
    speed: 0,
    reversed: false,
    fadeSpeed: QromaStrip_WS2812FX_FadeSpeed.QSFS_SLOW,
    size: QromaStrip_WS2812FX_PixelsSize.QSPS_SMALL,
    useGammaCorrection: useGammaCorrection
  };

  return animation;
}


export const createSetSolidColorCommandBytes = (qromaPointId: string, hexColor: string, useGammaCorrection: boolean) => {
  
  const animation = createSetSolidColorAnimation(hexColor, useGammaCorrection);

  const setAnimationCommand: SetQromaStrip_WS2812FX_SegmentAnimation = {
    segmentIndex: 0,
    animation,
  }

  const ws2812fxCommand: WS2812FX_Command = {
    command: {
      oneofKind: "setQromaStripSegmentAnimation",
      setQromaStripSegmentAnimation: setAnimationCommand
    }
  };
  const animationCommandBytes = WS2812FX_Command.toBinary(ws2812fxCommand);

  const cmdBytes = createQromaCommCommandRoutedMessageBytes(qromaPointId, animationCommandBytes);
  return cmdBytes;

}


export const createSetAnimationCommandBytes = (qromaPointId: string, animation: QromaStrip_WS2812FX_Animation, segmentIndex: number) => {
  
  const setAnimationCommand: SetQromaStrip_WS2812FX_SegmentAnimation = {
    segmentIndex,
    animation,
  }

  const ws2812fxCommand: WS2812FX_Command = {
    command: {
      oneofKind: "setQromaStripSegmentAnimation",
      setQromaStripSegmentAnimation: setAnimationCommand
    }
  };
  const animationCommandBytes = WS2812FX_Command.toBinary(ws2812fxCommand);

  const cmdBytes = createQromaCommCommandRoutedMessageBytes(qromaPointId, animationCommandBytes);
  return cmdBytes;
}


export const createSetBrightnessCommandBytes = (qromaPointId: string, brightness: number) => {
  
  const setBrightnessCommand: SetQromaStrip_WS2812FX_Brightness = {
    brightness
  }

  const ws2812fxCommand: WS2812FX_Command = {
    command: {
      oneofKind: "setQromaStripBrightness",
      setQromaStripBrightness: setBrightnessCommand
    }
  };
  const animationCommandBytes = WS2812FX_Command.toBinary(ws2812fxCommand);

  const cmdBytes = createQromaCommCommandRoutedMessageBytes(qromaPointId, animationCommandBytes);
  return cmdBytes;
}


export const createSetLedCountCommandBytes = (qromaPointId: string, 
  currentSettings: QromaPoint_WS2812FX_IoSettings, ledCount: number) => {
  
  const newSettings = QromaPoint_WS2812FX_IoSettings.clone(currentSettings);
  newSettings.ledCount = ledCount;
  
  const setIoSettingsCommand: SetQromaStrip_WS2812FX_IoSettings = {
    settings: newSettings
  }

  const ws2812fxCommand: WS2812FX_Command = {
    command: {
      oneofKind: "setQromaStripIoSettings",
      setQromaStripIoSettings: setIoSettingsCommand
    }
  };
  const animationCommandBytes = WS2812FX_Command.toBinary(ws2812fxCommand);

  const cmdBytes = createQromaCommCommandRoutedMessageBytes(qromaPointId, animationCommandBytes);
  return cmdBytes;
}


export const createSetPinNumberCommandBytes = (qromaPointId: string, 
  currentSettings: QromaPoint_WS2812FX_IoSettings, pinIoNumber: number) => {
  
  const newSettings = QromaPoint_WS2812FX_IoSettings.clone(currentSettings);
  newSettings.pin = pinIoNumber;
  
  const setIoSettingsCommand: SetQromaStrip_WS2812FX_IoSettings = {
    settings: newSettings
  }

  const ws2812fxCommand: WS2812FX_Command = {
    command: {
      oneofKind: "setQromaStripIoSettings",
      setQromaStripIoSettings: setIoSettingsCommand
    }
  };
  const animationCommandBytes = WS2812FX_Command.toBinary(ws2812fxCommand);

  const cmdBytes = createQromaCommCommandRoutedMessageBytes(qromaPointId, animationCommandBytes);
  return cmdBytes;
}


export const createSetLedDataRateCommandBytes = (qromaPointId: string, 
  currentSettings: QromaPoint_WS2812FX_IoSettings, dataRate: QromaStrip_WS2812FX_NeoPixelTxRate) => {
  
  const newSettings = QromaPoint_WS2812FX_IoSettings.clone(currentSettings);
  newSettings.neoPixelTxRate = dataRate;
  
  const setIoSettingsCommand: SetQromaStrip_WS2812FX_IoSettings = {
    settings: newSettings
  }

  const ws2812fxCommand: WS2812FX_Command = {
    command: {
      oneofKind: "setQromaStripIoSettings",
      setQromaStripIoSettings: setIoSettingsCommand
    }
  };
  const animationCommandBytes = WS2812FX_Command.toBinary(ws2812fxCommand);

  const cmdBytes = createQromaCommCommandRoutedMessageBytes(qromaPointId, animationCommandBytes);
  return cmdBytes;
}


export const createSetLedSignalColorOrderCommandBytes = (qromaPointId: string, 
  currentSettings: QromaPoint_WS2812FX_IoSettings, ledSignalColorOrder: QromaStrip_WS2812FX_NeoPixelRgbOrder) => {
  
  const newSettings = QromaPoint_WS2812FX_IoSettings.clone(currentSettings);
  newSettings.neoPixelRgbOrder = ledSignalColorOrder;
  
  const setIoSettingsCommand: SetQromaStrip_WS2812FX_IoSettings = {
    settings: newSettings
  }

  const ws2812fxCommand: WS2812FX_Command = {
    command: {
      oneofKind: "setQromaStripIoSettings",
      setQromaStripIoSettings: setIoSettingsCommand
    }
  };
  const animationCommandBytes = WS2812FX_Command.toBinary(ws2812fxCommand);

  const cmdBytes = createQromaCommCommandRoutedMessageBytes(qromaPointId, animationCommandBytes);
  return cmdBytes;
}


export const createSetLedIoSettingsCommandBytes = (
  qromaPointId: string,
  newSettings: QromaPoint_WS2812FX_IoSettings,
  ) => {
    
  const setIoSettingsCommand: SetQromaStrip_WS2812FX_IoSettings = {
    settings: newSettings
  }

  const ws2812fxCommand: WS2812FX_Command = {
    command: {
      oneofKind: "setQromaStripIoSettings",
      setQromaStripIoSettings: setIoSettingsCommand
    }
  };
  const commandBytes = WS2812FX_Command.toBinary(ws2812fxCommand);

  const cmdBytes = createQromaCommCommandRoutedMessageBytes(qromaPointId, commandBytes);
  return cmdBytes;
}


const getColorBytesForSegment = (segmentIndex: number): number[] => {
  switch (segmentIndex) {
    case 0:
      return [100, 0, 0, 0, 0, 0, 0, 0, 0];
    case 1:
      return [0, 100, 0, 0, 0, 0, 0, 0, 0];
    case 2:
      return [0, 0, 100, 0, 0, 0, 0, 0, 0];
    case 3:
      return [100, 100, 0, 0, 0, 0, 0, 0, 0];
    case 4:
      return [100, 0, 100, 0, 0, 0, 0, 0, 0];
    default:
      return [0, 0, 0, 0, 0, 0, 0, 0, 0];
  }
}


const createSegmentAnimation = (segmentIndex: number): QromaStrip_WS2812FX_Animation => {

  const animation = QromaStrip_WS2812FX_Animation.create();
  animation.pattern = QromaStrip_WS2812FX_Pattern.QSP_BLINK;
  animation.fadeSpeed = QromaStrip_WS2812FX_FadeSpeed.QSFS_FAST;
  animation.threeSetsOfColorRgbBytes = Uint8Array.from(getColorBytesForSegment(segmentIndex));
  animation.speed = (segmentIndex + 1) * 400;
  animation.size = QromaStrip_WS2812FX_PixelsSize.QSPS_MEDIUM;

  return animation;
}


const createDarkAnimation = (): QromaStrip_WS2812FX_Animation => {
  const animation = QromaStrip_WS2812FX_Animation.create();
  animation.pattern = QromaStrip_WS2812FX_Pattern.QSP_STATIC;
  animation.fadeSpeed = QromaStrip_WS2812FX_FadeSpeed.QSFS_MEDIUM;
  animation.threeSetsOfColorRgbBytes = Uint8Array.from([0, 0, 0, 0, 0, 0, 0, 0, 0]);
  animation.speed = 100;
  animation.size = QromaStrip_WS2812FX_PixelsSize.QSPS_MEDIUM;

  return animation;
}


export const createUpdateSegmentCountCommandBytes = (qromaPointId: string, 
  segmentCount: number, maxSegments: number, ledCount: number) => {

  const segments: QromaStrip_WS2812FX_Segment[] = [];
  const animations: QromaStrip_WS2812FX_Animation[] = [];
  const segmentLedCounts: number[] = [];

  for (var i=0; i < segmentCount; i++) {
    segmentLedCounts.push(0);
  }

  for (var i=0; i < ledCount; i++) {
    const ledSegmentIndex = i % segmentCount;
    segmentLedCounts[ledSegmentIndex]++;
  }

  var nextSegmentStart = 0;
  for (var i=0; i < segmentCount; i++) {
    const thisSegmentLength = segmentLedCounts[i];
    const thisSegmentStart = nextSegmentStart;
    const thisSegmentEnd = (thisSegmentStart + thisSegmentLength) - 1;
    nextSegmentStart = thisSegmentEnd + 1;

    const segmentRange = QromaStrip_WS2812FX_Segment.create();
    segmentRange.startIndex = thisSegmentStart;
    segmentRange.endIndex = thisSegmentEnd;
    segments.push(segmentRange);

    const animation = createSegmentAnimation(i);
    animations.push(animation);
  }

  for (var i=segmentCount; i < maxSegments; i++) {
    const segmentRange = QromaStrip_WS2812FX_Segment.create();
    segmentRange.startIndex = 0;
    segmentRange.endIndex = 0;
    segments.push(segmentRange);

    const animation = createDarkAnimation();
    animations.push(animation);
  }

  const setSegments = SetQromaStrip_WS2812FX_Segments.create();
  setSegments.segments = setSegments.segments.concat(segments);
  setSegments.animations = setSegments.animations.concat(animations);
  setSegments.numSegments = segmentCount;

  const ws2812fxCommand: WS2812FX_Command = {
    command: {
      oneofKind: "setQromaStripSegments",
      setQromaStripSegments: setSegments
    }
  };
  const updatedSegmentBytes = WS2812FX_Command.toBinary(ws2812fxCommand);

  console.log("SEGMENT COMMAND");
  console.log(ws2812fxCommand);

  const cmdBytes = createQromaCommCommandRoutedMessageBytes(qromaPointId, updatedSegmentBytes);
  return cmdBytes;
}
