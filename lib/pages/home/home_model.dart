import '/flutter_flow/flutter_flow_util.dart';
import '/pages/navbar_expanding_dark/navbar_expanding_dark_widget.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

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
