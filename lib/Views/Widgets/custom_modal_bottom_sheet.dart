import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';

class CustomModalBottomSheet extends StatelessWidget {
  const CustomModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocListener<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFalure) {
            debugPrint(state.errorMessage);
          }
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        child: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 32, left: 16, right: 16),
            child: AbsorbPointer(
                absorbing: State is AddNoteLoading, child: AddNoteForm()),
          ),
        ),
      ),
    );
  }
}
