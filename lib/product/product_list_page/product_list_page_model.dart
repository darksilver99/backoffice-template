import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/menu_button_view_widget.dart';
import '/components/menu_view_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'product_list_page_widget.dart' show ProductListPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductListPageModel extends FlutterFlowModel<ProductListPageWidget> {
  ///  Local state fields for this page.

  List<dynamic> productList = [];
  void addToProductList(dynamic item) => productList.add(item);
  void removeFromProductList(dynamic item) => productList.remove(item);
  void removeAtIndexFromProductList(int index) => productList.removeAt(index);
  void insertAtIndexInProductList(int index, dynamic item) =>
      productList.insert(index, item);
  void updateProductListAtIndex(int index, Function(dynamic) updateFn) =>
      productList[index] = updateFn(productList[index]);

  int? pageTotal;

  int pageIndex = 1;

  String sortKey = 'desc';

  String sortField = 'create_date';

  List<int> selectedIDList = [];
  void addToSelectedIDList(int item) => selectedIDList.add(item);
  void removeFromSelectedIDList(int item) => selectedIDList.remove(item);
  void removeAtIndexFromSelectedIDList(int index) =>
      selectedIDList.removeAt(index);
  void insertAtIndexInSelectedIDList(int index, int item) =>
      selectedIDList.insert(index, item);
  void updateSelectedIDListAtIndex(int index, Function(int) updateFn) =>
      selectedIDList[index] = updateFn(selectedIDList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (productlist)] action in ProductListPage widget.
  ApiCallResponse? apiResultmmq;
  // Model for MenuView component.
  late MenuViewModel menuViewModel;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (productlist)] action in Button widget.
  ApiCallResponse? apiResultrcy;
  // Stores action output result for [Backend Call - API (deleteproduct)] action in Button widget.
  ApiCallResponse? apiResult2sk;
  // Stores action output result for [Backend Call - API (productlist)] action in Button widget.
  ApiCallResponse? apiResultrcy22;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();
  // Stores action output result for [Backend Call - API (productlist)] action in PaginatedDataTable widget.
  ApiCallResponse? apiResultyhb;
  // Stores action output result for [Backend Call - API (deleteproduct)] action in Icon widget.
  ApiCallResponse? apiResulthok;
  // Stores action output result for [Backend Call - API (productlist)] action in Icon widget.
  ApiCallResponse? apiResultrcy2;
  // Model for MenuButtonView component.
  late MenuButtonViewModel menuButtonViewModel;

  @override
  void initState(BuildContext context) {
    menuViewModel = createModel(context, () => MenuViewModel());
    menuButtonViewModel = createModel(context, () => MenuButtonViewModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuViewModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    menuButtonViewModel.dispose();
  }
}
