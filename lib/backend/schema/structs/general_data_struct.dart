// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GeneralDataStruct extends BaseStruct {
  GeneralDataStruct({
    int? status,
  }) : _status = status;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

  static GeneralDataStruct fromMap(Map<String, dynamic> data) =>
      GeneralDataStruct(
        status: castToType<int>(data['status']),
      );

  static GeneralDataStruct? maybeFromMap(dynamic data) => data is Map
      ? GeneralDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
      }.withoutNulls;

  static GeneralDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      GeneralDataStruct(
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'GeneralDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GeneralDataStruct && status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash([status]);
}

GeneralDataStruct createGeneralDataStruct({
  int? status,
}) =>
    GeneralDataStruct(
      status: status,
    );
