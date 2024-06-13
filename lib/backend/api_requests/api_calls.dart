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
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'productlist',
      apiUrl: 'https://ecommerce-template.silver-api.com/api/product_list',
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

class ProductdetailCall {
  static Future<ApiCallResponse> call({
    int? id,
    int? uid,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'productdetail',
      apiUrl: 'https://ecommerce-template.silver-api.com/api/product_detail',
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
    String? displayImage = '',
    List<FFUploadedFile>? imagesList,
    int? displayImageIndex = 0,
  }) async {
    final images = imagesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'insertproduct',
      apiUrl: 'https://ecommerce-template.silver-api.com/api/insert_product',
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
        'display_image': displayImage,
        'images[]': images,
        'display_image_index': displayImageIndex,
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
    String? displayImage = '',
    List<FFUploadedFile>? imagesList,
    int? displayImageIndex = 0,
    int? id,
    String? uploadKey = '',
  }) async {
    final images = imagesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'updateproduct',
      apiUrl: 'https://ecommerce-template.silver-api.com/api/update_product',
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
        'display_image': displayImage,
        'images[]': images,
        'display_image_index': displayImageIndex,
        'id': id,
        'uploadKey': uploadKey,
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
    String? table = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'removeimage',
      apiUrl: 'https://ecommerce-template.silver-api.com/api/remove_image',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${token}',
      },
      params: {
        'uid': uid,
        'id': id,
        'table': table,
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
  }) async {
    final ffApiRequestBody = '''
{
  "username": "${username}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: 'https://ecommerce-template.silver-api.com/api/login',
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
