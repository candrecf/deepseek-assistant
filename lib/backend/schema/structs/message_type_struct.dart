// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessageTypeStruct extends BaseStruct {
  MessageTypeStruct({
    String? reasoning,
    String? text,
    String? role,
    DateTime? ts,
  })  : _reasoning = reasoning,
        _text = text,
        _role = role,
        _ts = ts;

  // "reasoning" field.
  String? _reasoning;
  String get reasoning => _reasoning ?? '';
  set reasoning(String? val) => _reasoning = val;

  bool hasReasoning() => _reasoning != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  // "ts" field.
  DateTime? _ts;
  DateTime? get ts => _ts;
  set ts(DateTime? val) => _ts = val;

  bool hasTs() => _ts != null;

  static MessageTypeStruct fromMap(Map<String, dynamic> data) =>
      MessageTypeStruct(
        reasoning: data['reasoning'] as String?,
        text: data['text'] as String?,
        role: data['role'] as String?,
        ts: data['ts'] as DateTime?,
      );

  static MessageTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? MessageTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'reasoning': _reasoning,
        'text': _text,
        'role': _role,
        'ts': _ts,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'reasoning': serializeParam(
          _reasoning,
          ParamType.String,
        ),
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'ts': serializeParam(
          _ts,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static MessageTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      MessageTypeStruct(
        reasoning: deserializeParam(
          data['reasoning'],
          ParamType.String,
          false,
        ),
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        ts: deserializeParam(
          data['ts'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'MessageTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MessageTypeStruct &&
        reasoning == other.reasoning &&
        text == other.text &&
        role == other.role &&
        ts == other.ts;
  }

  @override
  int get hashCode => const ListEquality().hash([reasoning, text, role, ts]);
}

MessageTypeStruct createMessageTypeStruct({
  String? reasoning,
  String? text,
  String? role,
  DateTime? ts,
}) =>
    MessageTypeStruct(
      reasoning: reasoning,
      text: text,
      role: role,
      ts: ts,
    );
