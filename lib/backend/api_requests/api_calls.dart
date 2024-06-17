import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ProductlistCall {
  static Future<ApiCallResponse> call({
    String? rows = '',
    String? start = '',
    String? uid = '',
    String? keyword = '',
    String? ids = '',
    String? sortField = '',
    String? sortKey = '',
    String? api = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'productlist',
      apiUrl: '${api}product_list',
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
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

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
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'datalist',
      apiUrl: '${api}data_list',
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
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProductdetailCall {
  static Future<ApiCallResponse> call({
    int? id,
    int? uid,
    String? token = '',
    String? api = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'productdetail',
      apiUrl: '${api}product_detail',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${token}',
      },
      params: {
        'id': id,
        'uid': uid,
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'datadetail',
      apiUrl: '${api}data_detail',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${token}',
      },
      params: {
        'id': id,
        'uid': uid,
        'token': token,
        'cmd': cmd,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertproductCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6IjlseTY1WVBtSWYxIiwiaWF0IjoxNzE3NTY3NzM5LCJleHAiOjE3MjExNjQxMzl9.x3nz7Ktr1o_SgLkAlGHaWA-e0DBmw1tyrAqTVfCWSEU',
    String? uid = '1',
    String? productId = '',
    String? subject = '',
    String? detail = '',
    double? normalPrice,
    double? specialPrice,
    List<FFUploadedFile>? imagesList,
    int? displayImageIndex = 0,
    String? status = '1',
    String? api = '',
  }) async {
    final images = imagesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'insertproduct',
      apiUrl: '${api}insert_product',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${token}',
      },
      params: {
        'uid': uid,
        'product_id': productId,
        'subject': subject,
        'detail': detail,
        'normal_price': normalPrice,
        'special_price': specialPrice,
        'images[]': images,
        'display_image_index': displayImageIndex,
        'status': status,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
  }) async {
    final images = imagesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'insertdata',
      apiUrl: '${api}insert_data',
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
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateproductCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6IjlseTY1WVBtSWYxIiwiaWF0IjoxNzE3NTY3NzM5LCJleHAiOjE3MjExNjQxMzl9.x3nz7Ktr1o_SgLkAlGHaWA-e0DBmw1tyrAqTVfCWSEU',
    String? uid = '1',
    String? subject = '',
    String? detail = '',
    double? normalPrice,
    double? specialPrice,
    List<FFUploadedFile>? imagesList,
    int? displayImageIndex = 0,
    int? id,
    String? uploadKey = '',
    String? productId = '',
    String? status = '1',
    String? api = '',
  }) async {
    final images = imagesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'updateproduct',
      apiUrl: '${api}update_product',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${token}',
      },
      params: {
        'uid': uid,
        'subject': subject,
        'detail': detail,
        'normal_price': normalPrice,
        'special_price': specialPrice,
        'images[]': images,
        'display_image_index': displayImageIndex,
        'id': id,
        'uploadKey': uploadKey,
        'product_id': productId,
        'status': status,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
  }) async {
    final images = imagesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'updatedata',
      apiUrl: '${api}update_data',
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
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteproductCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6IjlseTY1WVBtSWYxIiwiaWF0IjoxNzE3NTY3NzM5LCJleHAiOjE3MjExNjQxMzl9.x3nz7Ktr1o_SgLkAlGHaWA-e0DBmw1tyrAqTVfCWSEU',
    String? uid = '1',
    String? id = '',
    String? api = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteproduct',
      apiUrl: '${api}delete_product',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${token}',
      },
      params: {
        'uid': uid,
        'id': id,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
      alwaysAllowBody: false,
    );
  }
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
    String? api = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "${username}",
  "password": "${password}"
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
