import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class DatalistCall {
  static Future<ApiCallResponse> call({
    String? rows = '',
    String? start = '',
    String? uid = '',
    String? keyword = '',
    String? ids = '',
    String? sortField = '',
    String? sortKey = '',
    String? cmd = '',
    String? api = '',
    String? functionName = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'datalist',
      apiUrl: '${api}${functionName}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'rows': rows,
        'start': start,
        'uid': uid,
        'keyword': keyword,
        'ids': ids,
        'sort_field': sortField,
        'sort_key': sortKey,
        'cmd': cmd,
        'function_name': functionName,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DatadetailCall {
  static Future<ApiCallResponse> call({
    int? id,
    int? uid,
    String? token = '',
    String? cmd = '',
    String? api = '',
    String? functionName = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'datadetail',
      apiUrl: '${api}${functionName}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${token}',
      },
      params: {
        'id': id,
        'uid': uid,
        'token': token,
        'cmd': cmd,
        'function_name': functionName,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertdataCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6IjlseTY1WVBtSWYxIiwiaWF0IjoxNzE3NTY3NzM5LCJleHAiOjE3MjExNjQxMzl9.x3nz7Ktr1o_SgLkAlGHaWA-e0DBmw1tyrAqTVfCWSEU',
    String? uid = '1',
    String? subject = '',
    String? detail = '',
    List<FFUploadedFile>? imagesList,
    String? displayImage = '',
    String? cmd = '',
    String? status = '1',
    String? api = '',
    String? isRecommend = '0',
    String? insertFunction = '',
    List<FFUploadedFile>? filesList,
  }) async {
    final images = imagesList ?? [];
    final files = filesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'insertdata',
      apiUrl: '${api}${insertFunction}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${token}',
      },
      params: {
        'uid': uid,
        'subject': subject,
        'detail': detail,
        'images[]': images,
        'display_image': displayImage,
        'cmd': cmd,
        'status': status,
        'is_recommend': isRecommend,
        'insert_function': insertFunction,
        'files[]': files,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdatedataCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6IjlseTY1WVBtSWYxIiwiaWF0IjoxNzE3NTY3NzM5LCJleHAiOjE3MjExNjQxMzl9.x3nz7Ktr1o_SgLkAlGHaWA-e0DBmw1tyrAqTVfCWSEU',
    String? uid = '1',
    String? subject = '',
    String? detail = '',
    List<FFUploadedFile>? imagesList,
    String? displayImage = '',
    int? id,
    String? uploadKey = '',
    String? cmd = '',
    String? status = '1',
    String? api = '',
    String? isRecommend = '0',
    String? updateFunction = '',
    List<FFUploadedFile>? filesList,
  }) async {
    final images = imagesList ?? [];
    final files = filesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'updatedata',
      apiUrl: '${api}${updateFunction}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${token}',
      },
      params: {
        'uid': uid,
        'subject': subject,
        'detail': detail,
        'images[]': images,
        'display_image': displayImage,
        'id': id,
        'uploadKey': uploadKey,
        'cmd': cmd,
        'status': status,
        'is_recommend': isRecommend,
        'update_function': updateFunction,
        'files[]': files,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletedataCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6IjlseTY1WVBtSWYxIiwiaWF0IjoxNzE3NTY3NzM5LCJleHAiOjE3MjExNjQxMzl9.x3nz7Ktr1o_SgLkAlGHaWA-e0DBmw1tyrAqTVfCWSEU',
    String? uid = '1',
    String? id = '',
    String? cmd = '',
    String? api = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deletedata',
      apiUrl: '${api}delete_data',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${token}',
      },
      params: {
        'uid': uid,
        'id': id,
        'cmd': cmd,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoveimageCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6IjlseTY1WVBtSWYxIiwiaWF0IjoxNzE3NTY3NzM5LCJleHAiOjE3MjExNjQxMzl9.x3nz7Ktr1o_SgLkAlGHaWA-e0DBmw1tyrAqTVfCWSEU',
    String? uid = '1',
    int? id,
    String? cmd = '',
    String? api = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'removeimage',
      apiUrl: '${api}remove_image',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${token}',
      },
      params: {
        'uid': uid,
        'id': id,
        'cmd': cmd,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
    String? api = 'https://ecommerce-template.silver-api.com/api/',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "${username}",
  "password": "${password}",
  "backend": 1
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '${api}login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
