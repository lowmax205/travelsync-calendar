import '/flutter_flow/flutter_flow_util.dart';
import 'auth_reset_password_widget.dart' show AuthResetPasswordWidget;
import 'package:flutter/material.dart';

class AuthResetPasswordModel extends FlutterFlowModel<AuthResetPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for resetPassword widget.
  FocusNode? resetPasswordFocusNode;
  TextEditingController? resetPasswordTextController;
  String? Function(BuildContext, String?)? resetPasswordTextControllerValidator;
  // State field(s) for confirmresetPassword widget.
  FocusNode? confirmresetPasswordFocusNode;
  TextEditingController? confirmresetPasswordTextController;
  String? Function(BuildContext, String?)?
      confirmresetPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    resetPasswordFocusNode?.dispose();
    resetPasswordTextController?.dispose();

    confirmresetPasswordFocusNode?.dispose();
    confirmresetPasswordTextController?.dispose();
  }
}
