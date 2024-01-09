part of 'notes_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesCubitLoading extends NotesCubitState {}

final class NotesCubitSucsses extends NotesCubitState {
  final List<NoteModel> notes;

  NotesCubitSucsses({required this.notes});
}

final class NotesCubitFailure extends NotesCubitState {
  final String errorMessage;
  NotesCubitFailure({required this.errorMessage});
}
