import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_profile_auth2_widget.dart' show EditProfileAuth2Widget;
import 'package:flutter/material.dart';

class EditProfileAuth2Model extends FlutterFlowModel<EditProfileAuth2Widget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for fn widget.
  FocusNode? fnFocusNode;
  TextEditingController? fnTextController;
  String? Function(BuildContext, String?)? fnTextControllerValidator;
  // State field(s) for mn widget.
  FocusNode? mnFocusNode;
  TextEditingController? mnTextController;
  String? Function(BuildContext, String?)? mnTextControllerValidator;
  // State field(s) for ln widget.
  FocusNode? lnFocusNode;
  TextEditingController? lnTextController;
  String? Function(BuildContext, String?)? lnTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioTextController;
  String? Function(BuildContext, String?)? myBioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fnFocusNode?.dispose();
    fnTextController?.dispose();

    mnFocusNode?.dispose();
    mnTextController?.dispose();

    lnFocusNode?.dispose();
    lnTextController?.dispose();

    myBioFocusNode?.dispose();
    myBioTextController?.dispose();
  }
}
