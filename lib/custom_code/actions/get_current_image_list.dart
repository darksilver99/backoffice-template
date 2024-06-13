// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<ImageDataStruct>> getCurrentImageList(
  List<dynamic> imageList,
  String? fieldName,
) async {
  // Add your function code here!
  if (imageList.isEmpty) {
    return [];
  }
  List<ImageDataStruct> tmp = [];
  for (var element in imageList) {
    ImageDataStruct imageData =
        ImageDataStruct(id: element["id"], url: element[fieldName]);
    tmp.add(imageData);
  }
  return tmp;
}
