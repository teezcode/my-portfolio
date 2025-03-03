import 'package:flutter/material.dart';

class DesktopConstrainedBox extends StatelessWidget {
  final Widget child;
  final bool rightConstraint;
  final bool leftConstraint;
  const DesktopConstrainedBox({
    super.key,
    required this.child,
    this.rightConstraint = true,
    this.leftConstraint = true,
  });

  static const desktopPadding = 90.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(
          right: rightConstraint ? desktopPadding : 0,
          left: leftConstraint ? desktopPadding : 0,
        ),
        child: child,
      ),
    );
  }
}
