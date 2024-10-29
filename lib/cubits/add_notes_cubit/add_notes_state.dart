part of 'add_notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class AddNote extends NotesState {}

final class DleatNote extends NotesState {}

final class EditNote extends NotesState {}
