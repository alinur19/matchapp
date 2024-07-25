import '/flutter_flow/flutter_flow_util.dart';
import 'tournament_page_widget.dart' show TournamentPageWidget;
import 'package:flutter/material.dart';

class TournamentPageModel extends FlutterFlowModel<TournamentPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
