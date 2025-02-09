import 'package:flutter/material.dart';
import 'package:flutter_responsive/dimens.dart';
import 'package:flutter_responsive/pages/responsive/desktop_view.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget desktopScreen;
  final Widget mobileScreen;
  const ResponsiveBuilder(
      {super.key, required this.desktopScreen, required this.mobileScreen});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // return MobileView();
        if (constraints.maxWidth < 600) {
          return desktopScreen;
        } else {
          // for Mobile View
          return mobileScreen;
        }
      },
    );
  }
}
