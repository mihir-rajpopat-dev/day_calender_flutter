import 'package:flutter/material.dart';

import '../constants.dart';

class ResponsiveWidget extends StatelessWidget {
  final double? width;
  final double breakPoint;

  final Widget mobileWidget;

  const ResponsiveWidget({
    super.key,
    this.width,
    this.breakPoint = BreakPoints.web,
    required this.mobileWidget,
  });

  @override
  Widget build(BuildContext context) {
    final width = this.width ?? MediaQuery.of(context).size.width;

    return mobileWidget;
  }
}
