import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_AppBar.dart';
import 'package:notes_app/views/widgets/custom_textFeild.dart';

class EditNoteVeiwBody extends StatefulWidget {
  final NoteModel note;

  const EditNoteVeiwBody({super.key, required this.note});

  @override
  State<EditNoteVeiwBody> createState() => _EditNoteVeiwBodyState();
}

class _EditNoteVeiwBodyState extends State<EditNoteVeiwBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomAppbar(
            title: 'Edit Note',
            icon: (Icons.check),
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            },
          ),
          const SizedBox(height: 50),
          CustomTextfeild(
            hint: ' Update Title',
            onChange: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomTextfeild(
            hint: 'Update Content',
            maxline: 5,
            onChange: (value) {
              content = value;
            },
          ),
        ],
      ),
    );
  }
}
