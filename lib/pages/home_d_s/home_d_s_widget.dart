import '/backend/api_requests/api_calls.dart';
import '/backend/api_requests/api_streaming.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_d_s_model.dart';
export 'home_d_s_model.dart';

class HomeDSWidget extends StatefulWidget {
  const HomeDSWidget({super.key});

  static String routeName = 'homeDS';
  static String routePath = '/homeDS';

  @override
  State<HomeDSWidget> createState() => _HomeDSWidgetState();
}

class _HomeDSWidgetState extends State<HomeDSWidget> {
  late HomeDSModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeDSModel());

    _model.inputMessageTextController ??= TextEditingController();
    _model.inputMessageFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'DeepSeek - Assistente',
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
                child: Builder(
                  builder: (context) {
                    final messageItem = FFAppState().messages.toList();

                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: messageItem.length,
                      itemBuilder: (context, messageItemIndex) {
                        final messageItemItem = messageItem[messageItemIndex];
                        return Stack(
                          children: [
                            if ((messageItemItem.role == 'assistant') &&
                                ((messageItemItem.text != '') ||
                                    (messageItemItem.reasoning != '')))
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 4.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Container(
                                          constraints: BoxConstraints(
                                            maxWidth: 300.0,
                                          ),
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              if (messageItemItem.reasoning !=
                                                      '')
                                                Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent2,
                                                    elevation: 0.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(10.0),
                                                      child: Text(
                                                        messageItemItem
                                                            .reasoning
                                                            .trim(),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              if (messageItemItem.text != '')
                                                Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Text(
                                                    messageItemItem.text.trim(),
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            if (messageItemItem.role == 'user')
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 4.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Container(
                                          constraints: BoxConstraints(
                                            maxWidth: 300.0,
                                          ),
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Text(
                                              messageItemItem.text.trim(),
                                              textAlign: TextAlign.end,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: TextFormField(
                          controller: _model.inputMessageTextController,
                          focusNode: _model.inputMessageFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.inputMessageTextController',
                            Duration(milliseconds: 2000),
                            () => safeSetState(() {}),
                          ),
                          autofocus: true,
                          textInputAction: TextInputAction.send,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Escreva algo ...',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            suffixIcon: _model
                                    .inputMessageTextController!.text.isNotEmpty
                                ? InkWell(
                                    onTap: () async {
                                      _model.inputMessageTextController
                                          ?.clear();
                                      safeSetState(() {});
                                    },
                                    child: Icon(
                                      Icons.clear,
                                      size: 22,
                                    ),
                                  )
                                : null,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          validator: _model.inputMessageTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        // create new
                        FFAppState().addToMessages(MessageTypeStruct(
                          text: _model.inputMessageTextController.text,
                          role: 'user',
                          ts: getCurrentTimestamp,
                        ));
                        safeSetState(() {});
                        // create new assistant message
                        FFAppState().addToMessages(MessageTypeStruct(
                          text: '',
                          role: 'assistant',
                          ts: getCurrentTimestamp,
                        ));
                        safeSetState(() {});
                        _model.apiResult6yp2 = await DeepSeekRCall.call(
                          request: _model.inputMessageTextController.text,
                          stream: true,
                        );
                        if (_model.apiResult6yp2?.succeeded ?? true) {
                          _model.apiResult6yp2?.streamedResponse?.stream
                              .transform(utf8.decoder)
                              .transform(const LineSplitter())
                              .transform(ServerSentEventLineTransformer())
                              .map((m) => ResponseStreamMessage(message: m))
                              .listen(
                            (onMessageInput) async {
                              if (onMessageInput.serverSentEvent.jsonData !=
                                  null) {
                                if (ResponseTypeStruct.maybeFromMap(
                                                onMessageInput
                                                    .serverSentEvent.jsonData)
                                            ?.choices
                                            .firstOrNull
                                            ?.delta
                                            .reasoning !=
                                        null &&
                                    ResponseTypeStruct.maybeFromMap(
                                                onMessageInput
                                                    .serverSentEvent.jsonData)
                                            ?.choices
                                            .firstOrNull
                                            ?.delta
                                            .reasoning !=
                                        '') {
                                  // reasoning (append)
                                  FFAppState().updateMessagesAtIndex(
                                    FFAppState().messages.length - 1,
                                    (e) => e
                                      ..role = 'assistant'
                                      ..reasoning =
                                          '${FFAppState().messages.lastOrNull?.reasoning}${ResponseTypeStruct.maybeFromMap(onMessageInput.serverSentEvent.jsonData)?.choices.firstOrNull?.delta.reasoning}',
                                  );
                                  safeSetState(() {});
                                } else {
                                  if (FFAppState().messages.lastOrNull?.role ==
                                      'assistant') {
                                    // content (append)
                                    FFAppState().updateMessagesAtIndex(
                                      FFAppState().messages.length - 1,
                                      (e) => e
                                        ..role = 'assistant'
                                        ..text =
                                            '${FFAppState().messages.lastOrNull?.text}${ResponseTypeStruct.maybeFromMap(onMessageInput.serverSentEvent.jsonData)?.choices.firstOrNull?.delta.content}',
                                    );
                                    safeSetState(() {});
                                  }
                                }

                                safeSetState(() {
                                  _model.inputMessageTextController?.clear();
                                });
                              }
                            },
                            onError: (onErrorInput) async {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Error',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                            },
                            onDone: () async {},
                          );
                        }

                        safeSetState(() {});
                      },
                      text: 'Enviar',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
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
      ),
    );
  }
}
