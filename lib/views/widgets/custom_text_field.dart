import 'package:flutter/material.dart';
import 'package:nots_app/consants.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const CustomTextField({
    Key? key,
    required this.labelText,
    this.maxLines = 1,
  }) : super(key: key);

  final String labelText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(
          color: KPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: KPrimaryColor,
              width: 2,
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.white,
              width: 2,
            )),
      ),
    );
  }
}
