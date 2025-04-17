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
      height: height,
      child: TextField(
        controller: controller,
        obscureText: obscure,
        expands: !obscure,
        maxLines: obscure ? 1 : null,
        minLines: obscure ? 1 : null,
        textAlignVertical: TextAlignVertical.top,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 12,
        ),
        decoration: InputDecoration(
          isDense: true,
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.grey.shade300,
            fontSize: 12,
          ),
          contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
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
