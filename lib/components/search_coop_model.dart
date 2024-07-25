import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_coop_widget.dart' show SearchCoopWidget;
import 'package:flutter/material.dart';

class SearchCoopModel extends FlutterFlowModel<SearchCoopWidget> {
  ///  Local state fields for this component.

  bool search = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<UserRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
