import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/Add_note_cubit/cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/constans.dart';
import 'package:notes_app/views/widgets/custom_botton.dart';
import 'package:notes_app/views/widgets/custom_textFeild.dart';
import 'package:notes_app/views/widgets/pick_colorList.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle, formattedDate;
  int? color;
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    formattedDate = DateFormat(' kk:mm \n dd-MM-yyyy').format(now);
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 16),
          CustomTextfeild(
            hint: 'Title',
            onSave: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomTextfeild(
            hint: 'Content',
            maxline: 5,
            onSave: (value) {
              subtitle = value;
            },
          ),

          const PickColorlist(),

          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomBotton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    var notModel = NoteModel(
                      title: title!,
                      subTitle: subtitle!,
                      date: formattedDate!,
                      color: kColors[0].value,
                    );

                    BlocProvider.of<AddNoteCubit>(context).addnNote(notModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
