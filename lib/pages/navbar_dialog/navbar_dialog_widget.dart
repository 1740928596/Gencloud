import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'navbar_dialog_model.dart';
export 'navbar_dialog_model.dart';

class NavbarDialogWidget extends StatefulWidget {
  const NavbarDialogWidget({super.key});

  @override
  State<NavbarDialogWidget> createState() => _NavbarDialogWidgetState();
}

class _NavbarDialogWidgetState extends State<NavbarDialogWidget> {
  late NavbarDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarDialogModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
      child: Stack(
        alignment: const AlignmentDirectional(0.0, 1.0),
        children: [
          const Icon(
            FFIcons.karrowBigDownFilled,
            color: Color(0xFFFE0024),
            size: 24.0,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFE0024),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 4.0, 10.0, 4.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                      child: Icon(
                        FFIcons.kuser,
                        color: FlutterFlowTheme.of(context).info,
                        size: 18.0,
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        '14lfodyw' /* 5 */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).info,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
