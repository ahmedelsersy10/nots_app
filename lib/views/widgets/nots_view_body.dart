import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_app_bar.dart';

class NotsViewBody extends StatelessWidget {
  const NotsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
      child: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}
