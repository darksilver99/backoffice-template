import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

List<dynamic> addNewList(
  List<dynamic> currentList,
  List<dynamic> newList,
) {
  currentList.addAll(newList);
  return currentList;
}

String checkEmptyOrNull(String? val) {
  return (val == null || val == "") ? "" : val;
}

List<FFUploadedFile>? addUploadImageNewList(
  List<FFUploadedFile> newList,
  List<FFUploadedFile> currentList,
) {
  currentList.addAll(newList);
  return currentList;
}

List<int> getSelectedIdList(
  List<dynamic> list,
  List<int> selectedIndexList,
) {
  List<int> tmp = [];
  for (int i = 0; i < selectedIndexList.length; i++) {
    int index = selectedIndexList[i];
    if (index >= 0 && index < list.length) {
      int id = list[index]["id"];
      tmp.add(id);
    }
  }
  return tmp;
}

String getStatusText(String status) {
  switch (status) {
    case '0':
      return "ไม่แสดง";
    case '1':
      return "แสดงข้อมูล";
    case '2':
      return "ลบแล้ว";
    default:
      return "-";
  }
}

String removeAPIPath(
  String val,
  String from,
  String replace,
) {
  return val.replaceAll(from, replace);
}
