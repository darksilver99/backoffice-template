// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FileDataStruct extends BaseStruct {
  FileDataStruct({
    int? id,
    String? url,
    String? fileName,
    int? fileSize,
  })  : _id = id,
        _url = url,
        _fileName = fileName,
        _fileSize = fileSize;

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

  // "file_name" field.
  String? _fileName;
  String get fileName => _fileName ?? '';
  set fileName(String? val) => _fileName = val;

  bool hasFileName() => _fileName != null;

  // "file_size" field.
  int? _fileSize;
  int get fileSize => _fileSize ?? 0;
  set fileSize(int? val) => _fileSize = val;

  void incrementFileSize(int amount) => fileSize = fileSize + amount;

  bool hasFileSize() => _fileSize != null;

  static FileDataStruct fromMap(Map<String, dynamic> data) => FileDataStruct(
        id: castToType<int>(data['id']),
        url: data['url'] as String?,
        fileName: data['file_name'] as String?,
        fileSize: castToType<int>(data['file_size']),
      );

  static FileDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? FileDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'url': _url,
        'file_name': _fileName,
        'file_size': _fileSize,
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
        'file_name': serializeParam(
          _fileName,
          ParamType.String,
        ),
        'file_size': serializeParam(
          _fileSize,
          ParamType.int,
        ),
      }.withoutNulls;

  static FileDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      FileDataStruct(
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
        fileName: deserializeParam(
          data['file_name'],
          ParamType.String,
          false,
        ),
        fileSize: deserializeParam(
          data['file_size'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'FileDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FileDataStruct &&
        id == other.id &&
        url == other.url &&
        fileName == other.fileName &&
        fileSize == other.fileSize;
  }

  @override
  int get hashCode => const ListEquality().hash([id, url, fileName, fileSize]);
}

FileDataStruct createFileDataStruct({
  int? id,
  String? url,
  String? fileName,
  int? fileSize,
}) =>
    FileDataStruct(
      id: id,
      url: url,
      fileName: fileName,
      fileSize: fileSize,
    );
