import '/flutter_flow/flutter_flow_util.dart';
import '/pages/navbar_expanding_dark/navbar_expanding_dark_widget.dart';
import 'webview_widget.dart' show WebviewWidget;
import 'package:flutter/material.dart';

class WebviewModel extends FlutterFlowModel<WebviewWidget> {
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
