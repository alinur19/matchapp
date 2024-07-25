import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'other_profile_page_widget.dart' show OtherProfilePageWidget;
import 'package:flutter/material.dart';

class OtherProfilePageModel extends FlutterFlowModel<OtherProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  NotificationsRecord? notOut;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
