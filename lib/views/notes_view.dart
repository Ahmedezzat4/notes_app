import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/Add_noteBottomSheet.dart';

import 'widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 3, 39, 102),
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(24)),
              context: context,
              builder: (context) {
                return addNoteBottumSheet();
              });
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
