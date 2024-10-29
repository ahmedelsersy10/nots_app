import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_button.dart';
import 'package:nots_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const CustomTextField(
              labelText: 'Title',
              maxLines: 2,
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              labelText: 'Content',
              maxLines: 6,
            ),
            const SizedBox(
              height: 120,
            ),
            CustomButton(() {}, text: 'Add'),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
