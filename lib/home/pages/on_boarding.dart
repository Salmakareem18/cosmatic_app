import 'package:cosmatics/helpers/app_colors.dart';
import 'package:cosmatics/home/pages/home_page.dart';
import 'package:cosmatics/views/auth/create_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackGroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackGroundColor,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePageScreen()),
              );
            },
            child: Text(
              "Skip",
              style: TextStyle(color: AppColors.primaryColor),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/onboarding1.png"),
            SizedBox(height: 30),
            Text(
              "WELCOME!",
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Makeup has the power to transform your mood and empowers you to be a more confident person.",
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            FloatingActionButton(
              backgroundColor: AppColors.primaryColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateAccountScreen(),
                  ),
                );
              },
              child: SvgPicture.asset("assets/images/Vector 3.svg"),
            ),
          ],
        ),
      ),
    );
  }
}
