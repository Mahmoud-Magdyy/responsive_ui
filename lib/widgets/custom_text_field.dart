import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color(0XFF4EB7F2),
      decoration: InputDecoration(
          hintText: hint,
          hintStyle:
              AppStyles.styleRegular16(context).copyWith(color: const Color(0xFFAAAAAA)),
          fillColor: const Color(0xFFFAFAFA),
          filled: true,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFFAFAFA)));
  }
}
