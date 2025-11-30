import 'package:cosmatics/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackGroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/Layer_1.svg",
              height: 200,
              width: 200,
            ),
            SizedBox(height: 20),
            Image.asset(
              "assets/images/splash_image2.png",
              width: 120,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
