import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_NoteItem.dart';

class NotesListtview extends StatelessWidget {
  const NotesListtview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: NoteItem(),
      );
    });
  }
}
