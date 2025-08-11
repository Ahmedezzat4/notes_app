import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_NoteItem.dart';

import 'custom_AppBar.dart';

class NotesViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppbar(),
          NoteItem()
        ],
      ),
    );
  }
}
