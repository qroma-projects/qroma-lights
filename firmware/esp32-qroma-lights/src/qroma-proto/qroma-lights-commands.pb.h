/* Automatically generated nanopb header */
/* Generated by nanopb-0.4.8 */

#ifndef PB_QROMA_LIGHTS_COMMANDS_PB_H_INCLUDED
#define PB_QROMA_LIGHTS_COMMANDS_PB_H_INCLUDED
#include <pb.h>
#include "qroma-lights-types.pb.h"

#if PB_PROTO_HEADER_VERSION != 40
#error Regenerate this file with the current version of nanopb generator.
#endif

/* Enum definitions */
/* not sure how I feel about this, but let's try it out, at least */
typedef enum _NoArgCommands_QromaLightsDeviceCommand {
    NoArgCommands_QromaLightsDeviceCommand_NacQlc_NotSet = 0,
    NoArgCommands_QromaLightsDeviceCommand_NacQlc_UseCurrentSetupOnStartup = 1,
    NoArgCommands_QromaLightsDeviceCommand_NacQlc_RestartQromaDevice = 2,
    NoArgCommands_QromaLightsDeviceCommand_NacQlc_FactoryResetQromaDevice = 3,
    NoArgCommands_QromaLightsDeviceCommand_NacQlc_RequestQromaLightsConfig = 4
} NoArgCommands_QromaLightsDeviceCommand;

/* Struct definitions */
typedef struct _SaveQromaStrip_CurrentState {
    QromaStrip_WS2812FX_StripIndex stripIndex;
} SaveQromaStrip_CurrentState;

typedef struct _QromaStripCommand {
    QromaStrip_WS2812FX_StripIndex stripIndex;
    pb_size_t which_command;
    union {
        uint32_t setQromaStripBrightness; /* 0-255 */
        char setQromaStripName[20];
        QromaStrip_WS2812FX_Animation setQromaStripAnimation;
        QromaStrip_WS2812FX_IoSettings setQromaStripIoSettings;
    } command;
} QromaStripCommand;

typedef struct _SetQromaDeviceName {
    char name[30];
} SetQromaDeviceName;

typedef struct _QromaLightsDeviceCommand {
    pb_size_t which_command;
    union {
        NoArgCommands_QromaLightsDeviceCommand noArgCommand;
        SetQromaDeviceName setQromaDeviceName;
        QromaStripCommand qromaStripCommand;
    } command;
} QromaLightsDeviceCommand;

typedef struct _QromaLightsDeviceError {
    char message[100];
} QromaLightsDeviceError;

typedef struct _QromaLightsDeviceConfigUpdated {
    uint32_t updateTime;
    bool has_updateConfig;
    QromaLightsDeviceConfig updateConfig;
    char updateDescription[100];
} QromaLightsDeviceConfigUpdated;

typedef struct _QromaLightsResponse {
    pb_size_t which_response;
    union {
        QromaLightsDeviceConfig qromaLightsConfigResponse;
        QromaLightsDeviceError error;
        QromaLightsDeviceConfigUpdated configUpdatedResponse;
    } response;
} QromaLightsResponse;


#ifdef __cplusplus
extern "C" {
#endif

/* Helper constants for enums */
#define _NoArgCommands_QromaLightsDeviceCommand_MIN NoArgCommands_QromaLightsDeviceCommand_NacQlc_NotSet
#define _NoArgCommands_QromaLightsDeviceCommand_MAX NoArgCommands_QromaLightsDeviceCommand_NacQlc_RequestQromaLightsConfig
#define _NoArgCommands_QromaLightsDeviceCommand_ARRAYSIZE ((NoArgCommands_QromaLightsDeviceCommand)(NoArgCommands_QromaLightsDeviceCommand_NacQlc_RequestQromaLightsConfig+1))

#define SaveQromaStrip_CurrentState_stripIndex_ENUMTYPE QromaStrip_WS2812FX_StripIndex

#define QromaStripCommand_stripIndex_ENUMTYPE QromaStrip_WS2812FX_StripIndex


#define QromaLightsDeviceCommand_command_noArgCommand_ENUMTYPE NoArgCommands_QromaLightsDeviceCommand





/* Initializer values for message structs */
#define SaveQromaStrip_CurrentState_init_default {_QromaStrip_WS2812FX_StripIndex_MIN}
#define QromaStripCommand_init_default           {_QromaStrip_WS2812FX_StripIndex_MIN, 0, {0}}
#define SetQromaDeviceName_init_default          {""}
#define QromaLightsDeviceCommand_init_default    {0, {_NoArgCommands_QromaLightsDeviceCommand_MIN}}
#define QromaLightsDeviceError_init_default      {""}
#define QromaLightsDeviceConfigUpdated_init_default {0, false, QromaLightsDeviceConfig_init_default, ""}
#define QromaLightsResponse_init_default         {0, {QromaLightsDeviceConfig_init_default}}
#define SaveQromaStrip_CurrentState_init_zero    {_QromaStrip_WS2812FX_StripIndex_MIN}
#define QromaStripCommand_init_zero              {_QromaStrip_WS2812FX_StripIndex_MIN, 0, {0}}
#define SetQromaDeviceName_init_zero             {""}
#define QromaLightsDeviceCommand_init_zero       {0, {_NoArgCommands_QromaLightsDeviceCommand_MIN}}
#define QromaLightsDeviceError_init_zero         {""}
#define QromaLightsDeviceConfigUpdated_init_zero {0, false, QromaLightsDeviceConfig_init_zero, ""}
#define QromaLightsResponse_init_zero            {0, {QromaLightsDeviceConfig_init_zero}}

/* Field tags (for use in manual encoding/decoding) */
#define SaveQromaStrip_CurrentState_stripIndex_tag 1
#define QromaStripCommand_stripIndex_tag         1
#define QromaStripCommand_setQromaStripBrightness_tag 10
#define QromaStripCommand_setQromaStripName_tag  11
#define QromaStripCommand_setQromaStripAnimation_tag 12
#define QromaStripCommand_setQromaStripIoSettings_tag 13
#define SetQromaDeviceName_name_tag              1
#define QromaLightsDeviceCommand_noArgCommand_tag 1
#define QromaLightsDeviceCommand_setQromaDeviceName_tag 2
#define QromaLightsDeviceCommand_qromaStripCommand_tag 3
#define QromaLightsDeviceError_message_tag       1
#define QromaLightsDeviceConfigUpdated_updateTime_tag 1
#define QromaLightsDeviceConfigUpdated_updateConfig_tag 2
#define QromaLightsDeviceConfigUpdated_updateDescription_tag 3
#define QromaLightsResponse_qromaLightsConfigResponse_tag 1
#define QromaLightsResponse_error_tag            2
#define QromaLightsResponse_configUpdatedResponse_tag 3

/* Struct field encoding specification for nanopb */
#define SaveQromaStrip_CurrentState_FIELDLIST(X, a) \
X(a, STATIC,   SINGULAR, UENUM,    stripIndex,        1)
#define SaveQromaStrip_CurrentState_CALLBACK NULL
#define SaveQromaStrip_CurrentState_DEFAULT NULL

#define QromaStripCommand_FIELDLIST(X, a) \
X(a, STATIC,   SINGULAR, UENUM,    stripIndex,        1) \
X(a, STATIC,   ONEOF,    UINT32,   (command,setQromaStripBrightness,command.setQromaStripBrightness),  10) \
X(a, STATIC,   ONEOF,    STRING,   (command,setQromaStripName,command.setQromaStripName),  11) \
X(a, STATIC,   ONEOF,    MESSAGE,  (command,setQromaStripAnimation,command.setQromaStripAnimation),  12) \
X(a, STATIC,   ONEOF,    MESSAGE,  (command,setQromaStripIoSettings,command.setQromaStripIoSettings),  13)
#define QromaStripCommand_CALLBACK NULL
#define QromaStripCommand_DEFAULT NULL
#define QromaStripCommand_command_setQromaStripAnimation_MSGTYPE QromaStrip_WS2812FX_Animation
#define QromaStripCommand_command_setQromaStripIoSettings_MSGTYPE QromaStrip_WS2812FX_IoSettings

#define SetQromaDeviceName_FIELDLIST(X, a) \
X(a, STATIC,   SINGULAR, STRING,   name,              1)
#define SetQromaDeviceName_CALLBACK NULL
#define SetQromaDeviceName_DEFAULT NULL

#define QromaLightsDeviceCommand_FIELDLIST(X, a) \
X(a, STATIC,   ONEOF,    UENUM,    (command,noArgCommand,command.noArgCommand),   1) \
X(a, STATIC,   ONEOF,    MESSAGE,  (command,setQromaDeviceName,command.setQromaDeviceName),   2) \
X(a, STATIC,   ONEOF,    MESSAGE,  (command,qromaStripCommand,command.qromaStripCommand),   3)
#define QromaLightsDeviceCommand_CALLBACK NULL
#define QromaLightsDeviceCommand_DEFAULT NULL
#define QromaLightsDeviceCommand_command_setQromaDeviceName_MSGTYPE SetQromaDeviceName
#define QromaLightsDeviceCommand_command_qromaStripCommand_MSGTYPE QromaStripCommand

#define QromaLightsDeviceError_FIELDLIST(X, a) \
X(a, STATIC,   SINGULAR, STRING,   message,           1)
#define QromaLightsDeviceError_CALLBACK NULL
#define QromaLightsDeviceError_DEFAULT NULL

#define QromaLightsDeviceConfigUpdated_FIELDLIST(X, a) \
X(a, STATIC,   SINGULAR, UINT32,   updateTime,        1) \
X(a, STATIC,   OPTIONAL, MESSAGE,  updateConfig,      2) \
X(a, STATIC,   SINGULAR, STRING,   updateDescription,   3)
#define QromaLightsDeviceConfigUpdated_CALLBACK NULL
#define QromaLightsDeviceConfigUpdated_DEFAULT NULL
#define QromaLightsDeviceConfigUpdated_updateConfig_MSGTYPE QromaLightsDeviceConfig

#define QromaLightsResponse_FIELDLIST(X, a) \
X(a, STATIC,   ONEOF,    MESSAGE,  (response,qromaLightsConfigResponse,response.qromaLightsConfigResponse),   1) \
X(a, STATIC,   ONEOF,    MESSAGE,  (response,error,response.error),   2) \
X(a, STATIC,   ONEOF,    MESSAGE,  (response,configUpdatedResponse,response.configUpdatedResponse),   3)
#define QromaLightsResponse_CALLBACK NULL
#define QromaLightsResponse_DEFAULT NULL
#define QromaLightsResponse_response_qromaLightsConfigResponse_MSGTYPE QromaLightsDeviceConfig
#define QromaLightsResponse_response_error_MSGTYPE QromaLightsDeviceError
#define QromaLightsResponse_response_configUpdatedResponse_MSGTYPE QromaLightsDeviceConfigUpdated

extern const pb_msgdesc_t SaveQromaStrip_CurrentState_msg;
extern const pb_msgdesc_t QromaStripCommand_msg;
extern const pb_msgdesc_t SetQromaDeviceName_msg;
extern const pb_msgdesc_t QromaLightsDeviceCommand_msg;
extern const pb_msgdesc_t QromaLightsDeviceError_msg;
extern const pb_msgdesc_t QromaLightsDeviceConfigUpdated_msg;
extern const pb_msgdesc_t QromaLightsResponse_msg;

/* Defines for backwards compatibility with code written before nanopb-0.4.0 */
#define SaveQromaStrip_CurrentState_fields &SaveQromaStrip_CurrentState_msg
#define QromaStripCommand_fields &QromaStripCommand_msg
#define SetQromaDeviceName_fields &SetQromaDeviceName_msg
#define QromaLightsDeviceCommand_fields &QromaLightsDeviceCommand_msg
#define QromaLightsDeviceError_fields &QromaLightsDeviceError_msg
#define QromaLightsDeviceConfigUpdated_fields &QromaLightsDeviceConfigUpdated_msg
#define QromaLightsResponse_fields &QromaLightsResponse_msg

/* Maximum encoded size of messages (where known) */
#define QROMA_LIGHTS_COMMANDS_PB_H_MAX_SIZE      QromaLightsResponse_size
#define QromaLightsDeviceCommand_size            82
#define QromaLightsDeviceConfigUpdated_size      423
#define QromaLightsDeviceError_size              101
#define QromaLightsResponse_size                 426
#define QromaStripCommand_size                   80
#define SaveQromaStrip_CurrentState_size         2
#define SetQromaDeviceName_size                  31

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
