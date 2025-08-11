import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_botton.dart';
import 'package:notes_app/views/widgets/custom_textFeild.dart';

class addNoteBottumSheet extends StatelessWidget {
  const addNoteBottumSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            CustomTextfeild(
              hint: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextfeild(
              hint: 'Content',
              maxline: 5,
            ),
            SizedBox(
              height: 100,
            ),
            CustomBotton(),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
