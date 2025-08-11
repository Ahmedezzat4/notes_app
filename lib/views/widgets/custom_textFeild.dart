import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/constans.dart';

class CustomTextfeild extends StatelessWidget {
  final String hint;
  final int maxline;

  const CustomTextfeild({super.key, required this.hint, this.maxline = 1});
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxline,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hint: Text(hint),
          hintStyle: const TextStyle(color: kPrimaryColor),
          border: buildBorder(),
          enabledBorder: buildBorder(kPrimaryColor),
          focusedBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
