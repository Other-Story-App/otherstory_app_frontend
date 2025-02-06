import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  const BaseContainer(
      {super.key, required this.child, this.width, this.margin, this.padding});

  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final double? width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          color: theme.cardColor, borderRadius: BorderRadius.circular(13)),
      child: child,
    );
  }
}
