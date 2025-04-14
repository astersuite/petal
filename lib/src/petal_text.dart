import 'package:flutter/material.dart';

class PetalText extends StatelessWidget {
  const PetalText(this.text, {
    super.key,
    this.size = 12,
    this.color = Colors.black,
    this.bold = false
  });

  final String text;
  final double size;
  final Color color;
  final bool bold;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal
      ),
    );
  }
}