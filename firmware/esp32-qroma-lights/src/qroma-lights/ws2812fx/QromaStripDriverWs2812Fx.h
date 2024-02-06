#ifndef QROMA_STRIP_DRIVER_WS2812FX_H_INCLUDED
#define QROMA_STRIP_DRIVER_WS2812FX_H_INCLUDED

#include <WS2812FX.h>
#include <qroma-proto/qroma-lights-commands.pb.h>


class QromaStripDriverWs2812Fx {

  public:
    void startup(QromaStripConfig * config);

    void applyQromaStripBrightness(uint32_t brightness);
    void applyQromaStripName(const char * name);
    void applyQromaStripAnimation(QromaStrip_WS2812FX_Animation * cmd);
    void applyQromaStripIoSettings(QromaStrip_WS2812FX_IoSettings * cmd);

    void saveQromaStripCurrentState(SaveQromaStrip_CurrentState * cmd);

    void tick();
    void populateQromaStripIoSettings(QromaStrip_WS2812FX_IoSettings * settings);
    void populateQromaStripStartupAnimation(QromaStrip_WS2812FX_Animation * startupAnimation);

    const char * getName();
    uint32_t getBrightness();

  private:
    WS2812FX * _ws2812fx;

    QromaStripConfig _config;

    void applyAnimation(QromaStrip_WS2812FX_Animation * animation);
    void copyQromaStripAnimation(QromaStrip_WS2812FX_Animation * dest, QromaStrip_WS2812FX_Animation * src);
};

#endif
