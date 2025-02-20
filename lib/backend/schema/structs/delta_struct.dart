// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeltaStruct extends BaseStruct {
  DeltaStruct({
    String? role,
    String? content,
    String? reasoning,
  })  : _role = role,
        _content = content,
        _reasoning = reasoning;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;

  bool hasContent() => _content != null;

  // "reasoning" field.
  String? _reasoning;
  String get reasoning => _reasoning ?? '';
  set reasoning(String? val) => _reasoning = val;

  bool hasReasoning() => _reasoning != null;

  static DeltaStruct fromMap(Map<String, dynamic> data) => DeltaStruct(
        role: data['role'] as String?,
        content: data['content'] as String?,
        reasoning: data['reasoning'] as String?,
      );

  static DeltaStruct? maybeFromMap(dynamic data) =>
      data is Map ? DeltaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'role': _role,
        'content': _content,
        'reasoning': _reasoning,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
        'reasoning': serializeParam(
          _reasoning,
          ParamType.String,
        ),
      }.withoutNulls;

  static DeltaStruct fromSerializableMap(Map<String, dynamic> data) =>
      DeltaStruct(
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
        reasoning: deserializeParam(
          data['reasoning'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DeltaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeltaStruct &&
        role == other.role &&
        content == other.content &&
        reasoning == other.reasoning;
  }

  @override
  int get hashCode => const ListEquality().hash([role, content, reasoning]);
}

DeltaStruct createDeltaStruct({
  String? role,
  String? content,
  String? reasoning,
}) =>
    DeltaStruct(
      role: role,
      content: content,
      reasoning: reasoning,
    );
