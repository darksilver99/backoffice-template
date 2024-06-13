import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/menu_button_view_widget.dart';
import '/components/menu_view_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'product_form_page_widget.dart' show ProductFormPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ProductFormPageModel extends FlutterFlowModel<ProductFormPageWidget> {
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

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (productdetail)] action in ProductFormPage widget.
  ApiCallResponse? apiResult6ha;
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

  // State field(s) for ProductID widget.
  FocusNode? productIDFocusNode;
  TextEditingController? productIDTextController;
  String? Function(BuildContext, String?)? productIDTextControllerValidator;
  String? _productIDTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Detail widget.
  FocusNode? detailFocusNode;
  TextEditingController? detailTextController;
  String? Function(BuildContext, String?)? detailTextControllerValidator;
  // State field(s) for NormalPrice widget.
  FocusNode? normalPriceFocusNode;
  TextEditingController? normalPriceTextController;
  String? Function(BuildContext, String?)? normalPriceTextControllerValidator;
  String? _normalPriceTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for SpecialPrice widget.
  FocusNode? specialPriceFocusNode;
  TextEditingController? specialPriceTextController;
  String? Function(BuildContext, String?)? specialPriceTextControllerValidator;
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];

  // Stores action output result for [Backend Call - API (insertproduct)] action in Button widget.
  ApiCallResponse? apiResulto60;
  // Model for MenuButtonView component.
  late MenuButtonViewModel menuButtonViewModel;

  @override
  void initState(BuildContext context) {
    menuViewModel = createModel(context, () => MenuViewModel());
    subjectTextControllerValidator = _subjectTextControllerValidator;
    productIDTextControllerValidator = _productIDTextControllerValidator;
    normalPriceTextControllerValidator = _normalPriceTextControllerValidator;
    menuButtonViewModel = createModel(context, () => MenuButtonViewModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuViewModel.dispose();
    subjectFocusNode?.dispose();
    subjectTextController?.dispose();

    productIDFocusNode?.dispose();
    productIDTextController?.dispose();

    detailFocusNode?.dispose();
    detailTextController?.dispose();

    normalPriceFocusNode?.dispose();
    normalPriceTextController?.dispose();

    specialPriceFocusNode?.dispose();
    specialPriceTextController?.dispose();

    menuButtonViewModel.dispose();
  }
}
