import { GetFileContentsResponse, ListDirContentsResponse, MkDirResponse, RmDirResponse, RmFileResponse, ReportFileDataResponse } from "../../qroma-comm-proto/file-system-commands";
import { QromaCommCommand, QromaCommResponse } from "../../qroma-comm-proto/qroma-comm";
import { crc32 } from "crc";
import { useQromaCommWebSerial } from "../webserial/QromaCommWebSerial";
import { sleep } from "../utils";
import { IQromaConnectionState, PortRequestResult } from "../webserial/QromaWebSerial";

// @ts-ignore
import { Buffer } from 'buffer';
import { useState } from "react";


export interface IQromaCommFilesystemApi {
  // init: (onConnection: (success: boolean) => void) => void
  init: () => void

  listDir: (dirPath: string) => Promise<ListDirContentsResponse | undefined>
  mkDir: (dirPath: string) => Promise<MkDirResponse | undefined>
  rmDir: (dirPath: string) => Promise<RmDirResponse | undefined>

  getFileDetails: (filePath: string) => Promise<ReportFileDataResponse | undefined>
  getFileContents: (filePath: string) => Promise<GetFileContentsResponse | undefined>
  writeFileContents: (filePath: string, contents: Uint8Array) => Promise<ReportFileDataResponse | undefined>
  rmFile: (filePath: string) => Promise<RmFileResponse | undefined>

  connectionState: IQromaConnectionState
}


export const useQromaCommFileSystemApi = (): IQromaCommFilesystemApi => {

  console.log("STARTING QromaCommFileSystemApi");

  const [connectionState, setConnectionState] = useState({
    isConnected: false,
    isMonitorOn: false,
    isPortConnected: false,
  } as IQromaConnectionState);

  let _latestResponse: QromaCommResponse | undefined = undefined;

  const clearLatestResponse = () => {
    _latestResponse = undefined;
  }

  const setLatestResponse = (message: QromaCommResponse) => {
    _latestResponse = message;
  }

  const onQromaCommResponse = (message: QromaCommResponse) => {
    setLatestResponse(message);
  }

  const startMonitoring = () => {
    qromaCommWebSerial.startMonitoring();
  }
  
  const onConnectionChange = (latestConnectionState: IQromaConnectionState) => {
    setConnectionState(latestConnectionState);
  }

  const qromaCommWebSerial = useQromaCommWebSerial(onQromaCommResponse, onConnectionChange);


  const waitForResponse = async <T,>(filter: (message: QromaCommResponse) => T, timeoutInMs: number) : Promise<T | undefined> => {
    const expirationTime = Date.now() + timeoutInMs;
    
    while (Date.now() < expirationTime) {
      if (_latestResponse !== undefined) {
        const filteredResponse = filter(_latestResponse);
        if (filteredResponse !== undefined) {
          return filteredResponse;
        }
      }
      await sleep(25);
    }

    return;
  }


  const getFileDetails = async (filePath: string): Promise<ReportFileDataResponse | undefined> => {
    const reportFileDataCommand: QromaCommCommand = {
      command: {
        oneofKind: 'fsCommand',
        fsCommand: {
          command: {
            oneofKind: 'reportFileDataCommand',
            reportFileDataCommand: {
              filename: filePath,
            }
          }
        }
      }
    };

    await qromaCommWebSerial.sendQromaCommCommand(reportFileDataCommand);

    return;
  }
  

  const getFileContents = async (filePath: string): Promise<GetFileContentsResponse | undefined> => {
    const reportFileDataCommand: QromaCommCommand = {
      command: {
        oneofKind: 'fsCommand',
        fsCommand: {
          command: {
            oneofKind: 'getFileContentsCommand',
            getFileContentsCommand: {
              filePath,
            }
          }
        }
      }
    };

    clearLatestResponse();
    await qromaCommWebSerial.sendQromaCommCommand(reportFileDataCommand);

    const result = await waitForResponse((message: QromaCommResponse) => {
      console.log("FILTERING");
      console.log(_latestResponse);

      if (message.response.oneofKind === 'fsResponse' &&
          message.response.fsResponse.response.oneofKind === 'getFileContentsResponse')
      {
        console.log("GET FILE CONTENT SUCCESS");
        return message.response.fsResponse.response.getFileContentsResponse;
      }

      return;
    }, 1000);

    return result;
  }

  const rmDir = async (dirPath: string): Promise<RmDirResponse | undefined> => {
    const rmFileCommand: QromaCommCommand = {
      command: {
        oneofKind: 'fsCommand',
        fsCommand: {
          command: {
            oneofKind: 'rmDirCommand',
            rmDirCommand: {
              dirPath,
            }
          }
        }
      }
    };

    await qromaCommWebSerial.sendQromaCommCommand(rmFileCommand);

    return;
  }

  const writeFileContents = async (filePath: string, contents: Uint8Array): Promise<ReportFileDataResponse | undefined> => {

    const checksum = crc32(contents);

    const writeFileContentsCommand: QromaCommCommand = {
      command: {
        oneofKind: 'fsCommand',
        fsCommand: {
          command: {
            oneofKind: 'writeFileDataCommand',
            writeFileDataCommand: {
              fileBytes: contents,
              fileData: {
                filename: filePath,
                filesize: contents.length,
                checksum,
              }
            }
          }
        }
      }
    };

    await qromaCommWebSerial.sendQromaCommCommand(writeFileContentsCommand);

    return;
  }

  const rmFile = async (filePath: string): Promise<RmFileResponse | undefined> => {
    const rmFileCommand: QromaCommCommand = {
      command: {
        oneofKind: 'fsCommand',
        fsCommand: {
          command: {
            oneofKind: 'rmFileCommand',
            rmFileCommand: {
              filePath,
            }
          }
        }
      }
    };

    console.log(rmFileCommand);
    await qromaCommWebSerial.sendQromaCommCommand(rmFileCommand);

    return;
  }

  const listDir = async (dirPath: string): Promise<ListDirContentsResponse | undefined> => {

    const fsCommand: QromaCommCommand = {
      command: {
        oneofKind: 'fsCommand',
        fsCommand: {
          command: {
            oneofKind: 'listDirContentsCommand',
            listDirContentsCommand: {
              dirPath,
              startsWithConstraint: "",
              endsWithConstraint: "",
            }
          }
        }
      }
    };

    // wait for next message
    clearLatestResponse();
    await qromaCommWebSerial.sendQromaCommCommand(fsCommand);
    // listen for latest message; if valid/expected message type, return value
    const result = await waitForResponse((message: QromaCommResponse) => {
      console.log("FILTERING");
      console.log(_latestResponse);

      if (message.response.oneofKind === 'fsResponse' &&
          message.response.fsResponse.response.oneofKind === 'listDirContentsResponse')
      {
        console.log("FILTER SUCCESS");
        return message.response.fsResponse.response.listDirContentsResponse;
      }

      return;
    }, 1000);

    return result;
  }

  const mkDir = async (dirPath: string): Promise<MkDirResponse | undefined> => {
    const mkDirCommand: QromaCommCommand = {
      command: {
        oneofKind: 'fsCommand',
        fsCommand: {
          command: {
            oneofKind: 'mkDirCommand',
            mkDirCommand: {
              dirPath,
            }
          }
        }
      }
    };

    // wait for next message
    clearLatestResponse();
    qromaCommWebSerial.sendQromaCommCommand(mkDirCommand);

    const result = await waitForResponse((message: QromaCommResponse) => {
      console.log("FILTERING");
      console.log(_latestResponse);

      if (message.response.oneofKind === 'fsResponse' &&
          message.response.fsResponse.response.oneofKind === 'listDirContentsResponse')
      {
        console.log("FILTER SUCCESS");
        return message.response.fsResponse.response.listDirContentsResponse;
      }

      return;
    }, 1000);

    return result;
  }


  return {
    init: startMonitoring,
    
    getFileDetails,
    getFileContents,
    writeFileContents,
    rmFile,

    listDir,
    mkDir,
    rmDir,

    connectionState: qromaCommWebSerial.getConnectionState(),
  };
}