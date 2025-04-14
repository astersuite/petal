import 'package:flutter/material.dart';
import 'package:petal/src/petal_text.dart';

class PetalTitle extends StatelessWidget {
  const PetalTitle({
    super.key, 
    required this.text,
    this.size = PetalTitleSize.medium,
    this.bold = true,

  });

  final String text;
  final bool bold;
  final PetalTitleSize size;

  @override
  Widget build(BuildContext context) {
    return PetalText(
      text,
      size: _mapSize(),
      bold: bold,
    );
  }

  double _mapSize() {
    return switch (size) {
      PetalTitleSize.small => 16,
      PetalTitleSize.medium => 20,
      PetalTitleSize.large => 24,
      PetalTitleSize.massive => 32,
      PetalTitleSize.elephant => 48,
    };
  }
}

enum PetalTitleSize {
  small,
  medium,
  large,
  massive,
  elephant
}