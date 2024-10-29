import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:nots_app/views/widgets/nots_view_body.dart';

class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotsViewBody(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 10, bottom: 10),
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                });
          },
          backgroundColor: const Color.fromARGB(255, 10, 208, 171),
          child: const Icon(
            Icons.add,
            color: Colors.black,
            size: 32,
          ),
        ),
      ),
    );
  }
}
