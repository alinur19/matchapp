import '/flutter_flow/flutter_flow_util.dart';
import 'trend_page_widget.dart' show TrendPageWidget;
import 'package:flutter/material.dart';

class TrendPageModel extends FlutterFlowModel<TrendPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
