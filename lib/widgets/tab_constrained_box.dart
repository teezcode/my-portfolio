import 'package:flutter/material.dart';

class TabConstrainedBox extends StatelessWidget {
  final Widget child;
  final bool rightConstraint;
  final bool leftConstraint;
  const TabConstrainedBox({
    super.key,
    required this.child,
    this.rightConstraint = true,
    this.leftConstraint = true,
  });

  static const desktopPadding = 60.0;

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
