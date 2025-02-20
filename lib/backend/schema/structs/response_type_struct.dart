// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponseTypeStruct extends BaseStruct {
  ResponseTypeStruct({
    String? id,
    String? provider,
    String? model,
    String? object,
    int? created,
    List<ChoicesStruct>? choices,
  })  : _id = id,
        _provider = provider,
        _model = model,
        _object = object,
        _created = created,
        _choices = choices;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "provider" field.
  String? _provider;
  String get provider => _provider ?? '';
  set provider(String? val) => _provider = val;

  bool hasProvider() => _provider != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  set model(String? val) => _model = val;

  bool hasModel() => _model != null;

  // "object" field.
  String? _object;
  String get object => _object ?? '';
  set object(String? val) => _object = val;

  bool hasObject() => _object != null;

  // "created" field.
  int? _created;
  int get created => _created ?? 0;
  set created(int? val) => _created = val;

  void incrementCreated(int amount) => created = created + amount;

  bool hasCreated() => _created != null;

  // "choices" field.
  List<ChoicesStruct>? _choices;
  List<ChoicesStruct> get choices => _choices ?? const [];
  set choices(List<ChoicesStruct>? val) => _choices = val;

  void updateChoices(Function(List<ChoicesStruct>) updateFn) {
    updateFn(_choices ??= []);
  }

  bool hasChoices() => _choices != null;

  static ResponseTypeStruct fromMap(Map<String, dynamic> data) =>
      ResponseTypeStruct(
        id: data['id'] as String?,
        provider: data['provider'] as String?,
        model: data['model'] as String?,
        object: data['object'] as String?,
        created: castToType<int>(data['created']),
        choices: getStructList(
          data['choices'],
          ChoicesStruct.fromMap,
        ),
      );

  static ResponseTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponseTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'provider': _provider,
        'model': _model,
        'object': _object,
        'created': _created,
        'choices': _choices?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'provider': serializeParam(
          _provider,
          ParamType.String,
        ),
        'model': serializeParam(
          _model,
          ParamType.String,
        ),
        'object': serializeParam(
          _object,
          ParamType.String,
        ),
        'created': serializeParam(
          _created,
          ParamType.int,
        ),
        'choices': serializeParam(
          _choices,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ResponseTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResponseTypeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        provider: deserializeParam(
          data['provider'],
          ParamType.String,
          false,
        ),
        model: deserializeParam(
          data['model'],
          ParamType.String,
          false,
        ),
        object: deserializeParam(
          data['object'],
          ParamType.String,
          false,
        ),
        created: deserializeParam(
          data['created'],
          ParamType.int,
          false,
        ),
        choices: deserializeStructParam<ChoicesStruct>(
          data['choices'],
          ParamType.DataStruct,
          true,
          structBuilder: ChoicesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ResponseTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ResponseTypeStruct &&
        id == other.id &&
        provider == other.provider &&
        model == other.model &&
        object == other.object &&
        created == other.created &&
        listEquality.equals(choices, other.choices);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, provider, model, object, created, choices]);
}

ResponseTypeStruct createResponseTypeStruct({
  String? id,
  String? provider,
  String? model,
  String? object,
  int? created,
}) =>
    ResponseTypeStruct(
      id: id,
      provider: provider,
      model: model,
      object: object,
      created: created,
    );
