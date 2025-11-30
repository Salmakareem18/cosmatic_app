import 'package:cosmatics/helpers/app_field_auth.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      backgroundColor: Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 44, right: 60),
              child: Image.asset("assets/images/login_img.png"),
            ),
            SizedBox(height: 24),
            Text(
              "Login Now",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xff434C6D),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 14),
            Text(
              "Please enter the details below to continue",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff8E8EA9),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 25),
            Expanded(
              child: Row(
                children: [
                  DropdownButton(
                    value: selectedIndex,
                    items: List.generate(
                      4,
                      (index) => DropdownMenuItem(
                        value: index,
                        child: Text("+20 $index"),
                      ),
                    ),
                    onChanged: (value) {
                      selectedIndex = value;
                      setState(() {});
                    },
                  ),
                  Expanded(child: AppFieldAuth(labelText: "Phone number")),
                ],
              ),
            ),
            SizedBox(height: 10),
            AppFieldAuth(
              suffixicon: Icon(
                Icons.visibility_off_outlined,
                color: Color.fromARGB(253, 172, 178, 197),
              ),
              hintText: "Your password",
            ),
            SizedBox(height: 11),
            TextButton(onPressed: () {}, child: Text("Forget password?")),
            SizedBox(height: 60),
            FilledButton(
              style: ElevatedButton.styleFrom(fixedSize: Size.fromHeight(70)),

              onPressed: () {},
              child: Text(
                "Login",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?",
                  style: TextStyle(color: Color(0xff434C6D)),
                ),

                TextButton(onPressed: () {}, child: Text("Register")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
