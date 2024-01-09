import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constans.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async {
    emit(NotesLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      emit(NotesSuccsses(notes: noteBox.values.toList()));
    } catch (e) {
      emit(NotesFailure(errorMessage: e.toString()));
    }
  }
}
