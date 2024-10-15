import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/pages/navbar_expanding_dark/navbar_expanding_dark_widget.dart';
import 'package:flutter/material.dart';
import 'webvieperson_model.dart';
export 'webvieperson_model.dart';

class WebviepersonWidget extends StatefulWidget {
  const WebviepersonWidget({super.key});

  @override
  State<WebviepersonWidget> createState() => _WebviepersonWidgetState();
}

class _WebviepersonWidgetState extends State<WebviepersonWidget> {
  late WebviepersonModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WebviepersonModel());

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
              content: 'http://localhost:5212',
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
