import 'package:flutter/material.dart';

class PetalField extends StatelessWidget {
  const PetalField({
    super.key, 
    required this.controller,
    this.obscure = false,
    this.hint,
    this.width,
    this.height,
  });

  final TextEditingController controller;
  final bool obscure;
  final String? hint;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? 36,
      child: TextField(
        controller: controller,
        style: TextStyle(
          color: Colors.black,
          fontSize: 12
        ),
        decoration: InputDecoration(
          isDense: true,
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.grey.shade300,
            fontSize: 12
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: Colors.grey.shade400, width: 1.5),
          ),
        ),
      ),
    );
  }
}