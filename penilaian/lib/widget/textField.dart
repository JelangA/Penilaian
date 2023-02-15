// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class TextfieldW extends StatelessWidget {
  final Color? color;
  final String? hint;
  final Icon? icon;

  const TextfieldW({super.key,  this.color, this.hint, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: icon,
        hintText: hint,
        filled: true,
        fillColor: color ?? Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
