import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/component/menu_button_view/menu_button_view_widget.dart';
import '/component/menu_view/menu_view_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'data_form_page_widget.dart' show DataFormPageWidget;
import 'package:flutter/material.dart';

class DataFormPageModel extends FlutterFlowModel<DataFormPageWidget> {
  ///  Local state fields for this page.

  List<FFUploadedFile> tmpImageList = [];
  void addToTmpImageList(FFUploadedFile item) => tmpImageList.add(item);
  void removeFromTmpImageList(FFUploadedFile item) => tmpImageList.remove(item);
  void removeAtIndexFromTmpImageList(int index) => tmpImageList.removeAt(index);
  void insertAtIndexInTmpImageList(int index, FFUploadedFile item) =>
      tmpImageList.insert(index, item);
  void updateTmpImageListAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      tmpImageList[index] = updateFn(tmpImageList[index]);

  List<ImageDataStruct> currentImageList = [];
  void addToCurrentImageList(ImageDataStruct item) =>
      currentImageList.add(item);
  void removeFromCurrentImageList(ImageDataStruct item) =>
      currentImageList.remove(item);
  void removeAtIndexFromCurrentImageList(int index) =>
      currentImageList.removeAt(index);
  void insertAtIndexInCurrentImageList(int index, ImageDataStruct item) =>
      currentImageList.insert(index, item);
  void updateCurrentImageListAtIndex(
          int index, Function(ImageDataStruct) updateFn) =>
      currentImageList[index] = updateFn(currentImageList[index]);

  String? displayImage;

  String insertFunction = 'insert_data';

  String updateFunction = 'update_data';

  List<FFUploadedFile> tmpFileList = [];
  void addToTmpFileList(FFUploadedFile item) => tmpFileList.add(item);
  void removeFromTmpFileList(FFUploadedFile item) => tmpFileList.remove(item);
  void removeAtIndexFromTmpFileList(int index) => tmpFileList.removeAt(index);
  void insertAtIndexInTmpFileList(int index, FFUploadedFile item) =>
      tmpFileList.insert(index, item);
  void updateTmpFileListAtIndex(int index, Function(FFUploadedFile) updateFn) =>
      tmpFileList[index] = updateFn(tmpFileList[index]);

  List<FileDataStruct> currentFileList = [];
  void addToCurrentFileList(FileDataStruct item) => currentFileList.add(item);
  void removeFromCurrentFileList(FileDataStruct item) =>
      currentFileList.remove(item);
  void removeAtIndexFromCurrentFileList(int index) =>
      currentFileList.removeAt(index);
  void insertAtIndexInCurrentFileList(int index, FileDataStruct item) =>
      currentFileList.insert(index, item);
  void updateCurrentFileListAtIndex(
          int index, Function(FileDataStruct) updateFn) =>
      currentFileList[index] = updateFn(currentFileList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (datadetail)] action in DataFormPage widget.
  ApiCallResponse? apiResult6ha;
  // Stores action output result for [Custom Action - getCurrentImageList] action in DataFormPage widget.
  List<ImageDataStruct>? images;
  // Stores action output result for [Custom Action - getCurrentFileList] action in DataFormPage widget.
  List<FileDataStruct>? files;
  // Model for MenuView component.
  late MenuViewModel menuViewModel;
  // State field(s) for Subject widget.
  FocusNode? subjectFocusNode;
  TextEditingController? subjectTextController;
  String? Function(BuildContext, String?)? subjectTextControllerValidator;
  String? _subjectTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Detail widget.
  FocusNode? detailFocusNode;
  TextEditingController? detailTextController;
  String? Function(BuildContext, String?)? detailTextControllerValidator;
  // Stores action output result for [Backend Call - API (removeimage)] action in Icon widget.
  ApiCallResponse? apiResultwd5;
  bool isDataUploading1 = false;
  List<FFUploadedFile> uploadedLocalFiles1 = [];

  // Stores action output result for [Backend Call - API (removeimage)] action in Icon widget.
  ApiCallResponse? apiResultwd5Copy;
  bool isDataUploading2 = false;
  List<FFUploadedFile> uploadedLocalFiles2 = [];

  // State field(s) for recommendSwitch widget.
  bool? recommendSwitchValue;
  // State field(s) for statusSwitch widget.
  bool? statusSwitchValue;
  // Stores action output result for [Backend Call - API (updatedata)] action in Button widget.
  ApiCallResponse? apiResultdgp;
  // Stores action output result for [Backend Call - API (insertdata)] action in Button widget.
  ApiCallResponse? apiResulto60;
  // Model for MenuButtonView component.
  late MenuButtonViewModel menuButtonViewModel;

  @override
  void initState(BuildContext context) {
    menuViewModel = createModel(context, () => MenuViewModel());
    subjectTextControllerValidator = _subjectTextControllerValidator;
    menuButtonViewModel = createModel(context, () => MenuButtonViewModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuViewModel.dispose();
    subjectFocusNode?.dispose();
    subjectTextController?.dispose();

    detailFocusNode?.dispose();
    detailTextController?.dispose();

    menuButtonViewModel.dispose();
  }
}
