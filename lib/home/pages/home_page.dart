import 'package:cosmatics/helpers/app_colors.dart';
import 'package:cosmatics/widgets/app_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackGroundColor,
      body: Padding(
        padding: const EdgeInsets.only(right: 13, left: 13),
        child: Column(
          children: [
            SizedBox(height: 40),
            AppField(
              hintText: "Search",
              suffixicon: Icon(Icons.search, color: Color(0xff8E8EA9)),
            ),
            SizedBox(height: 15),
            Stack(
              children: [
                Image.asset(
                  "assets/images/home 1.png",
                  width: 365,
                  height: 320,
                ),

                Positioned(
                  // left: 20,
                  top: 100,
                  child: Container(
                    width: 365,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(width: 5),
                            Column(
                              children: [
                                Text(
                                  "50% OFF DISCOUNT",
                                  style: TextStyle(
                                    color: Color(0xff62322D),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "CUPON CODE : 125865",
                                  style: TextStyle(
                                    color: Color(0xff62322D),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              "assets/images/offer.svg",
                              height: 40,
                              width: 40,
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset(
                              "assets/images/offer.svg",
                              height: 40,
                              width: 40,
                            ),
                            Column(
                              children: [
                                Text("Hurry up!"),
                                Text("Skin care only !"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
