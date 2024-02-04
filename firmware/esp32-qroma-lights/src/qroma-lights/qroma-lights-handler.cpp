#include "qroma-lights-handler.h"
#include "qroma-lights-config.h"
#include <qroma/qroma.h>
#include "qroma-strip-handler.h"


void handleQromaLightsNoArgCommand(NoArgCommands_QromaLightsDeviceCommand whichNoArgCommand, QromaLightsResponse * response) {
  switch (whichNoArgCommand) {
    case NoArgCommands_QromaLightsDeviceCommand_NacQlc_RequestQromaLightsConfig:
      logInfo("HANDLING NoArgCommands_QromaLightsDeviceCommand_NacQlc_RequestQromaLightsConfig");
      response->which_response = QromaLightsResponse_qromaLightsConfigResponse_tag;
      populateConfigFromQromaLights(&(response->response.qromaLightsConfigResponse));
      break;
    case NoArgCommands_QromaLightsDeviceCommand_NacQlc_UseCurrentSetupOnStartup:
      saveCurrentQromaLightsConfig();
      break;
    default:
      logError("Unrecognized NoArgCommands_QromaLightsDeviceCommand command");
      logError(whichNoArgCommand);
      break;      
  }
}


void handleQromaLightsSetQromaDeviceName(const char * deviceName, QromaLightsResponse * response) {
  setQromaLightsDeviceName(deviceName);
}


void handleQromaLightsDeviceCommand(QromaLightsDeviceCommand * message, QromaLightsResponse * response) {

  switch (message->which_command) {
    case QromaLightsDeviceCommand_qromaStripCommand_tag:
      handleQromaStripCommand(message->command.qromaStripCommand.stripIndex, &(message->command.qromaStripCommand), response);
      break;

    case QromaLightsDeviceCommand_noArgCommand_tag:
      handleQromaLightsNoArgCommand(message->command.noArgCommand, response);
      break;

    case QromaLightsDeviceCommand_setQromaDeviceName_tag:
      handleQromaLightsSetQromaDeviceName(message->command.setQromaDeviceName.name, response);
      break;

    //   response->which_response = MyProjectResponse_qromaStripResponse_tag;
    //   handleQromaStripCommand(&(message->command.qromaStripCommand), &(response->response.qromaStripResponse));

    default:
      logError("Unrecognized QromaLightsCommand command");
      logError(message->which_command);
      break;      
  }
}
