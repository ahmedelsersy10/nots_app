import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
  });

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
          Icons.search,
          size: 33,
          color: Colors.white,
        ),
      ),
    );
  }
}
