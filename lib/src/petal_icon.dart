import 'package:flutter/material.dart';

class PetalIcon extends StatelessWidget {
  const PetalIcon(this.icon, {
    super.key
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon
    );
  }
}