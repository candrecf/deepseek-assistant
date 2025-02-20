import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_d_s_widget.dart' show HomeDSWidget;
import 'package:flutter/material.dart';

class HomeDSModel extends FlutterFlowModel<HomeDSWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for inputMessage widget.
  FocusNode? inputMessageFocusNode;
  TextEditingController? inputMessageTextController;
  String? Function(BuildContext, String?)? inputMessageTextControllerValidator;
  // Stores action output result for [Backend Call - API (DeepSeek R)] action in Button widget.
  ApiCallResponse? apiResult6yp2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputMessageFocusNode?.dispose();
    inputMessageTextController?.dispose();
  }
}
