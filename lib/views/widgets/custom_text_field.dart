import 'package:flutter/material.dart';
import 'package:nots_app/consants.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  // ignore: non_constant_identifier_names
  CustomTextField({
    Key? key,
    required this.labelText,
    this.onChanged,
    this.obscureText = false,
    this.contentPadding,
  }) : super(key: key);

  final String labelText;
  Function(String)? onChanged;
  final bool obscureText;
  final dynamic contentPadding;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: (data) {
        if (data!.isEmpty) {
          return ' value is wrong';
        }
        return null;
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: contentPadding,
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
