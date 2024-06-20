import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'menu_button_view_model.dart';
export 'menu_button_view_model.dart';

class MenuButtonViewWidget extends StatefulWidget {
  const MenuButtonViewWidget({super.key});

  @override
  State<MenuButtonViewWidget> createState() => _MenuButtonViewWidgetState();
}

class _MenuButtonViewWidgetState extends State<MenuButtonViewWidget> {
  late MenuButtonViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuButtonViewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          Scaffold.of(context).openDrawer();
        },
        child: Material(
          color: Colors.transparent,
          elevation: 3.0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(8.0),
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(8.0),
            ),
          ),
          child: Container(
            width: 32.0,
            height: 32.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(8.0),
                topLeft: Radius.circular(0.0),
                topRight: Radius.circular(8.0),
              ),
            ),
            child: Icon(
              Icons.menu_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 22.0,
            ),
          ),
        ),
      ),
    );
  }
}
