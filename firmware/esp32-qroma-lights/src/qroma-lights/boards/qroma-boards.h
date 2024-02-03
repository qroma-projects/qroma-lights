#ifndef QROMA_BOARDS_H
#define QROMA_BOARDS_H

#include <qroma-proto/my-project-messages.pb.h>
#include <qroma-proto/qroma-lights-types.pb.h>
#include "../ws2812fx/qroma_init_settings.h"


extern void onInit();
extern const char * getBoardName();

void populateGetBoardDetailsResponse(GetBoardDetailsResponse * config);
extern void handleSetBoardLightColorRequest(SetBoardLightColorRequest * request, SetBoardLightColorResponse * response);

extern void populateWithBoardSpecificDefaultQromaLightsDeviceConfig(QromaLightsDeviceConfig * config);

#endif