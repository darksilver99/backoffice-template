import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/component/menu_button_view/menu_button_view_widget.dart';
import '/component/menu_view/menu_view_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_list_page_model.dart';
export 'user_list_page_model.dart';

class UserListPageWidget extends StatefulWidget {
  const UserListPageWidget({
    super.key,
    required this.cmd,
  });

  final String? cmd;

  @override
  State<UserListPageWidget> createState() => _UserListPageWidgetState();
}

class _UserListPageWidgetState extends State<UserListPageWidget> {
  late UserListPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserListPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultmmq = await DatalistCall.call(
        start: '0',
        sortField: _model.dropDownValue1,
        sortKey: _model.dropDownValue2,
        keyword: _model.textController.text,
        cmd: widget.cmd,
        api: FFAppConstants.apiPath,
      );
      if ((_model.apiResultmmq?.succeeded ?? true)) {
        _model.dataList = getJsonField(
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
      } else {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text((_model.apiResultmmq?.exceptionMessage ?? '')),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
      }
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
            'Users',
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
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 64.0, 8.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Wrap(
                              spacing: 0.0,
                              runSpacing: 0.0,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 8.0, 8.0),
                                  child: FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController1 ??=
                                            FormFieldController<String>(
                                      _model.dropDownValue1 ??= 'create_date',
                                    ),
                                    options: List<String>.from(['create_date']),
                                    optionLabels: ['วันที่สร้างข้อมูล'],
                                    onChanged: (val) => setState(
                                        () => _model.dropDownValue1 = val),
                                    width: 300.0,
                                    height: 56.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'Please select...',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 2.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderWidth: 2.0,
                                    borderRadius: 8.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 4.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 8.0, 8.0),
                                  child: FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController2 ??=
                                            FormFieldController<String>(
                                      _model.dropDownValue2 ??= 'desc',
                                    ),
                                    options: List<String>.from(['desc', 'asc']),
                                    optionLabels: [
                                      'จากมากไปน้อย',
                                      'จากน้อยไปมาก'
                                    ],
                                    onChanged: (val) => setState(
                                        () => _model.dropDownValue2 = val),
                                    width: 300.0,
                                    height: 56.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'Please select...',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 2.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderWidth: 2.0,
                                    borderRadius: 8.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 4.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 8.0, 8.0),
                                  child: Container(
                                    width: 300.0,
                                    height: 56.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        TextFormField(
                                          controller: _model.textController,
                                          focusNode: _model.textFieldFocusNode,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'ชื่อ, รายละเอียด',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            focusedErrorBorder:
                                                InputBorder.none,
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                          validator: _model
                                              .textControllerValidator
                                              .asValidator(context),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                FFButtonWidget(
                                  onPressed: () async {
                                    _model.paginatedDataTableController
                                        .paginatorController
                                        .goToFirstPage();
                                    await Future.delayed(
                                        const Duration(milliseconds: 500));
                                    _model.pageIndex = 1;
                                    _model.apiResultrcy =
                                        await DatalistCall.call(
                                      sortField: _model.dropDownValue1,
                                      sortKey: _model.dropDownValue2,
                                      start: '0',
                                      keyword: _model.textController.text,
                                      cmd: widget.cmd,
                                      api: FFAppConstants.apiPath,
                                    );
                                    if ((_model.apiResultrcy?.succeeded ??
                                        true)) {
                                      _model.dataList = getJsonField(
                                        (_model.apiResultrcy?.jsonBody ?? ''),
                                        r'''$.data''',
                                        true,
                                      )!
                                          .toList()
                                          .cast<dynamic>();
                                      _model.sortKey = _model.dropDownValue1!;
                                      _model.sortField = _model.dropDownValue2!;
                                      _model.pageTotal = getJsonField(
                                        (_model.apiResultrcy?.jsonBody ?? ''),
                                        r'''$.total''',
                                      );
                                    }

                                    setState(() {});
                                  },
                                  text: 'Search',
                                  options: FFButtonOptions(
                                    height: 56.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Wrap(
                              spacing: 8.0,
                              runSpacing: 8.0,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    if (_model.paginatedDataTableController
                                        .selectedRows
                                        .toList()
                                        .isNotEmpty) {
                                      var confirmDialogResponse =
                                          await showDialog<bool>(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    title: Text('delete ?'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext,
                                                                false),
                                                        child: Text('Cancel'),
                                                      ),
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext,
                                                                true),
                                                        child: Text('Confirm'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ) ??
                                              false;
                                      if (confirmDialogResponse) {
                                        _model.selectedIDList = functions
                                            .getSelectedIdList(
                                                _model.dataList.toList(),
                                                _model
                                                    .paginatedDataTableController
                                                    .selectedRows
                                                    .toList())
                                            .toList()
                                            .cast<int>();
                                        setState(() {});
                                        _model.apiResult2sk =
                                            await DeletedataCall.call(
                                          token: currentUserData?.token,
                                          uid: currentUserData?.id?.toString(),
                                          id: (List<int> list) {
                                            return list.join(',');
                                          }(_model.selectedIDList.toList()),
                                          cmd: widget.cmd,
                                          api: FFAppConstants.apiPath,
                                        );
                                        if ((_model.apiResult2sk?.succeeded ??
                                            true)) {
                                          if (GeneralDataStruct.maybeFromMap(
                                                      (_model.apiResult2sk
                                                              ?.jsonBody ??
                                                          ''))
                                                  ?.status ==
                                              1) {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text(getJsonField(
                                                    (_model.apiResult2sk
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.msg''',
                                                  ).toString()),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
                                                      child: Text('Ok'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                            if (Navigator.of(context)
                                                .canPop()) {
                                              context.pop();
                                            }
                                            context.pushNamed(
                                              'UserListPage',
                                              queryParameters: {
                                                'cmd': serializeParam(
                                                  'news',
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text(getJsonField(
                                                    (_model.apiResult2sk
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.msg''',
                                                  ).toString()),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
                                                      child: Text('Ok'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          }
                                        } else {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text((_model.apiResult2sk
                                                        ?.exceptionMessage ??
                                                    '')),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        }
                                      }
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('no selected row.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    }

                                    setState(() {});
                                  },
                                  text: 'ลบ',
                                  icon: Icon(
                                    Icons.delete_rounded,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: 150.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).error,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 650.0,
                      decoration: BoxDecoration(),
                      child: Builder(
                        builder: (context) {
                          final dataTmpList = _model.dataList.toList();
                          return FlutterFlowDataTable<dynamic>(
                            controller: _model.paginatedDataTableController,
                            data: dataTmpList,
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
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: SelectionArea(
                                      child: Text(
                                    'ชื่อ-สกุล',
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
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: SelectionArea(
                                      child: Text(
                                    'จัดการ',
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
                            dataRowBuilder: (dataTmpListItem, dataTmpListIndex,
                                    selected, onSelectChanged) =>
                                DataRow(
                              selected: selected,
                              onSelectChanged: onSelectChanged,
                              color: MaterialStateProperty.all(
                                dataTmpListIndex % 2 == 0
                                    ? FlutterFlowTheme.of(context)
                                        .secondaryBackground
                                    : FlutterFlowTheme.of(context)
                                        .primaryBackground,
                              ),
                              cells: [
                                SelectionArea(
                                    child: Text(
                                  getJsonField(
                                    dataTmpListItem,
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
                                    dataTmpListItem,
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
                                    dataTmpListItem,
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
                                  functions.getStatusText(getJsonField(
                                    dataTmpListItem,
                                    r'''$.status''',
                                  ).toString()),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: () {
                                          if (GeneralDataStruct.maybeFromMap(
                                                      dataTmpListItem)
                                                  ?.status ==
                                              0) {
                                            return FlutterFlowTheme.of(context)
                                                .tertiary;
                                          } else if (GeneralDataStruct
                                                      .maybeFromMap(
                                                          dataTmpListItem)
                                                  ?.status ==
                                              1) {
                                            return FlutterFlowTheme.of(context)
                                                .success;
                                          } else if (GeneralDataStruct
                                                      .maybeFromMap(
                                                          dataTmpListItem)
                                                  ?.status ==
                                              2) {
                                            return FlutterFlowTheme.of(context)
                                                .error;
                                          } else {
                                            return Color(0x00000000);
                                          }
                                        }(),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                )),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 8.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            'UserFormPage',
                                            queryParameters: {
                                              'id': serializeParam(
                                                getJsonField(
                                                  dataTmpListItem,
                                                  r'''$.id''',
                                                ),
                                                ParamType.int,
                                              ),
                                              'cmd': serializeParam(
                                                widget.cmd,
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );

                                          if (Navigator.of(context).canPop()) {
                                            context.pop();
                                          }
                                          context.pushNamed(
                                            'UserListPage',
                                            queryParameters: {
                                              'cmd': serializeParam(
                                                widget.cmd,
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: Icon(
                                          Icons.edit_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          size: 28.0,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        var confirmDialogResponse =
                                            await showDialog<bool>(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text('delete?'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  false),
                                                          child: Text('Cancel'),
                                                        ),
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  true),
                                                          child:
                                                              Text('Confirm'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                ) ??
                                                false;
                                        if (confirmDialogResponse) {
                                          _model.apiResulthok =
                                              await DeletedataCall.call(
                                            token: currentUserData?.token,
                                            uid:
                                                currentUserData?.id?.toString(),
                                            id: getJsonField(
                                              dataTmpListItem,
                                              r'''$.id''',
                                            ).toString(),
                                            cmd: widget.cmd,
                                            api: FFAppConstants.apiPath,
                                          );
                                          if ((_model.apiResulthok?.succeeded ??
                                              true)) {
                                            if (GeneralDataStruct.maybeFromMap(
                                                        (_model.apiResulthok
                                                                ?.jsonBody ??
                                                            ''))
                                                    ?.status ==
                                                1) {
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    title: Text(getJsonField(
                                                      (_model.apiResulthok
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.msg''',
                                                    ).toString()),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: Text('Ok'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                              _model
                                                  .paginatedDataTableController
                                                  .paginatorController
                                                  .goToFirstPage();
                                              await Future.delayed(
                                                  const Duration(
                                                      milliseconds: 500));
                                              _model.pageIndex = 1;
                                              _model.apiResultrcy2 =
                                                  await DatalistCall.call(
                                                sortField:
                                                    _model.dropDownValue1,
                                                sortKey: _model.dropDownValue2,
                                                start: '0',
                                                keyword:
                                                    _model.textController.text,
                                                cmd: widget.cmd,
                                                api: FFAppConstants.apiPath,
                                              );
                                              if ((_model.apiResultrcy2
                                                      ?.succeeded ??
                                                  true)) {
                                                _model.dataList = getJsonField(
                                                  (_model.apiResultrcy2
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.data''',
                                                  true,
                                                )!
                                                    .toList()
                                                    .cast<dynamic>();
                                                _model.sortKey =
                                                    _model.dropDownValue1!;
                                                _model.sortField =
                                                    _model.dropDownValue2!;
                                                _model.pageTotal = getJsonField(
                                                  (_model.apiResultrcy2
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.total''',
                                                );
                                              }
                                            } else {
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    title: Text(getJsonField(
                                                      (_model.apiResulthok
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.msg''',
                                                    ).toString()),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: Text('Ok'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            }
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text((_model
                                                          .apiResulthok
                                                          ?.exceptionMessage ??
                                                      '')),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
                                                      child: Text('Ok'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          }
                                        }

                                        setState(() {});
                                      },
                                      child: Icon(
                                        Icons.delete_rounded,
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        size: 28.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ].map((c) => DataCell(c)).toList(),
                            ),
                            onPageChanged: (currentRowIndex) async {
                              _model.apiResultyhb = await DatalistCall.call(
                                start: _model.pageIndex.toString(),
                                sortField: _model.dropDownValue1,
                                sortKey: _model.dropDownValue2,
                                keyword: _model.textController.text,
                                cmd: widget.cmd,
                                api: FFAppConstants.apiPath,
                              );
                              if ((_model.apiResultyhb?.succeeded ?? true)) {
                                _model.pageIndex = _model.pageIndex + 1;
                                _model.dataList = functions
                                    .addNewList(
                                        dataTmpList.toList(),
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
                            selectable: true,
                            hidePaginator: false,
                            showFirstLastButtons: false,
                            minWidth: 800.0,
                            headingRowHeight: 75.0,
                            dataRowHeight: 48.0,
                            columnSpacing: 20.0,
                            headingRowColor:
                                FlutterFlowTheme.of(context).primary,
                            borderRadius: BorderRadius.circular(0.0),
                            addHorizontalDivider: true,
                            addTopAndBottomDivider: false,
                            hideDefaultHorizontalDivider: true,
                            horizontalDividerColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            horizontalDividerThickness: 1.0,
                            addVerticalDivider: false,
                            checkboxUnselectedFillColor: Colors.transparent,
                            checkboxSelectedFillColor: Colors.transparent,
                            checkboxCheckColor: Color(0x8A000000),
                            checkboxUnselectedBorderColor: Color(0x8A000000),
                            checkboxSelectedBorderColor: Color(0x8A000000),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              wrapWithModel(
                model: _model.menuButtonViewModel,
                updateCallback: () => setState(() {}),
                child: MenuButtonViewWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
