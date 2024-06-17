import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/component/menu_button_view/menu_button_view_widget.dart';
import '/component/menu_view/menu_view_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'data_form_page_widget.dart' show DataFormPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

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

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (datadetail)] action in DataFormPage widget.
  ApiCallResponse? apiResult6ha;
  // Stores action output result for [Custom Action - getCurrentImageList] action in DataFormPage widget.
  List<ImageDataStruct>? images;
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
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];

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
