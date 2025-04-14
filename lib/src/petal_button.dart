import 'package:flutter/material.dart';
import 'package:petal/petal.dart';
import 'package:petal/src/petal_box.dart';
import 'package:petal/src/petal_icon.dart';

class PetalButton extends StatefulWidget {
  const PetalButton({
    super.key, 
    required this.onClick,
    this.text,
    this.icon,
  });

  final VoidCallback onClick;
  final String? text;
  final IconData? icon;

  @override
  State<PetalButton> createState() => _PetalButtonState();
}

class _PetalButtonState extends State<PetalButton> {
  Color buttonColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    assert((widget.text == null) ^ (widget.icon == null));

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setColor(Colors.grey.shade100);
      },
      onExit: (_) {
        setColor(Colors.white);
      },
      child: GestureDetector(
        onTap: () {
          widget.onClick();
        },
        child: button()
      ),
    );
  }

  void setColor(Color color) {
    setState(() {
      buttonColor = color;
    });
  }

  Widget button() {
    return PetalBox(
      color: buttonColor,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: widget.text != null ? PetalText(widget.text!) : PetalIcon(widget.icon!),
    ); 
  }
}