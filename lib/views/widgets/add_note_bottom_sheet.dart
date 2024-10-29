import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_button.dart';
import 'package:nots_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            labelText: 'Title',
            maxLines: 2,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSaved: (value) {
              content = value;
            },
            labelText: 'Content',
            maxLines: 6,
          ),
          const SizedBox(
            height: 120,
          ),
          CustomButton(() {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
            } else {
              autovalidateMode = AutovalidateMode.always;
              setState(() {});
            }
          }, text: 'Add'),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
