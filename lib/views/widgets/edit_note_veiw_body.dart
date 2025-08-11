import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_AppBar.dart';
import 'package:notes_app/views/widgets/custom_textFeild.dart';

class EditNoteVeiwBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppbar(
            title: 'Edit Note',
            icon: (Icons.check),
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextfeild(
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextfeild(
            hint: 'Content',
            maxline: 5,
          ),
        ],
      ),
    );
  }
}
