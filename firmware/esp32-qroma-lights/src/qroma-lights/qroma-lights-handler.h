#ifndef QROMA_DEVICE_HANDLER_H
#define QROMA_DEVICE_HANDLER_H

#include <qroma-proto/qroma-lights-commands.pb.h>
#include <qroma-proto/my-project-messages.pb.h>


void handleQromaLightsDeviceCommand(QromaLightsDeviceCommand * message, QromaLightsResponse * response);

void setQromaLightsDeviceConfigUpdatedResponse(QromaLightsResponse * response, const char * updateDescription);
void setQromaLightsDeviceConfigUpdatedResponse(QromaLightsResponse * response, const char * updateDescription, const char * followOn);
void setQromaLightsDeviceConfigUpdatedResponse(QromaLightsResponse * response, const char * updateDescription, uint32_t followOn);


#endif