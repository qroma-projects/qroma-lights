import { useState } from "react";
import { IQromaConnectionState, PortRequestResult, QromaCommResponse, sleep, useQromaAppWebSerial } from "../../react-qroma-lib";
import { MyProjectCommand, MyProjectResponse } from "../../qroma-proto/my-project-messages";
import { NoArgCommands_QromaLightsDeviceCommand } from "../../qroma-proto/qroma-lights-commands";
import { QromaLightsDeviceConfig, QromaStrip_WS2812FX_Animation, QromaStrip_WS2812FX_IoSettings, QromaStrip_WS2812FX_StripIndex } from "../../qroma-proto/qroma-lights-types";


export interface IQromaLightsApi {
  init: () => void

  connectionState: IQromaConnectionState
  getQromaLightsDeviceConfig: () => Promise<QromaLightsDeviceConfig | undefined>

  setDeviceName: (deviceName: string) => void

  setStripName: (stripIndex: QromaStrip_WS2812FX_StripIndex, name: string) => void
  setStripBrightness: (stripIndex: QromaStrip_WS2812FX_StripIndex, brightness: number) => void
  setStripAnimation: (stripIndex: QromaStrip_WS2812FX_StripIndex, animation: QromaStrip_WS2812FX_Animation) => void
  setStripIoSettings: (stripIndex: QromaStrip_WS2812FX_StripIndex, ioSettings: QromaStrip_WS2812FX_IoSettings) => void

  saveCurrentState: () => void
  restartDevice: () => void
}


export const useQromaLightsApi = (): IQromaLightsApi => {

  console.log("STARTING QromaLightsApi");

  const [connectionState, setConnectionState] = useState({
    isWebSerialConnected: false,
    keepQromaMonitoringOn: false,
    isQromaMonitoringOn: false,
  } as IQromaConnectionState);

  let _latestResponse: QromaCommResponse | undefined = undefined;
  let _latestAppResponse: MyProjectResponse | undefined = undefined;

  let _qromaLightsDeviceConfig: QromaLightsDeviceConfig | undefined = undefined;

  const setLatestResponse = (message: QromaCommResponse) => {
    _latestResponse = message;
  }

  const setLatestAppResponse = (message: MyProjectResponse) => {
    _latestAppResponse = message;
  }

  const onQromaCommResponse = (message: QromaCommResponse) => {
    setLatestResponse(message);
  }

  const onQromaAppResponse = (appMessage: MyProjectResponse) => {
    setLatestAppResponse(appMessage);
    console.log("LATEST APP RESPONSE")
    console.log(appMessage)
  }

  const clearLatestAppResponse = () => {
    _latestAppResponse = undefined;
  }
  
  const qromaAppWebSerialInputs = {
    onConnect: () => () => { console.log("ON CONNECT") },
    onDisconnect: () => () => { console.log("ON DISCONNECT")},
    onPortRequestResult: (requestResult: PortRequestResult) => { 
      console.log("ON PORT REQUEST RESULT");
      console.log(requestResult)
      setConnectionState(qromaAppWebSerial.getConnectionState());
    },
  
    commandMessageType: MyProjectCommand,
    responseMessageType: MyProjectResponse,
  
    onQromaCommResponse,
    onQromaAppResponse,
  }
  const qromaAppWebSerial = useQromaAppWebSerial<MyProjectCommand, MyProjectResponse>(qromaAppWebSerialInputs);

  const startMonitoring = async () => {
    qromaAppWebSerial.startMonitoring();
    const config = await getQromaLightsDeviceConfig();
    console.log("START MONITORING - CONFIG");
    console.log(config)
  }


  const waitForAppResponse = async<R,>(appResponseFilter: (appResponse: MyProjectResponse) => R | undefined, timeoutInMs: number) : Promise<R | undefined> => {
    const expirationTime = Date.now() + timeoutInMs;

    while (Date.now() < expirationTime) {
      console.log("WATIING")
      if (_latestAppResponse !== undefined) {
        const filteredResponse = appResponseFilter(_latestAppResponse);
        if (filteredResponse !== undefined) {
          console.log("FOUND APP RESPONSE")
          console.log(filteredResponse)
          return filteredResponse;
        }
      }
      await sleep(25);
    }

    return;
  }
  
  const getQromaLightsDeviceConfig = async (): Promise<QromaLightsDeviceConfig | undefined> => {
    console.log("IN getQromaLightsDeviceConfig()");

    const requestQromaLightsDeviceConfigCommand: MyProjectCommand = {
      command: {
        oneofKind: 'qromaLightsCommand',
        qromaLightsCommand: {
          command: {
            oneofKind: 'noArgCommand',
            noArgCommand: NoArgCommands_QromaLightsDeviceCommand.NacQlc_RequestQromaLightsConfig,
          }
        }
      }
    };

    clearLatestAppResponse();
    qromaAppWebSerial.sendQromaAppCommand(requestQromaLightsDeviceConfigCommand);

    const appResponseFilter = (appMessage: MyProjectResponse): QromaLightsDeviceConfig => {
      console.log("APP RESPONSE FILTER")
      console.log(appMessage)

      if (appMessage.response.oneofKind === 'qromaLightsResponse' &&
          appMessage.response.qromaLightsResponse.response.oneofKind === 'qromaLightsConfigResponse')
      {
        return appMessage.response.qromaLightsResponse.response.qromaLightsConfigResponse;
      }
    }

    const result = await waitForAppResponse(appResponseFilter, 1000);

    return result;
  }

  const setDeviceName = async (deviceName: string) => {
    const appCommand: MyProjectCommand = {
      command: {
        oneofKind: 'qromaLightsCommand',
        qromaLightsCommand: {
          command: {
            oneofKind: 'setQromaDeviceName',
            setQromaDeviceName: {
              name: deviceName,
            }
          }
        }
      }
    };

    qromaAppWebSerial.sendQromaAppCommand(appCommand);
  }

  const setStripName = (stripIndex: QromaStrip_WS2812FX_StripIndex, name: string) => {
    const appCommand: MyProjectCommand = {
      command: {
        oneofKind: 'qromaLightsCommand',
        qromaLightsCommand: {
          command: {
            oneofKind: 'qromaStripCommand',
            qromaStripCommand: {
              stripIndex,
              command: {
                oneofKind: 'setQromaStripName',
                setQromaStripName: name,
              }
            }
          }
        }
      }
    };

    qromaAppWebSerial.sendQromaAppCommand(appCommand);
  }

  const setStripBrightness = (stripIndex: QromaStrip_WS2812FX_StripIndex, brightness: number) => {
    const appCommand: MyProjectCommand = {
      command: {
        oneofKind: 'qromaLightsCommand',
        qromaLightsCommand: {
          command: {
            oneofKind: 'qromaStripCommand',
            qromaStripCommand: {
              stripIndex,
              command: {
                oneofKind: 'setQromaStripBrightness',
                setQromaStripBrightness: brightness,
              }
            }
          }
        }
      }
    };

    qromaAppWebSerial.sendQromaAppCommand(appCommand);
  }

  const setStripAnimation = (stripIndex: QromaStrip_WS2812FX_StripIndex, animation: QromaStrip_WS2812FX_Animation) => {
    const appCommand: MyProjectCommand = {
      command: {
        oneofKind: 'qromaLightsCommand',
        qromaLightsCommand: {
          command: {
            oneofKind: 'qromaStripCommand',
            qromaStripCommand: {
              stripIndex,
              command: {
                oneofKind: 'setQromaStripAnimation',
                setQromaStripAnimation: animation,
              }
            }
          }
        }
      }
    };

    qromaAppWebSerial.sendQromaAppCommand(appCommand);
  }

  const setStripIoSettings = (stripIndex: QromaStrip_WS2812FX_StripIndex, ioSettings: QromaStrip_WS2812FX_IoSettings) => {
    const appCommand: MyProjectCommand = {
      command: {
        oneofKind: 'qromaLightsCommand',
        qromaLightsCommand: {
          command: {
            oneofKind: 'qromaStripCommand',
            qromaStripCommand: {
              stripIndex,
              command: {
                oneofKind: 'setQromaStripIoSettings',
                setQromaStripIoSettings: ioSettings,
              }
            }
          }
        }
      }
    };

    qromaAppWebSerial.sendQromaAppCommand(appCommand);
  }

  const saveCurrentState = () => {
    const appCommand: MyProjectCommand = {
      command: {
        oneofKind: 'qromaLightsCommand',
        qromaLightsCommand: {
          command: {
            oneofKind: 'noArgCommand',
            noArgCommand: NoArgCommands_QromaLightsDeviceCommand.NacQlc_UseCurrentSetupOnStartup,
          }
        }
      }
    };

    qromaAppWebSerial.sendQromaAppCommand(appCommand);
  }
  
  const restartDevice = () => {
    const appCommand: MyProjectCommand = {
      command: {
        oneofKind: 'qromaLightsCommand',
        qromaLightsCommand: {
          command: {
            oneofKind: 'noArgCommand',
            noArgCommand: NoArgCommands_QromaLightsDeviceCommand.NacQlc_RestartQromaDevice,
          }
        }
      }
    };

    qromaAppWebSerial.sendQromaAppCommand(appCommand);
  }

  return {
    init: startMonitoring,
    connectionState: qromaAppWebSerial.getConnectionState(),
    getQromaLightsDeviceConfig,
    
    setDeviceName,

    setStripName,
    setStripBrightness,
    setStripAnimation,
    setStripIoSettings,

    saveCurrentState,
    restartDevice,
  };
}