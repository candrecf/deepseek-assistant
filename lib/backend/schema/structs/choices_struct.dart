// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChoicesStruct extends BaseStruct {
  ChoicesStruct({
    int? index,
    DeltaStruct? delta,
    String? finishReason,
  })  : _index = index,
        _delta = delta,
        _finishReason = finishReason;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  set index(int? val) => _index = val;

  void incrementIndex(int amount) => index = index + amount;

  bool hasIndex() => _index != null;

  // "delta" field.
  DeltaStruct? _delta;
  DeltaStruct get delta => _delta ?? DeltaStruct();
  set delta(DeltaStruct? val) => _delta = val;

  void updateDelta(Function(DeltaStruct) updateFn) {
    updateFn(_delta ??= DeltaStruct());
  }

  bool hasDelta() => _delta != null;

  // "finish_reason" field.
  String? _finishReason;
  String get finishReason => _finishReason ?? '';
  set finishReason(String? val) => _finishReason = val;

  bool hasFinishReason() => _finishReason != null;

  static ChoicesStruct fromMap(Map<String, dynamic> data) => ChoicesStruct(
        index: castToType<int>(data['index']),
        delta: data['delta'] is DeltaStruct
            ? data['delta']
            : DeltaStruct.maybeFromMap(data['delta']),
        finishReason: data['finish_reason'] as String?,
      );

  static ChoicesStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChoicesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'index': _index,
        'delta': _delta?.toMap(),
        'finish_reason': _finishReason,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'index': serializeParam(
          _index,
          ParamType.int,
        ),
        'delta': serializeParam(
          _delta,
          ParamType.DataStruct,
        ),
        'finish_reason': serializeParam(
          _finishReason,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChoicesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChoicesStruct(
        index: deserializeParam(
          data['index'],
          ParamType.int,
          false,
        ),
        delta: deserializeStructParam(
          data['delta'],
          ParamType.DataStruct,
          false,
          structBuilder: DeltaStruct.fromSerializableMap,
        ),
        finishReason: deserializeParam(
          data['finish_reason'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChoicesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChoicesStruct &&
        index == other.index &&
        delta == other.delta &&
        finishReason == other.finishReason;
  }

  @override
  int get hashCode => const ListEquality().hash([index, delta, finishReason]);
}

ChoicesStruct createChoicesStruct({
  int? index,
  DeltaStruct? delta,
  String? finishReason,
}) =>
    ChoicesStruct(
      index: index,
      delta: delta ?? DeltaStruct(),
      finishReason: finishReason,
    );
