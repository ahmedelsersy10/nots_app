import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/notse_item.dart';

class NotseListView extends StatelessWidget {
  const NotseListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: NotseItem(),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
