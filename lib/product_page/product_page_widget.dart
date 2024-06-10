import '/backend/api_requests/api_calls.dart';
import '/components/menu_button_view_widget.dart';
import '/components/menu_view_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_page_model.dart';
export 'product_page_model.dart';

class ProductPageWidget extends StatefulWidget {
  const ProductPageWidget({super.key});

  @override
  State<ProductPageWidget> createState() => _ProductPageWidgetState();
}

class _ProductPageWidgetState extends State<ProductPageWidget> {
  late ProductPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultmmq = await ProductlistCall.call();
      if ((_model.apiResultmmq?.succeeded ?? true)) {
        _model.productList = getJsonField(
          (_model.apiResultmmq?.jsonBody ?? ''),
          r'''$.data''',
          true,
        )!
            .toList()
            .cast<dynamic>();
        _model.pageTotal = getJsonField(
          (_model.apiResultmmq?.jsonBody ?? ''),
          r'''$.total''',
        );
        setState(() {});
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 8.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (scaffoldKey.currentState!.isDrawerOpen ||
                            scaffoldKey.currentState!.isEndDrawerOpen) {
                          Navigator.pop(context);
                        }
                      },
                      child: Icon(
                        Icons.close_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 32.0,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: wrapWithModel(
                  model: _model.menuViewModel,
                  updateCallback: () => setState(() {}),
                  child: MenuViewWidget(),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Product',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Builder(
                      builder: (context) {
                        final productTmpList = _model.productList.toList();
                        return FlutterFlowDataTable<dynamic>(
                          controller: _model.paginatedDataTableController,
                          data: productTmpList,
                          numRows: _model.pageTotal,
                          columnsBuilder: (onSortChanged) => [
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: SelectionArea(
                                    child: Text(
                                  'id',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        letterSpacing: 0.0,
                                      ),
                                )),
                              ),
                              fixedWidth: 80.0,
                              onSort: onSortChanged,
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: SelectionArea(
                                    child: Text(
                                  'รหัสสินค้า',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        letterSpacing: 0.0,
                                      ),
                                )),
                              ),
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: SelectionArea(
                                    child: Text(
                                  'หัวข้อ',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        letterSpacing: 0.0,
                                      ),
                                )),
                              ),
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: SelectionArea(
                                    child: Text(
                                  'ราคา',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        letterSpacing: 0.0,
                                      ),
                                )),
                              ),
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: SelectionArea(
                                    child: Text(
                                  'ราคาพิเศษ',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        letterSpacing: 0.0,
                                      ),
                                )),
                              ),
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: SelectionArea(
                                    child: Text(
                                  'วันที่สร้างข้อมูล',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        letterSpacing: 0.0,
                                      ),
                                )),
                              ),
                              onSort: onSortChanged,
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: SelectionArea(
                                    child: Text(
                                  'สร้างโดย',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        letterSpacing: 0.0,
                                      ),
                                )),
                              ),
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: SelectionArea(
                                    child: Text(
                                  'สถานะ',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        letterSpacing: 0.0,
                                      ),
                                )),
                              ),
                            ),
                          ],
                          dataRowBuilder: (productTmpListItem,
                                  productTmpListIndex,
                                  selected,
                                  onSelectChanged) =>
                              DataRow(
                            color: MaterialStateProperty.all(
                              productTmpListIndex % 2 == 0
                                  ? FlutterFlowTheme.of(context)
                                      .secondaryBackground
                                  : FlutterFlowTheme.of(context)
                                      .primaryBackground,
                            ),
                            cells: [
                              SelectionArea(
                                  child: Text(
                                getJsonField(
                                  productTmpListItem,
                                  r'''$.id''',
                                ).toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              )),
                              SelectionArea(
                                  child: Text(
                                getJsonField(
                                  productTmpListItem,
                                  r'''$.product_id''',
                                ).toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              )),
                              SelectionArea(
                                  child: Text(
                                getJsonField(
                                  productTmpListItem,
                                  r'''$.subject''',
                                ).toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              )),
                              SelectionArea(
                                  child: Text(
                                getJsonField(
                                  productTmpListItem,
                                  r'''$.normal_price''',
                                ).toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              )),
                              SelectionArea(
                                  child: Text(
                                getJsonField(
                                  productTmpListItem,
                                  r'''$.special_price''',
                                ).toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              )),
                              SelectionArea(
                                  child: Text(
                                getJsonField(
                                  productTmpListItem,
                                  r'''$.create_date''',
                                ).toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              )),
                              SelectionArea(
                                  child: Text(
                                getJsonField(
                                  productTmpListItem,
                                  r'''$.create_by''',
                                ).toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              )),
                              SelectionArea(
                                  child: Text(
                                getJsonField(
                                  productTmpListItem,
                                  r'''$.status''',
                                ).toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              )),
                            ].map((c) => DataCell(c)).toList(),
                          ),
                          onPageChanged: (currentRowIndex) async {
                            _model.apiResultyhb = await ProductlistCall.call(
                              start: _model.pageIndex.toString(),
                            );
                            if ((_model.apiResultyhb?.succeeded ?? true)) {
                              _model.pageIndex = _model.pageIndex + 1;
                              _model.productList = functions
                                  .addNewList(
                                      productTmpList.toList(),
                                      getJsonField(
                                        (_model.apiResultyhb?.jsonBody ?? ''),
                                        r'''$.data''',
                                        true,
                                      )!)
                                  .toList()
                                  .cast<dynamic>();
                              setState(() {});
                            }

                            setState(() {});
                          },
                          paginated: true,
                          selectable: false,
                          hidePaginator: false,
                          showFirstLastButtons: false,
                          minWidth: 800.0,
                          headingRowHeight: 75.0,
                          dataRowHeight: 48.0,
                          columnSpacing: 20.0,
                          headingRowColor: FlutterFlowTheme.of(context).primary,
                          sortIconColor: FlutterFlowTheme.of(context).primary,
                          borderRadius: BorderRadius.circular(0.0),
                          addHorizontalDivider: true,
                          addTopAndBottomDivider: false,
                          hideDefaultHorizontalDivider: true,
                          horizontalDividerColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          horizontalDividerThickness: 1.0,
                          addVerticalDivider: false,
                        );
                      },
                    ),
                    wrapWithModel(
                      model: _model.menuButtonViewModel,
                      updateCallback: () => setState(() {}),
                      child: MenuButtonViewWidget(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
