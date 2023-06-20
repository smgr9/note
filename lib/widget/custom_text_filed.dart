import 'package:flutter/material.dart';
import 'package:note/const/Kconst.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.hint, this.maxline = 1, this.onSaved});
  final String hint;
  final int maxline;
  final Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Filed is required';
        } else {
          return null;
        }
      },
      maxLines: maxline,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        // hintStyle: const TextStyle(
        //   color: kPrimaryColor,
        // ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color ?? Colors.white),
    borderRadius: BorderRadius.circular(8),
  );
}
