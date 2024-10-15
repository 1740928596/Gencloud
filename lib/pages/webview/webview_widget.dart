import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/pages/navbar_expanding_dark/navbar_expanding_dark_widget.dart';
import 'package:flutter/material.dart';
import 'webview_model.dart';
export 'webview_model.dart';

class WebviewWidget extends StatefulWidget {
  const WebviewWidget({super.key});

  @override
  State<WebviewWidget> createState() => _WebviewWidgetState();
}

class _WebviewWidgetState extends State<WebviewWidget> {
  late WebviewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WebviewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Flexible(
            child: FlutterFlowWebView(
              content: 'https://frp-any.top:51611/',
              bypass: false,
              height: 852.0,
              verticalScroll: false,
              horizontalScroll: false,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: wrapWithModel(
                  model: _model.navbarExpandingDarkModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const NavbarExpandingDarkWidget(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
