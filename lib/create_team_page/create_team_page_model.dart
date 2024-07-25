import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_team_page_widget.dart' show CreateTeamPageWidget;
import 'package:flutter/material.dart';

class CreateTeamPageModel extends FlutterFlowModel<CreateTeamPageWidget> {
  ///  Local state fields for this page.

  bool isTeamCreated = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  TeamRecord? teamCreated;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
