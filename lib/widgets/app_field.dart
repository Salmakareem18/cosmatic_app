import 'package:flutter/material.dart';

class AppField extends StatelessWidget {
  AppField({super.key, this.hintText, this.suffixicon});
  String? hintText;
  Widget? suffixicon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xff8E8EA9),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          suffixIcon: suffixicon,

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Color(0xffB3B3C1)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Color(0xffB3B3C1)),
          ),
        ),
      ),
    );
  }
}
