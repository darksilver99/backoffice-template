// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<FileDataStruct>> getCurrentFileList(List<dynamic> fileList) async {
  // Add your function code here!
  if (fileList.isEmpty) {
    return [];
  }
  List<FileDataStruct> tmp = [];
  for (var element in fileList) {
    FileDataStruct fileData = FileDataStruct(
      id: element["id"],
      url: element['file_path'],
      fileName: element['file_name'],
      fileSize: element['file_size'],
    );
    tmp.add(fileData);
  }
  return tmp;
}
