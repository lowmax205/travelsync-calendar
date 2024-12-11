import '/components/profile_edit_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for profile_edit component.
  late ProfileEditModel profileEditModel;

  @override
  void initState(BuildContext context) {
    profileEditModel = createModel(context, () => ProfileEditModel());
  }

  @override
  void dispose() {
    profileEditModel.dispose();
  }
}
