import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.icons});
  final String text;
  final IconData icons;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
        ),
        CustomIconButton(
          icon: icons,
        ),
      ],
    );
  }
}
