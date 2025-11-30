import 'package:cosmatics/helpers/app_colors.dart';
import 'package:cosmatics/widgets/app_field.dart';
import 'package:cosmatics/widgets/card_item.dart';
import 'package:cosmatics/widgets/card_item_list.dart';
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 40),
              AppField(
                hintText: "Search",
                suffixicon: SvgPicture.asset(
                  "assets/icons/search.svg",
                  width: 10,
                  height: 11,
                ),
              ),
              // SizedBox(height: 15),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Image.network(
                    "https://images.pexels.com/photos/2834934/pexels-photo-2834934.jpeg?auto=compress&cs=tinysrgb&w=600",
                    width: double.infinity,
                    height: 300,
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffE9DCD3).withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "50% OFF DISCOUNT\nCUPON CODE : 125865",
                              style: TextStyle(
                                color: Color(0xff62322D),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SvgPicture.asset(
                              "assets/icons/offer.svg",
                              height: 50,
                              width: 50,
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset(
                              "assets/icons/offer.svg",
                              height: 50,
                              width: 50,
                            ),
                            Text(
                              "Hurry up!\nSkin care only !",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                textAlign: TextAlign.start,
                "Top rated products",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primaryColor,
                ),
              ),
              CardItemList(),
            ],
          ),
        ),
      ),
    );
  }
}
