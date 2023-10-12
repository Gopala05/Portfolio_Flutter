import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_portfolio/Global/app_colors.dart';
import 'package:flutter_my_portfolio/Global/constants.dart';
import 'package:lottie/lottie.dart';
import '../Global/AppButton.dart';
import '../Global/app_text_styles.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
          Constants.sizedBox(width: 130),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Column(
                children: [
                  Constants.sizedBox(height: size.height * 0.2),
                  FadeInRight(
                      duration: const Duration(milliseconds: 1200),
                      child: RichText(
                        text: TextSpan(
                            text: 'About',
                            style: AppTextStyles.headingStyle(),
                          children: [
                            TextSpan(
                              text: 'Me',
                              style: AppTextStyles.headingStyle( color: AppColors.lowGreen),
                            ),
                          ],
                        ),
                      ),
                  ),
                  Constants.sizedBox(height: 6),
                  FadeInLeft(
                    duration: const Duration(milliseconds: 1200),
                      child: Text("Flutter Developer !",
                        style: AppTextStyles.montserratStyle(color: Colors.white),)),
                  Constants.sizedBox(height: 8),
                  FadeInLeft(
                    duration: const Duration(milliseconds: 1200),
                    child: Text("I have been involved in product development since my early days and know insights into it. "
                        "I have provided my valuable input while taking some crucial decisions of the app by brainstorming with a design, QA team. "
                        "I have been developing mobile apps and libraries using Google's Flutter framework since its inception.", textAlign: TextAlign.justify,
                      style: AppTextStyles.normalStyle(),),
                  ),
                  Constants.sizedBox(height: 15),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1800),
                    child: AppButtons.buildMaterialButton(onTap: () {},
                        buttonName: 'Read More'),
                  ),
    );
  }
}
