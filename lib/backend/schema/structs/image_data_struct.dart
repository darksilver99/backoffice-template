// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageDataStruct extends BaseStruct {
  ImageDataStruct({
    int? id,
    String? url,
  })  : _id = id,
        _url = url;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

  static ImageDataStruct fromMap(Map<String, dynamic> data) => ImageDataStruct(
        id: castToType<int>(data['id']),
        url: data['url'] as String?,
      );

  static ImageDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ImageDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'url': _url,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
      }.withoutNulls;

  static ImageDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImageDataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ImageDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImageDataStruct && id == other.id && url == other.url;
  }

  @override
  int get hashCode => const ListEquality().hash([id, url]);
}

ImageDataStruct createImageDataStruct({
  int? id,
  String? url,
}) =>
    ImageDataStruct(
      id: id,
      url: url,
    );
