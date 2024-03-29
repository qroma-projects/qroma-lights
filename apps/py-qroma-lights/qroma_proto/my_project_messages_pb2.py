# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: my-project-messages.proto
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
from google.protobuf.internal import builder as _builder
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


import qroma_lights_commands_pb2 as qroma__lights__commands__pb2


DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n\x19my-project-messages.proto\x1a\x1bqroma-lights-commands.proto\"!\n\x11HelloQromaRequest\x12\x0c\n\x04name\x18\x01 \x01(\t\"M\n\x12HelloQromaResponse\x12\x10\n\x08response\x18\x01 \x01(\t\x12\x11\n\tcallCount\x18\x02 \x01(\r\x12\x12\n\nnameLength\x18\x03 \x01(\r\"T\n\x15\x46wUpdateConfiguration\x12\x1f\n\nupdateType\x18\x01 \x01(\x0e\x32\x0b.UpdateType\x12\x1a\n\x12updateIntervalInMs\x18\x02 \x01(\r\"h\n\x16SetUpdateConfiguration\x12\x33\n\x13updateConfiguration\x18\x01 \x01(\x0b\x32\x16.FwUpdateConfiguration\x12\x19\n\x11saveConfiguration\x18\x02 \x01(\x08\"f\n\x1eSetUpdateConfigurationResponse\x12\x0f\n\x07success\x18\x01 \x01(\x08\x12\x33\n\x13updateConfiguration\x18\x02 \x01(\x0b\x32\x16.FwUpdateConfiguration\"&\n\x14UptimeUpdateResponse\x12\x0e\n\x06uptime\x18\x01 \x01(\r\"<\n\x1fProgressIndicatorUpdateResponse\x12\x19\n\x11progressIndicator\x18\x01 \x01(\t\"\x9e\x01\n\x0eUpdateResponse\x12\x35\n\x14uptimeUpdateResponse\x18\x01 \x01(\x0b\x32\x15.UptimeUpdateResponseH\x00\x12K\n\x1fprogressIndicatorUpdateResponse\x18\x02 \x01(\x0b\x32 .ProgressIndicatorUpdateResponseH\x00\x42\x08\n\x06update\"\x1d\n\x0bPingRequest\x12\x0e\n\x06pingId\x18\x01 \x01(\r\".\n\x0cPingResponse\x12\x0e\n\x06pingId\x18\x01 \x01(\r\x12\x0e\n\x06uptime\x18\x02 \x01(\r\"\'\n\x10MyProjectDetails\x12\x13\n\x0bprojectName\x18\x01 \x01(\t\"H\n\x0f\x46irmwareDetails\x12\x0f\n\x07version\x18\x01 \x01(\t\x12\x11\n\tbuildTime\x18\x02 \x01(\t\x12\x11\n\tboardName\x18\x03 \x01(\t\",\n\x16GetBoardDetailsRequest\x12\x12\n\nignoreThis\x18\x01 \x01(\x08\"o\n\x17GetBoardDetailsResponse\x12)\n\x0eprojectDetails\x18\x01 \x01(\x0b\x32\x11.MyProjectDetails\x12)\n\x0f\x66irmwareDetails\x18\x02 \x01(\x0b\x32\x10.FirmwareDetails\"E\n\x19SetBoardLightColorRequest\x12\x0b\n\x03red\x18\x01 \x01(\r\x12\r\n\x05green\x18\x02 \x01(\r\x12\x0c\n\x04\x62lue\x18\x03 \x01(\r\">\n\x1aSetBoardLightColorResponse\x12\x0f\n\x07success\x18\x01 \x01(\x08\x12\x0f\n\x07message\x18\x02 \x01(\t\"f\n\x1eLoadBoardConfigurationResponse\x12\x0f\n\x07success\x18\x01 \x01(\x08\x12\x33\n\x13loadedConfiguration\x18\x02 \x01(\x0b\x32\x16.FwUpdateConfiguration\")\n\x16InvalidCommandResponse\x12\x0f\n\x07message\x18\x01 \x01(\t\"\x8b\x03\n\x10MyProjectCommand\x12&\n\x0cnoArgCommand\x18\x01 \x01(\x0e\x32\x0e.NoArgCommandsH\x00\x12/\n\x11helloQromaRequest\x18\x02 \x01(\x0b\x32\x12.HelloQromaRequestH\x00\x12\x39\n\x16setUpdateConfiguration\x18\x04 \x01(\x0b\x32\x17.SetUpdateConfigurationH\x00\x12#\n\x0bpingRequest\x18\x05 \x01(\x0b\x32\x0c.PingRequestH\x00\x12\x39\n\x16getBoardDetailsRequest\x18\x06 \x01(\x0b\x32\x17.GetBoardDetailsRequestH\x00\x12?\n\x19setBoardLightColorRequest\x18\x07 \x01(\x0b\x32\x1a.SetBoardLightColorRequestH\x00\x12\x37\n\x12qromaLightsCommand\x18\x08 \x01(\x0b\x32\x19.QromaLightsDeviceCommandH\x00\x42\t\n\x07\x63ommand\"\xaa\x04\n\x11MyProjectResponse\x12\x39\n\x16invalidCommandResponse\x18\x01 \x01(\x0b\x32\x17.InvalidCommandResponseH\x00\x12\x31\n\x12helloQromaResponse\x18\x02 \x01(\x0b\x32\x13.HelloQromaResponseH\x00\x12I\n\x1esetUpdateConfigurationResponse\x18\x04 \x01(\x0b\x32\x1f.SetUpdateConfigurationResponseH\x00\x12%\n\x0cpingResponse\x18\x05 \x01(\x0b\x32\r.PingResponseH\x00\x12)\n\x0eupdateResponse\x18\x06 \x01(\x0b\x32\x0f.UpdateResponseH\x00\x12\x41\n\x1asetBoardLightColorResponse\x18\x07 \x01(\x0b\x32\x1b.SetBoardLightColorResponseH\x00\x12;\n\x17getBoardDetailsResponse\x18\x08 \x01(\x0b\x32\x18.GetBoardDetailsResponseH\x00\x12I\n\x1eloadBoardConfigurationResponse\x18\t \x01(\x0b\x32\x1f.LoadBoardConfigurationResponseH\x00\x12\x33\n\x13qromaLightsResponse\x18\n \x01(\x0b\x32\x14.QromaLightsResponseH\x00\x42\n\n\x08response*s\n\nUpdateType\x12\x15\n\x11UpdateType_NotSet\x10\x00\x12\x13\n\x0fUpdateType_None\x10\x01\x12\x17\n\x13UpdateType_Interval\x10\x02\x12 \n\x1cUpdateType_ProgressIndicator\x10\x03*\x98\x01\n\rNoArgCommands\x12\x0e\n\nNac_NotSet\x10\x00\x12\x1e\n\x1aNac_GetBoardDetailsRequest\x10\x01\x12\x1e\n\x1aNac_LoadBoardConfiguration\x10\x02\x12\x15\n\x11Nac_RestartDevice\x10\x03\x12 \n\x1cNac_RequestQromaLightsConfig\x10\x04\x62\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'my_project_messages_pb2', _globals)
if _descriptor._USE_C_DESCRIPTORS == False:
  DESCRIPTOR._options = None
  _globals['_UPDATETYPE']._serialized_start=2321
  _globals['_UPDATETYPE']._serialized_end=2436
  _globals['_NOARGCOMMANDS']._serialized_start=2439
  _globals['_NOARGCOMMANDS']._serialized_end=2591
  _globals['_HELLOQROMAREQUEST']._serialized_start=58
  _globals['_HELLOQROMAREQUEST']._serialized_end=91
  _globals['_HELLOQROMARESPONSE']._serialized_start=93
  _globals['_HELLOQROMARESPONSE']._serialized_end=170
  _globals['_FWUPDATECONFIGURATION']._serialized_start=172
  _globals['_FWUPDATECONFIGURATION']._serialized_end=256
  _globals['_SETUPDATECONFIGURATION']._serialized_start=258
  _globals['_SETUPDATECONFIGURATION']._serialized_end=362
  _globals['_SETUPDATECONFIGURATIONRESPONSE']._serialized_start=364
  _globals['_SETUPDATECONFIGURATIONRESPONSE']._serialized_end=466
  _globals['_UPTIMEUPDATERESPONSE']._serialized_start=468
  _globals['_UPTIMEUPDATERESPONSE']._serialized_end=506
  _globals['_PROGRESSINDICATORUPDATERESPONSE']._serialized_start=508
  _globals['_PROGRESSINDICATORUPDATERESPONSE']._serialized_end=568
  _globals['_UPDATERESPONSE']._serialized_start=571
  _globals['_UPDATERESPONSE']._serialized_end=729
  _globals['_PINGREQUEST']._serialized_start=731
  _globals['_PINGREQUEST']._serialized_end=760
  _globals['_PINGRESPONSE']._serialized_start=762
  _globals['_PINGRESPONSE']._serialized_end=808
  _globals['_MYPROJECTDETAILS']._serialized_start=810
  _globals['_MYPROJECTDETAILS']._serialized_end=849
  _globals['_FIRMWAREDETAILS']._serialized_start=851
  _globals['_FIRMWAREDETAILS']._serialized_end=923
  _globals['_GETBOARDDETAILSREQUEST']._serialized_start=925
  _globals['_GETBOARDDETAILSREQUEST']._serialized_end=969
  _globals['_GETBOARDDETAILSRESPONSE']._serialized_start=971
  _globals['_GETBOARDDETAILSRESPONSE']._serialized_end=1082
  _globals['_SETBOARDLIGHTCOLORREQUEST']._serialized_start=1084
  _globals['_SETBOARDLIGHTCOLORREQUEST']._serialized_end=1153
  _globals['_SETBOARDLIGHTCOLORRESPONSE']._serialized_start=1155
  _globals['_SETBOARDLIGHTCOLORRESPONSE']._serialized_end=1217
  _globals['_LOADBOARDCONFIGURATIONRESPONSE']._serialized_start=1219
  _globals['_LOADBOARDCONFIGURATIONRESPONSE']._serialized_end=1321
  _globals['_INVALIDCOMMANDRESPONSE']._serialized_start=1323
  _globals['_INVALIDCOMMANDRESPONSE']._serialized_end=1364
  _globals['_MYPROJECTCOMMAND']._serialized_start=1367
  _globals['_MYPROJECTCOMMAND']._serialized_end=1762
  _globals['_MYPROJECTRESPONSE']._serialized_start=1765
  _globals['_MYPROJECTRESPONSE']._serialized_end=2319
# @@protoc_insertion_point(module_scope)
