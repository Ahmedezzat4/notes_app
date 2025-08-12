import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_NoteItem.dart';

class NotesListtview extends StatelessWidget {
  NotesListtview({super.key});

  final ListOfColor = [
    const Color.fromARGB(255, 247, 172, 197),
    const Color.fromARGB(255, 252, 221, 126),
    const Color.fromARGB(255, 154, 238, 197),
    const Color.fromARGB(255, 144, 219, 230),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: ListView.builder(itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: NoteItem(
            noteColor: ListOfColor[index % ListOfColor.length],
          ),
        );
      }),
    );
  }
}
