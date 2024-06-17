import '/component/menu_button_view/menu_button_view_widget.dart';
import '/component/menu_view/menu_view_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MenuView component.
  late MenuViewModel menuViewModel;
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
    menuButtonViewModel.dispose();
  }
}
