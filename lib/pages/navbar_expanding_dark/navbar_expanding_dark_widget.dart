import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'navbar_expanding_dark_model.dart';
export 'navbar_expanding_dark_model.dart';

class NavbarExpandingDarkWidget extends StatefulWidget {
  const NavbarExpandingDarkWidget({super.key});

  @override
  State<NavbarExpandingDarkWidget> createState() =>
      _NavbarExpandingDarkWidgetState();
}

class _NavbarExpandingDarkWidgetState extends State<NavbarExpandingDarkWidget>
    with TickerProviderStateMixin {
  late NavbarExpandingDarkModel _model;

  var hasTextTriggered1 = false;
  var hasTextTriggered2 = false;
  var hasTextTriggered3 = false;
  var hasTextTriggered4 = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarExpandingDarkModel());

    animationsMap.addAll({
      'textOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          VisibilityEffect(duration: 150.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          VisibilityEffect(duration: 150.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnActionTriggerAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          VisibilityEffect(duration: 150.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF181818),
          boxShadow: [
            BoxShadow(
              blurRadius: 15.0,
              color: Color(0x0F000000),
              offset: Offset(
                0.0,
                4.0,
              ),
            )
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12.0),
            bottomRight: Radius.circular(12.0),
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 20.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  _model.number = 0;
                  safeSetState(() {});
                  if (animationsMap['textOnActionTriggerAnimation1'] != null) {
                    safeSetState(() => hasTextTriggered1 = true);
                    SchedulerBinding.instance.addPostFrameCallback((_) async =>
                        await animationsMap['textOnActionTriggerAnimation1']!
                            .controller
                            .forward(from: 0.0));
                  }

                  context.pushNamed('Home');
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  width: _model.number == 0 ? 89.0 : 43.0,
                  height: 38.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      _model.number == 0
                          ? const Color(0xFF0F0F0F)
                          : const Color(0xFF181818),
                      const Color(0xFF0F0F0F),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: const Color(0xFF272727),
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(9.0, 7.0, 9.0, 7.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Icon(
                          Icons.home,
                          color: Color(0xFFF2F2F2),
                          size: 20.0,
                        ),
                        if (_model.number == 0)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 7.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '7ihcdc87' /* Home */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: const Color(0xFFF2F2F2),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ).animateOnActionTrigger(
                                animationsMap['textOnActionTriggerAnimation1']!,
                                hasBeenTriggered: hasTextTriggered1),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  _model.number = 1;
                  safeSetState(() {});
                  if (animationsMap['textOnActionTriggerAnimation2'] != null) {
                    safeSetState(() => hasTextTriggered2 = true);
                    SchedulerBinding.instance.addPostFrameCallback((_) async =>
                        await animationsMap['textOnActionTriggerAnimation2']!
                            .controller
                            .forward(from: 0.0));
                  }

                  context.pushNamed('webview');
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  width: _model.number == 1 ? 95.0 : 43.0,
                  height: 38.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      _model.number == 1
                          ? const Color(0xFF0F0F0F)
                          : const Color(0xFF181818),
                      const Color(0xFF0F0F0F),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: const Color(0xFF272727),
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(9.0, 7.0, 9.0, 7.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Icon(
                          Icons.cloud_circle_sharp,
                          color: Color(0xFFF2F2F2),
                          size: 20.0,
                        ),
                        if (_model.number == 1)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 7.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '5ubxbqr1' /* my cloud */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: const Color(0xFFF2F2F2),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ).animateOnActionTrigger(
                                animationsMap['textOnActionTriggerAnimation2']!,
                                hasBeenTriggered: hasTextTriggered2),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  _model.number = 2;
                  safeSetState(() {});
                  if (animationsMap['textOnActionTriggerAnimation3'] != null) {
                    safeSetState(() => hasTextTriggered3 = true);
                    SchedulerBinding.instance.addPostFrameCallback((_) async =>
                        await animationsMap['textOnActionTriggerAnimation3']!
                            .controller
                            .forward(from: 0.0));
                  }

                  context.pushNamed('chat');
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  width: _model.number == 2 ? 108.0 : 43.0,
                  height: 38.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      _model.number == 2
                          ? const Color(0xFF0F0F0F)
                          : const Color(0xFF181818),
                      const Color(0xFF0F0F0F),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: const Color(0xFF272727),
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(9.0, 7.0, 9.0, 7.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Icon(
                          Icons.chat,
                          color: Color(0xFFF2F2F2),
                          size: 20.0,
                        ),
                        if (_model.number == 2)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 7.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'm5mmyro1' /* chat */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: const Color(0xFFF2F2F2),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ).animateOnActionTrigger(
                                animationsMap['textOnActionTriggerAnimation3']!,
                                hasBeenTriggered: hasTextTriggered3),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  _model.number = 4;
                  safeSetState(() {});
                  if (animationsMap['textOnActionTriggerAnimation4'] != null) {
                    safeSetState(() => hasTextTriggered4 = true);
                    SchedulerBinding.instance.addPostFrameCallback((_) async =>
                        await animationsMap['textOnActionTriggerAnimation4']!
                            .controller
                            .forward(from: 0.0));
                  }

                  context.pushNamed('setting');
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  width: _model.number == 4 ? 92.0 : 43.0,
                  height: 38.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      _model.number == 4
                          ? const Color(0xFF0F0F0F)
                          : const Color(0xFF181818),
                      const Color(0xFF0F0F0F),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: const Color(0xFF272727),
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(9.0, 7.0, 9.0, 7.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Icon(
                          Icons.face_outlined,
                          color: Color(0xFFF2F2F2),
                          size: 20.0,
                        ),
                        if (_model.number == 4)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 7.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'l8dh3iro' /* Profile */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: const Color(0xFFF2F2F2),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ).animateOnActionTrigger(
                                animationsMap['textOnActionTriggerAnimation4']!,
                                hasBeenTriggered: hasTextTriggered4),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ].divide(const SizedBox(width: 0.0)),
          ),
        ),
      ),
    );
  }
}
