import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Container(
        width: 60, // حجم الزر
        height: 60,
        decoration: BoxDecoration(
            color: Colors.grey[850], // لون الخلفية الداكنة
            borderRadius: BorderRadius.circular(16) // شكل دائري
            ),
        child: Icon(
          icon,
          size: 33,
          color: Colors.white,
        ),
      ),
    );
  }
}
