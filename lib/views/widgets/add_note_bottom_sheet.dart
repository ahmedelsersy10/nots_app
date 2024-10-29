import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_button.dart';
import 'package:nots_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomTextField(
            labelText: 'Title',
            contentPadding: const EdgeInsets.only(top: 50, left: 16),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            labelText: 'Content',
            contentPadding:
                const EdgeInsets.only(top: 80, bottom: 80, left: 16),
          ),
          const SizedBox(
            height: 120,
          ),
          CustomButton(() {}, text: 'Add')
        ],
      ),
    );
  }
}
