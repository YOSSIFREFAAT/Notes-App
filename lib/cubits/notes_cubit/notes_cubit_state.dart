part of 'notes_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesInitial extends NotesCubitState {}

final class NotesLoading extends NotesCubitState {}

final class NotesSuccsses extends NotesCubitState {
  final List<NoteModel> notes;

  NotesSuccsses({required this.notes});
}

final class NotesFailure extends NotesCubitState {
  final String errorMessage;
  NotesFailure({required this.errorMessage});
}
