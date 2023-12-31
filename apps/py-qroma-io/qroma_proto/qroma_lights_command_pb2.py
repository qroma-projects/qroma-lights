# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: qroma-lights-command.proto
"""Generated protocol buffer code."""
from google.protobuf.internal import enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


import qroma_lights_types_pb2 as qroma__lights__types__pb2


DESCRIPTOR = _descriptor.FileDescriptor(
  name='qroma-lights-command.proto',
  package='',
  syntax='proto3',
  serialized_options=None,
  create_key=_descriptor._internal_create_key,
  serialized_pb=b'\n\x1aqroma-lights-command.proto\x1a\x18qroma-lights-types.proto\",\n\x1cQpmCommand_SetQromaStripName\x12\x0c\n\x04name\x18\x01 \x01(\t\"\'\n\x17SetQromaStripDeviceName\x12\x0c\n\x04name\x18\x01 \x01(\t\"-\n\x18UseCurrentSetupOnStartup\x12\x11\n\tdelayInMs\x18\x01 \x01(\r\"\x97\x01\n\x12QromaLightsCommand\x12\x39\n\x0cnoArgCommand\x18\x01 \x01(\x0e\x32!.NoArgCommands_QromaLightsCommandH\x00\x12;\n\x17setQromaStripDeviceName\x18\x02 \x01(\x0b\x32\x18.SetQromaStripDeviceNameH\x00\x42\t\n\x07\x63ommand\"Z\n\x13QromaLightsResponse\x12\x37\n\x19qromaLightsConfigResponse\x18\x01 \x01(\x0b\x32\x12.QromaLightsConfigH\x00\x42\n\n\x08response*\xc2\x01\n NoArgCommands_QromaLightsCommand\x12\x11\n\rNacQlc_NotSet\x10\x00\x12#\n\x1fNacQlc_UseCurrentSetupOnStartup\x10\x01\x12\x1d\n\x19NacQlc_RestartQromaDevice\x10\x02\x12\"\n\x1eNacQlc_FactoryResetQromaDevice\x10\x03\x12#\n\x1fNacQlc_RequestQromaLightsConfig\x10\x04\x62\x06proto3'
  ,
  dependencies=[qroma__lights__types__pb2.DESCRIPTOR,])

_NOARGCOMMANDS_QROMALIGHTSCOMMAND = _descriptor.EnumDescriptor(
  name='NoArgCommands_QromaLightsCommand',
  full_name='NoArgCommands_QromaLightsCommand',
  filename=None,
  file=DESCRIPTOR,
  create_key=_descriptor._internal_create_key,
  values=[
    _descriptor.EnumValueDescriptor(
      name='NacQlc_NotSet', index=0, number=0,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='NacQlc_UseCurrentSetupOnStartup', index=1, number=1,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='NacQlc_RestartQromaDevice', index=2, number=2,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='NacQlc_FactoryResetQromaDevice', index=3, number=3,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='NacQlc_RequestQromaLightsConfig', index=4, number=4,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
  ],
  containing_type=None,
  serialized_options=None,
  serialized_start=437,
  serialized_end=631,
)
_sym_db.RegisterEnumDescriptor(_NOARGCOMMANDS_QROMALIGHTSCOMMAND)

NoArgCommands_QromaLightsCommand = enum_type_wrapper.EnumTypeWrapper(_NOARGCOMMANDS_QROMALIGHTSCOMMAND)
NacQlc_NotSet = 0
NacQlc_UseCurrentSetupOnStartup = 1
NacQlc_RestartQromaDevice = 2
NacQlc_FactoryResetQromaDevice = 3
NacQlc_RequestQromaLightsConfig = 4



_QPMCOMMAND_SETQROMASTRIPNAME = _descriptor.Descriptor(
  name='QpmCommand_SetQromaStripName',
  full_name='QpmCommand_SetQromaStripName',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='name', full_name='QpmCommand_SetQromaStripName.name', index=0,
      number=1, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=56,
  serialized_end=100,
)


_SETQROMASTRIPDEVICENAME = _descriptor.Descriptor(
  name='SetQromaStripDeviceName',
  full_name='SetQromaStripDeviceName',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='name', full_name='SetQromaStripDeviceName.name', index=0,
      number=1, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=102,
  serialized_end=141,
)


_USECURRENTSETUPONSTARTUP = _descriptor.Descriptor(
  name='UseCurrentSetupOnStartup',
  full_name='UseCurrentSetupOnStartup',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='delayInMs', full_name='UseCurrentSetupOnStartup.delayInMs', index=0,
      number=1, type=13, cpp_type=3, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=143,
  serialized_end=188,
)


_QROMALIGHTSCOMMAND = _descriptor.Descriptor(
  name='QromaLightsCommand',
  full_name='QromaLightsCommand',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='noArgCommand', full_name='QromaLightsCommand.noArgCommand', index=0,
      number=1, type=14, cpp_type=8, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='setQromaStripDeviceName', full_name='QromaLightsCommand.setQromaStripDeviceName', index=1,
      number=2, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
    _descriptor.OneofDescriptor(
      name='command', full_name='QromaLightsCommand.command',
      index=0, containing_type=None,
      create_key=_descriptor._internal_create_key,
    fields=[]),
  ],
  serialized_start=191,
  serialized_end=342,
)


_QROMALIGHTSRESPONSE = _descriptor.Descriptor(
  name='QromaLightsResponse',
  full_name='QromaLightsResponse',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='qromaLightsConfigResponse', full_name='QromaLightsResponse.qromaLightsConfigResponse', index=0,
      number=1, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
    _descriptor.OneofDescriptor(
      name='response', full_name='QromaLightsResponse.response',
      index=0, containing_type=None,
      create_key=_descriptor._internal_create_key,
    fields=[]),
  ],
  serialized_start=344,
  serialized_end=434,
)

_QROMALIGHTSCOMMAND.fields_by_name['noArgCommand'].enum_type = _NOARGCOMMANDS_QROMALIGHTSCOMMAND
_QROMALIGHTSCOMMAND.fields_by_name['setQromaStripDeviceName'].message_type = _SETQROMASTRIPDEVICENAME
_QROMALIGHTSCOMMAND.oneofs_by_name['command'].fields.append(
  _QROMALIGHTSCOMMAND.fields_by_name['noArgCommand'])
_QROMALIGHTSCOMMAND.fields_by_name['noArgCommand'].containing_oneof = _QROMALIGHTSCOMMAND.oneofs_by_name['command']
_QROMALIGHTSCOMMAND.oneofs_by_name['command'].fields.append(
  _QROMALIGHTSCOMMAND.fields_by_name['setQromaStripDeviceName'])
_QROMALIGHTSCOMMAND.fields_by_name['setQromaStripDeviceName'].containing_oneof = _QROMALIGHTSCOMMAND.oneofs_by_name['command']
_QROMALIGHTSRESPONSE.fields_by_name['qromaLightsConfigResponse'].message_type = qroma__lights__types__pb2._QROMALIGHTSCONFIG
_QROMALIGHTSRESPONSE.oneofs_by_name['response'].fields.append(
  _QROMALIGHTSRESPONSE.fields_by_name['qromaLightsConfigResponse'])
_QROMALIGHTSRESPONSE.fields_by_name['qromaLightsConfigResponse'].containing_oneof = _QROMALIGHTSRESPONSE.oneofs_by_name['response']
DESCRIPTOR.message_types_by_name['QpmCommand_SetQromaStripName'] = _QPMCOMMAND_SETQROMASTRIPNAME
DESCRIPTOR.message_types_by_name['SetQromaStripDeviceName'] = _SETQROMASTRIPDEVICENAME
DESCRIPTOR.message_types_by_name['UseCurrentSetupOnStartup'] = _USECURRENTSETUPONSTARTUP
DESCRIPTOR.message_types_by_name['QromaLightsCommand'] = _QROMALIGHTSCOMMAND
DESCRIPTOR.message_types_by_name['QromaLightsResponse'] = _QROMALIGHTSRESPONSE
DESCRIPTOR.enum_types_by_name['NoArgCommands_QromaLightsCommand'] = _NOARGCOMMANDS_QROMALIGHTSCOMMAND
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

QpmCommand_SetQromaStripName = _reflection.GeneratedProtocolMessageType('QpmCommand_SetQromaStripName', (_message.Message,), {
  'DESCRIPTOR' : _QPMCOMMAND_SETQROMASTRIPNAME,
  '__module__' : 'qroma_lights_command_pb2'
  # @@protoc_insertion_point(class_scope:QpmCommand_SetQromaStripName)
  })
_sym_db.RegisterMessage(QpmCommand_SetQromaStripName)

SetQromaStripDeviceName = _reflection.GeneratedProtocolMessageType('SetQromaStripDeviceName', (_message.Message,), {
  'DESCRIPTOR' : _SETQROMASTRIPDEVICENAME,
  '__module__' : 'qroma_lights_command_pb2'
  # @@protoc_insertion_point(class_scope:SetQromaStripDeviceName)
  })
_sym_db.RegisterMessage(SetQromaStripDeviceName)

UseCurrentSetupOnStartup = _reflection.GeneratedProtocolMessageType('UseCurrentSetupOnStartup', (_message.Message,), {
  'DESCRIPTOR' : _USECURRENTSETUPONSTARTUP,
  '__module__' : 'qroma_lights_command_pb2'
  # @@protoc_insertion_point(class_scope:UseCurrentSetupOnStartup)
  })
_sym_db.RegisterMessage(UseCurrentSetupOnStartup)

QromaLightsCommand = _reflection.GeneratedProtocolMessageType('QromaLightsCommand', (_message.Message,), {
  'DESCRIPTOR' : _QROMALIGHTSCOMMAND,
  '__module__' : 'qroma_lights_command_pb2'
  # @@protoc_insertion_point(class_scope:QromaLightsCommand)
  })
_sym_db.RegisterMessage(QromaLightsCommand)

QromaLightsResponse = _reflection.GeneratedProtocolMessageType('QromaLightsResponse', (_message.Message,), {
  'DESCRIPTOR' : _QROMALIGHTSRESPONSE,
  '__module__' : 'qroma_lights_command_pb2'
  # @@protoc_insertion_point(class_scope:QromaLightsResponse)
  })
_sym_db.RegisterMessage(QromaLightsResponse)


# @@protoc_insertion_point(module_scope)
