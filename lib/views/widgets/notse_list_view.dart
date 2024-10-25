import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/notse_item.dart';

class NotseListView extends StatelessWidget {
  const NotseListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: const NotseItem(),
        );
      },
      itemCount: 10,
    );
  }
}
