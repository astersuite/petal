import 'package:flutter/material.dart';

class PetalBox extends StatelessWidget {
  const PetalBox({
    super.key, 
    this.width,
    this.height,
    this.color = Colors.white,
    this.padding,
    this.outerPadding,
    this.child,
  });

  final double? width;
  final double? height;
  final Color color;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? outerPadding;

  @override
  Widget build(BuildContext context) {
    return box();
  }

  Widget box() {
    return Padding(
      padding: outerPadding ?? EdgeInsets.zero,
      child: Container(
        width: width, 
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.grey.shade300, width: 1),
          borderRadius: BorderRadius.circular(4)
        ),
        child: child,
      ),
    );
  }
}