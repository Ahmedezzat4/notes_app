import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/constans.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async {
    try {
      var noteBoxe = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = noteBoxe.values.toList();
      emit(NotesSuccess(notes));
    } catch (e) {
      emit(NotesFailer(e.toString()));
    }
  }
}
