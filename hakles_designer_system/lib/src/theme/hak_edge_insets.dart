import 'package:flutter/material.dart';

class HakEdgeInsets {
  static EdgeInsets paddingDevice(
    BuildContext context, {
    double? top,
    double? left,
    double? bottom,
    double? right,
  }) {
    if (top == null) {
      top = MediaQuery.of(context).size.width > 360.0 ? 24.0 : 16.0;
    }
    if (left == null) {
      left = MediaQuery.of(context).size.width > 360.0 ? 24.0 : 16.0;
    }
    if (bottom == null) {
      bottom = MediaQuery.of(context).size.width > 360.0 ? 24.0 : 16.0;
    }
    if (right == null) {
      right = MediaQuery.of(context).size.width > 360.0 ? 24.0 : 16.0;
    }

    return EdgeInsets.only(
      top: top,
      left: left,
      bottom: bottom,
      right: right,
    );
  }
}
