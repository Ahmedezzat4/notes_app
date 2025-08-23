import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_NoteItem.dart';

class NotesListtview extends StatelessWidget {
  const NotesListtview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];

        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: ListView.builder(
            itemCount: notes.length,

            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: NoteItem(
                  note: notes[index],

                  // noteColor: ListOfColor[index % ListOfColor.length],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
