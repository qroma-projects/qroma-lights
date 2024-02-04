#ifndef QROMA_LIGHTS_CONFIG_H
#define QROMA_LIGHTS_CONFIG_H

#include <qroma-proto/qroma-lights-types.pb.h>


QromaLightsDeviceConfig * getQromaLightsDeviceConfig();

void populateQromaLightsConfig();
bool saveQromaLightsConfig(QromaLightsDeviceConfig * config);
bool saveCurrentQromaLightsConfig();

void setQromaLightsDeviceName(const char * name);
// bool saveQromaLightsAnimations();

bool hasQromaLightsConfigFile();

bool populateQromaLightsConfigFromFile(QromaLightsDeviceConfig * config);
void populateWithDefaultQromaLightsConfig(QromaLightsDeviceConfig * config);

void populateConfigFromQromaLights(QromaLightsDeviceConfig * config);

#endif