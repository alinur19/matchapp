import '/flutter_flow/flutter_flow_util.dart';
import 'field_page_widget.dart' show FieldPageWidget;
import 'package:flutter/material.dart';

class FieldPageModel extends FlutterFlowModel<FieldPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RatingBar widget.
  double? ratingBarValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
