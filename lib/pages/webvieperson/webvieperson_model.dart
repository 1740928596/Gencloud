import '/flutter_flow/flutter_flow_util.dart';
import '/pages/navbar_expanding_dark/navbar_expanding_dark_widget.dart';
import 'webvieperson_widget.dart' show WebviepersonWidget;
import 'package:flutter/material.dart';

class WebviepersonModel extends FlutterFlowModel<WebviepersonWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Navbar_ExpandingDark component.
  late NavbarExpandingDarkModel navbarExpandingDarkModel;

  @override
  void initState(BuildContext context) {
    navbarExpandingDarkModel =
        createModel(context, () => NavbarExpandingDarkModel());
  }

  @override
  void dispose() {
    navbarExpandingDarkModel.dispose();
  }
}
