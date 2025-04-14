import 'package:flutter/material.dart';

class PetalIcon extends StatelessWidget {
  const PetalIcon(this.icon, {
    super.key,
    this.size = 18
  });

  final IconData icon;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Colors.grey.shade300,
      size: size,
    );
  }
}