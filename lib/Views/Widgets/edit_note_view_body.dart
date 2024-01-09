import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constans.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/colors_list_view.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_text_form_field.dart';

class EditNoteViewBody extends StatefulWidget {
  final NoteModel note;
  const EditNoteViewBody({super.key, required this.note});

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  TextEditingController tilteController = TextEditingController();
  TextEditingController subTilteController = TextEditingController();

  @override
  void initState() {
    tilteController.text = widget.note.title;
    subTilteController.text = widget.note.subTitle;
    super.initState();
  }

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(
          onPressed: () {
            widget.note.title = title ?? widget.note.title;
            widget.note.subTitle = subTitle ?? widget.note.subTitle;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fitchAllNotes();
            Navigator.pop(context);
          },
          title: "Edit Note",
          icon: Icons.check,
        ),
        const SizedBox(height: 32),
        CustomTextField(
          controller: tilteController,
          onChanged: (value) {
            title = value;
          },
          hintText: "Title",
        ),
        const SizedBox(height: 16),
        CustomTextField(
          controller: subTilteController,
          onChanged: (value) {
            subTitle = value;
          },
          hintText: "Content",
          maxLines: 6,
        ),
        const SizedBox(height: 16),
        EditNoteColorsListView(
          note: widget.note,
        ),
      ],
    );
  }
}

class EditNoteColorsListView extends StatefulWidget {
  final NoteModel note;
  const EditNoteColorsListView({super.key, required this.note});

  @override
  State<EditNoteColorsListView> createState() => _EditNoteColorsListViewState();
}

class _EditNoteColorsListViewState extends State<EditNoteColorsListView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            currentIndex = index;
            widget.note.color = kColors[index].value;
            setState(() {});
          },
          child: ColorItem(
            color: kColors[index],
            isActive: currentIndex == index,
          ),
        ),
      ),
    );
  }
}
