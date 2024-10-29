import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_app_bar.dart';
import 'package:nots_app/views/widgets/custom_text_field.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 50,
          left: 18,
          right: 18,
        ),
        child: Column(
          children: [
            CustomAppBar(
              text: 'Edit Note',
              icons: Icons.check,
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextField(
              labelText: 'Title',
              contentPadding: EdgeInsets.only(top: 50, left: 16),
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              labelText: 'Content',
              contentPadding: EdgeInsets.only(top: 80, bottom: 80, left: 16),
            ),
          ],
        ),
      ),
    );
  }
}
