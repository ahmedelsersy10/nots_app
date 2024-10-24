import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
        ),
        CustomIconButton(),
      ],
    );
  }
}
