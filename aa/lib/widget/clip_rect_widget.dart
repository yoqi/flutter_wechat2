import 'package:flutter/material.dart';
import 'package:skybot/core.dart';

class ClipRectWidget extends StatelessWidget {
  Widget child;
  double? radius;

  ClipRectWidget({required this.child, this.radius, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        radius ?? 12.w,
      ),
      child: child,
    );
  }
}