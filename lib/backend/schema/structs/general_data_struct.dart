// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GeneralDataStruct extends BaseStruct {
  GeneralDataStruct({
    int? status,
    int? isRecommend,
  })  : _status = status,
        _isRecommend = isRecommend;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

  // "is_recommend" field.
  int? _isRecommend;
  int get isRecommend => _isRecommend ?? 0;
  set isRecommend(int? val) => _isRecommend = val;

  void incrementIsRecommend(int amount) => isRecommend = isRecommend + amount;

  bool hasIsRecommend() => _isRecommend != null;

  static GeneralDataStruct fromMap(Map<String, dynamic> data) =>
      GeneralDataStruct(
        status: castToType<int>(data['status']),
        isRecommend: castToType<int>(data['is_recommend']),
      );

  static GeneralDataStruct? maybeFromMap(dynamic data) => data is Map
      ? GeneralDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'is_recommend': _isRecommend,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'is_recommend': serializeParam(
          _isRecommend,
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
        isRecommend: deserializeParam(
          data['is_recommend'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'GeneralDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GeneralDataStruct &&
        status == other.status &&
        isRecommend == other.isRecommend;
  }

  @override
  int get hashCode => const ListEquality().hash([status, isRecommend]);
}

GeneralDataStruct createGeneralDataStruct({
  int? status,
  int? isRecommend,
}) =>
    GeneralDataStruct(
      status: status,
      isRecommend: isRecommend,
    );
