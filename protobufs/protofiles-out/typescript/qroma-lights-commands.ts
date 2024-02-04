// @generated by protobuf-ts 2.9.3 with parameter use_proto_field_name,generate_dependencies
// @generated from protobuf file "qroma-lights-commands.proto" (syntax proto3)
// tslint:disable
import type { BinaryWriteOptions } from "@protobuf-ts/runtime";
import type { IBinaryWriter } from "@protobuf-ts/runtime";
import { WireType } from "@protobuf-ts/runtime";
import type { BinaryReadOptions } from "@protobuf-ts/runtime";
import type { IBinaryReader } from "@protobuf-ts/runtime";
import { UnknownFieldHandler } from "@protobuf-ts/runtime";
import type { PartialMessage } from "@protobuf-ts/runtime";
import { reflectionMergePartial } from "@protobuf-ts/runtime";
import { MessageType } from "@protobuf-ts/runtime";
import { QromaLightsDeviceConfig } from "./qroma-lights-types";
import { QromaStrip_WS2812FX_IoSettings } from "./qroma-lights-types";
import { QromaStrip_WS2812FX_Animation } from "./qroma-lights-types";
import { QromaStrip_WS2812FX_StripIndex } from "./qroma-lights-types";
/**
 * @generated from protobuf message SaveQromaStrip_CurrentState
 */
export interface SaveQromaStrip_CurrentState {
    /**
     * @generated from protobuf field: QromaStrip_WS2812FX_StripIndex stripIndex = 1;
     */
    stripIndex: QromaStrip_WS2812FX_StripIndex;
}
/**
 * @generated from protobuf message QromaStripCommand
 */
export interface QromaStripCommand {
    /**
     * @generated from protobuf field: QromaStrip_WS2812FX_StripIndex stripIndex = 1;
     */
    stripIndex: QromaStrip_WS2812FX_StripIndex;
    /**
     * @generated from protobuf oneof: command
     */
    command: {
        oneofKind: "setQromaStripBrightness";
        /**
         * @generated from protobuf field: uint32 setQromaStripBrightness = 10;
         */
        setQromaStripBrightness: number; // 0-255
    } | {
        oneofKind: "setQromaStripAnimation";
        /**
         * @generated from protobuf field: QromaStrip_WS2812FX_Animation setQromaStripAnimation = 11;
         */
        setQromaStripAnimation: QromaStrip_WS2812FX_Animation;
    } | {
        oneofKind: "setQromaStripIoSettings";
        /**
         * @generated from protobuf field: QromaStrip_WS2812FX_IoSettings setQromaStripIoSettings = 12;
         */
        setQromaStripIoSettings: QromaStrip_WS2812FX_IoSettings;
    } | {
        oneofKind: undefined;
    };
}
/**
 * @generated from protobuf message SetQromaDeviceName
 */
export interface SetQromaDeviceName {
    /**
     * @generated from protobuf field: string name = 1;
     */
    name: string;
}
/**
 * @generated from protobuf message QromaLightsDeviceCommand
 */
export interface QromaLightsDeviceCommand {
    /**
     * @generated from protobuf oneof: command
     */
    command: {
        oneofKind: "noArgCommand";
        /**
         * @generated from protobuf field: NoArgCommands_QromaLightsDeviceCommand noArgCommand = 1;
         */
        noArgCommand: NoArgCommands_QromaLightsDeviceCommand;
    } | {
        oneofKind: "setQromaDeviceName";
        /**
         * @generated from protobuf field: SetQromaDeviceName setQromaDeviceName = 2;
         */
        setQromaDeviceName: SetQromaDeviceName;
    } | {
        oneofKind: "qromaStripCommand";
        /**
         * @generated from protobuf field: QromaStripCommand qromaStripCommand = 3;
         */
        qromaStripCommand: QromaStripCommand;
    } | {
        oneofKind: undefined;
    };
}
/**
 * @generated from protobuf message QromaLightsDeviceError
 */
export interface QromaLightsDeviceError {
    /**
     * @generated from protobuf field: string message = 1;
     */
    message: string;
}
/**
 * @generated from protobuf message QromaLightsResponse
 */
export interface QromaLightsResponse {
    /**
     * @generated from protobuf oneof: response
     */
    response: {
        oneofKind: "qromaLightsConfigResponse";
        /**
         * @generated from protobuf field: QromaLightsDeviceConfig qromaLightsConfigResponse = 1;
         */
        qromaLightsConfigResponse: QromaLightsDeviceConfig;
    } | {
        oneofKind: "error";
        /**
         * @generated from protobuf field: QromaLightsDeviceError error = 2;
         */
        error: QromaLightsDeviceError;
    } | {
        oneofKind: undefined;
    };
}
/**
 * not sure how I feel about this, but let's try it out, at least
 *
 * @generated from protobuf enum NoArgCommands_QromaLightsDeviceCommand
 */
export enum NoArgCommands_QromaLightsDeviceCommand {
    /**
     * @generated from protobuf enum value: NacQlc_NotSet = 0;
     */
    NacQlc_NotSet = 0,
    /**
     * @generated from protobuf enum value: NacQlc_UseCurrentSetupOnStartup = 1;
     */
    NacQlc_UseCurrentSetupOnStartup = 1,
    /**
     * @generated from protobuf enum value: NacQlc_RestartQromaDevice = 2;
     */
    NacQlc_RestartQromaDevice = 2,
    /**
     * @generated from protobuf enum value: NacQlc_FactoryResetQromaDevice = 3;
     */
    NacQlc_FactoryResetQromaDevice = 3,
    /**
     * @generated from protobuf enum value: NacQlc_RequestQromaLightsConfig = 4;
     */
    NacQlc_RequestQromaLightsConfig = 4
}
// @generated message type with reflection information, may provide speed optimized methods
class SaveQromaStrip_CurrentState$Type extends MessageType<SaveQromaStrip_CurrentState> {
    constructor() {
        super("SaveQromaStrip_CurrentState", [
            { no: 1, name: "stripIndex", kind: "enum", T: () => ["QromaStrip_WS2812FX_StripIndex", QromaStrip_WS2812FX_StripIndex] }
        ]);
    }
    create(value?: PartialMessage<SaveQromaStrip_CurrentState>): SaveQromaStrip_CurrentState {
        const message = globalThis.Object.create((this.messagePrototype!));
        message.stripIndex = 0;
        if (value !== undefined)
            reflectionMergePartial<SaveQromaStrip_CurrentState>(this, message, value);
        return message;
    }
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: SaveQromaStrip_CurrentState): SaveQromaStrip_CurrentState {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* QromaStrip_WS2812FX_StripIndex stripIndex */ 1:
                    message.stripIndex = reader.int32();
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message: SaveQromaStrip_CurrentState, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter {
        /* QromaStrip_WS2812FX_StripIndex stripIndex = 1; */
        if (message.stripIndex !== 0)
            writer.tag(1, WireType.Varint).int32(message.stripIndex);
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message SaveQromaStrip_CurrentState
 */
export const SaveQromaStrip_CurrentState = new SaveQromaStrip_CurrentState$Type();
// @generated message type with reflection information, may provide speed optimized methods
class QromaStripCommand$Type extends MessageType<QromaStripCommand> {
    constructor() {
        super("QromaStripCommand", [
            { no: 1, name: "stripIndex", kind: "enum", T: () => ["QromaStrip_WS2812FX_StripIndex", QromaStrip_WS2812FX_StripIndex] },
            { no: 10, name: "setQromaStripBrightness", kind: "scalar", oneof: "command", T: 13 /*ScalarType.UINT32*/ },
            { no: 11, name: "setQromaStripAnimation", kind: "message", oneof: "command", T: () => QromaStrip_WS2812FX_Animation },
            { no: 12, name: "setQromaStripIoSettings", kind: "message", oneof: "command", T: () => QromaStrip_WS2812FX_IoSettings }
        ]);
    }
    create(value?: PartialMessage<QromaStripCommand>): QromaStripCommand {
        const message = globalThis.Object.create((this.messagePrototype!));
        message.stripIndex = 0;
        message.command = { oneofKind: undefined };
        if (value !== undefined)
            reflectionMergePartial<QromaStripCommand>(this, message, value);
        return message;
    }
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: QromaStripCommand): QromaStripCommand {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* QromaStrip_WS2812FX_StripIndex stripIndex */ 1:
                    message.stripIndex = reader.int32();
                    break;
                case /* uint32 setQromaStripBrightness */ 10:
                    message.command = {
                        oneofKind: "setQromaStripBrightness",
                        setQromaStripBrightness: reader.uint32()
                    };
                    break;
                case /* QromaStrip_WS2812FX_Animation setQromaStripAnimation */ 11:
                    message.command = {
                        oneofKind: "setQromaStripAnimation",
                        setQromaStripAnimation: QromaStrip_WS2812FX_Animation.internalBinaryRead(reader, reader.uint32(), options, (message.command as any).setQromaStripAnimation)
                    };
                    break;
                case /* QromaStrip_WS2812FX_IoSettings setQromaStripIoSettings */ 12:
                    message.command = {
                        oneofKind: "setQromaStripIoSettings",
                        setQromaStripIoSettings: QromaStrip_WS2812FX_IoSettings.internalBinaryRead(reader, reader.uint32(), options, (message.command as any).setQromaStripIoSettings)
                    };
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message: QromaStripCommand, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter {
        /* QromaStrip_WS2812FX_StripIndex stripIndex = 1; */
        if (message.stripIndex !== 0)
            writer.tag(1, WireType.Varint).int32(message.stripIndex);
        /* uint32 setQromaStripBrightness = 10; */
        if (message.command.oneofKind === "setQromaStripBrightness")
            writer.tag(10, WireType.Varint).uint32(message.command.setQromaStripBrightness);
        /* QromaStrip_WS2812FX_Animation setQromaStripAnimation = 11; */
        if (message.command.oneofKind === "setQromaStripAnimation")
            QromaStrip_WS2812FX_Animation.internalBinaryWrite(message.command.setQromaStripAnimation, writer.tag(11, WireType.LengthDelimited).fork(), options).join();
        /* QromaStrip_WS2812FX_IoSettings setQromaStripIoSettings = 12; */
        if (message.command.oneofKind === "setQromaStripIoSettings")
            QromaStrip_WS2812FX_IoSettings.internalBinaryWrite(message.command.setQromaStripIoSettings, writer.tag(12, WireType.LengthDelimited).fork(), options).join();
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message QromaStripCommand
 */
export const QromaStripCommand = new QromaStripCommand$Type();
// @generated message type with reflection information, may provide speed optimized methods
class SetQromaDeviceName$Type extends MessageType<SetQromaDeviceName> {
    constructor() {
        super("SetQromaDeviceName", [
            { no: 1, name: "name", kind: "scalar", T: 9 /*ScalarType.STRING*/ }
        ]);
    }
    create(value?: PartialMessage<SetQromaDeviceName>): SetQromaDeviceName {
        const message = globalThis.Object.create((this.messagePrototype!));
        message.name = "";
        if (value !== undefined)
            reflectionMergePartial<SetQromaDeviceName>(this, message, value);
        return message;
    }
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: SetQromaDeviceName): SetQromaDeviceName {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* string name */ 1:
                    message.name = reader.string();
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message: SetQromaDeviceName, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter {
        /* string name = 1; */
        if (message.name !== "")
            writer.tag(1, WireType.LengthDelimited).string(message.name);
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message SetQromaDeviceName
 */
export const SetQromaDeviceName = new SetQromaDeviceName$Type();
// @generated message type with reflection information, may provide speed optimized methods
class QromaLightsDeviceCommand$Type extends MessageType<QromaLightsDeviceCommand> {
    constructor() {
        super("QromaLightsDeviceCommand", [
            { no: 1, name: "noArgCommand", kind: "enum", oneof: "command", T: () => ["NoArgCommands_QromaLightsDeviceCommand", NoArgCommands_QromaLightsDeviceCommand] },
            { no: 2, name: "setQromaDeviceName", kind: "message", oneof: "command", T: () => SetQromaDeviceName },
            { no: 3, name: "qromaStripCommand", kind: "message", oneof: "command", T: () => QromaStripCommand }
        ]);
    }
    create(value?: PartialMessage<QromaLightsDeviceCommand>): QromaLightsDeviceCommand {
        const message = globalThis.Object.create((this.messagePrototype!));
        message.command = { oneofKind: undefined };
        if (value !== undefined)
            reflectionMergePartial<QromaLightsDeviceCommand>(this, message, value);
        return message;
    }
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: QromaLightsDeviceCommand): QromaLightsDeviceCommand {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* NoArgCommands_QromaLightsDeviceCommand noArgCommand */ 1:
                    message.command = {
                        oneofKind: "noArgCommand",
                        noArgCommand: reader.int32()
                    };
                    break;
                case /* SetQromaDeviceName setQromaDeviceName */ 2:
                    message.command = {
                        oneofKind: "setQromaDeviceName",
                        setQromaDeviceName: SetQromaDeviceName.internalBinaryRead(reader, reader.uint32(), options, (message.command as any).setQromaDeviceName)
                    };
                    break;
                case /* QromaStripCommand qromaStripCommand */ 3:
                    message.command = {
                        oneofKind: "qromaStripCommand",
                        qromaStripCommand: QromaStripCommand.internalBinaryRead(reader, reader.uint32(), options, (message.command as any).qromaStripCommand)
                    };
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message: QromaLightsDeviceCommand, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter {
        /* NoArgCommands_QromaLightsDeviceCommand noArgCommand = 1; */
        if (message.command.oneofKind === "noArgCommand")
            writer.tag(1, WireType.Varint).int32(message.command.noArgCommand);
        /* SetQromaDeviceName setQromaDeviceName = 2; */
        if (message.command.oneofKind === "setQromaDeviceName")
            SetQromaDeviceName.internalBinaryWrite(message.command.setQromaDeviceName, writer.tag(2, WireType.LengthDelimited).fork(), options).join();
        /* QromaStripCommand qromaStripCommand = 3; */
        if (message.command.oneofKind === "qromaStripCommand")
            QromaStripCommand.internalBinaryWrite(message.command.qromaStripCommand, writer.tag(3, WireType.LengthDelimited).fork(), options).join();
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message QromaLightsDeviceCommand
 */
export const QromaLightsDeviceCommand = new QromaLightsDeviceCommand$Type();
// @generated message type with reflection information, may provide speed optimized methods
class QromaLightsDeviceError$Type extends MessageType<QromaLightsDeviceError> {
    constructor() {
        super("QromaLightsDeviceError", [
            { no: 1, name: "message", kind: "scalar", T: 9 /*ScalarType.STRING*/ }
        ]);
    }
    create(value?: PartialMessage<QromaLightsDeviceError>): QromaLightsDeviceError {
        const message = globalThis.Object.create((this.messagePrototype!));
        message.message = "";
        if (value !== undefined)
            reflectionMergePartial<QromaLightsDeviceError>(this, message, value);
        return message;
    }
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: QromaLightsDeviceError): QromaLightsDeviceError {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* string message */ 1:
                    message.message = reader.string();
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message: QromaLightsDeviceError, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter {
        /* string message = 1; */
        if (message.message !== "")
            writer.tag(1, WireType.LengthDelimited).string(message.message);
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message QromaLightsDeviceError
 */
export const QromaLightsDeviceError = new QromaLightsDeviceError$Type();
// @generated message type with reflection information, may provide speed optimized methods
class QromaLightsResponse$Type extends MessageType<QromaLightsResponse> {
    constructor() {
        super("QromaLightsResponse", [
            { no: 1, name: "qromaLightsConfigResponse", kind: "message", oneof: "response", T: () => QromaLightsDeviceConfig },
            { no: 2, name: "error", kind: "message", oneof: "response", T: () => QromaLightsDeviceError }
        ]);
    }
    create(value?: PartialMessage<QromaLightsResponse>): QromaLightsResponse {
        const message = globalThis.Object.create((this.messagePrototype!));
        message.response = { oneofKind: undefined };
        if (value !== undefined)
            reflectionMergePartial<QromaLightsResponse>(this, message, value);
        return message;
    }
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: QromaLightsResponse): QromaLightsResponse {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* QromaLightsDeviceConfig qromaLightsConfigResponse */ 1:
                    message.response = {
                        oneofKind: "qromaLightsConfigResponse",
                        qromaLightsConfigResponse: QromaLightsDeviceConfig.internalBinaryRead(reader, reader.uint32(), options, (message.response as any).qromaLightsConfigResponse)
                    };
                    break;
                case /* QromaLightsDeviceError error */ 2:
                    message.response = {
                        oneofKind: "error",
                        error: QromaLightsDeviceError.internalBinaryRead(reader, reader.uint32(), options, (message.response as any).error)
                    };
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message: QromaLightsResponse, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter {
        /* QromaLightsDeviceConfig qromaLightsConfigResponse = 1; */
        if (message.response.oneofKind === "qromaLightsConfigResponse")
            QromaLightsDeviceConfig.internalBinaryWrite(message.response.qromaLightsConfigResponse, writer.tag(1, WireType.LengthDelimited).fork(), options).join();
        /* QromaLightsDeviceError error = 2; */
        if (message.response.oneofKind === "error")
            QromaLightsDeviceError.internalBinaryWrite(message.response.error, writer.tag(2, WireType.LengthDelimited).fork(), options).join();
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message QromaLightsResponse
 */
export const QromaLightsResponse = new QromaLightsResponse$Type();
