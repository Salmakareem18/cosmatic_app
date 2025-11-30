import 'package:flutter/material.dart';

class AppFieldAuth extends StatelessWidget {
  AppFieldAuth({super.key, this.hintText, this.labelText, this.suffixicon});
  String? labelText;
  String? hintText;
  Icon? suffixicon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            color: Color(0xffD9D9D9),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xffD9D9D9),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          suffixIcon: suffixicon,

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color.fromARGB(253, 172, 178, 197)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color.fromARGB(253, 172, 178, 197)),
          ),
        ),
      ),
    );
  }
}
