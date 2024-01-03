import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_portfolio/Global/AppButton.dart';
import 'package:flutter_my_portfolio/Global/app_assets.dart';
import 'package:flutter_my_portfolio/Global/app_colors.dart';
import 'package:flutter_my_portfolio/Global/app_text_styles.dart';
import 'package:flutter_my_portfolio/Global/constants.dart';
import 'package:flutter_my_portfolio/UI/about.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import '../Widgets/profile_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  bool isFade = false;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    // Listen to scroll events and show/hide the AboutMe() section
    _scrollController.addListener(() {
      if (_scrollController.offset > 50) {
        setState(() {
          isFade = true;
        });
      } else {
        setState(() {
          isFade = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        toolbarHeight: 90,
        titleSpacing: 100,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Portfolio',
              style: GoogleFonts.beauRivage(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1),
            ),
            const Spacer(),
            Text(
              'Home',
              style: AppTextStyles.headerTextStyle(),
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              'About',
              style: AppTextStyles.headerTextStyle(),
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              'Services',
              style: AppTextStyles.headerTextStyle(),
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              'Contact',
              style: AppTextStyles.headerTextStyle(),
            ),
          ],
        ),
      ),
      body: ListView(
        controller: _scrollController,
            children: [
              Stack(
                children: [
                  Lottie.asset(
                    'assets/images/PopUpBackground.json', // The path of the animation file
                    height: MediaQuery.of(context)
                        .size
                        .height, // The height of the animation
                    width:
                        MediaQuery.of(context).size.width, // The width of the animation
                    fit: BoxFit.cover, // Fit the animation to the screen size
                    repeat: true, // Whether to repeat the animation or not
                    reverse: false, // Whether to reverse the animation or not
                    animate: true, // Whether to play the animation or not
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0.2,
                        left: size.width * 0.15,
                        right: size.width * 0.1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FadeInDown(
                                    duration: const Duration(milliseconds: 500),
                                    child: Text(
                                      "Hello, It's Me",
                                      style: AppTextStyles.montserratStyle(
                                          color: Colors.white),
                                    )),
                                Constants.sizedBox(
                                  height: 15,
                                ),
                                FadeInRight(
                                    duration: const Duration(milliseconds: 500),
                                    child: Text(
                                      "Gopala Krishna V",
                                      style: AppTextStyles.headingStyle(),
                                    )),
                                Constants.sizedBox(
                                  height: 15,
                                ),
                                FadeInLeft(
                                  duration: const Duration(milliseconds: 500),
                                  child: Row(
                                    children: [
                                      Text(
                                        "And I am a ",
                                        style: AppTextStyles.montserratStyle(
                                            color: Colors.white),
                                      ),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TyperAnimatedText('Android and React Developer',
                                              textStyle: AppTextStyles.montserratStyle(
                                                  color: AppColors.aqua)),
                                          TyperAnimatedText('Student',
                                              textStyle: AppTextStyles.montserratStyle(
                                                  color: AppColors.aqua)),
                                          TyperAnimatedText('Tech-enthusiast',
                                              textStyle: AppTextStyles.montserratStyle(
                                                  color: AppColors.aqua)),
                                        ],
                                        pause: const Duration(milliseconds: 500),
                                        displayFullTextOnTap: true,
                                        stopPauseOnTap: true,
                                      )
                                    ],
                                  ),
                                ),
                                Constants.sizedBox(
                                  height: 15,
                                ),
                                FadeInDown(
                                  duration: const Duration(milliseconds: 500),
                                  child: SizedBox(
                                    width: size.width * 0.3,
                                    child:Text(
                                      'I am happy to share that this is my Portfolio '
                                          'Web Page built using Flutter on Android Studios.',
                                      style: AppTextStyles.normalStyle(),
                                    ),
                                  ),
                                ),
                                Constants.sizedBox(height: 22),
                                FadeInUp(
                                  duration: const Duration(milliseconds: 500),
                                  child: Row(
                                    children: [
                                      buildSocialButton(asset: AppAssets.facebook),
                                      Constants.sizedBox(
                                        width: 15,
                                      ),
                                      buildSocialButton(asset: AppAssets.github),
                                      Constants.sizedBox(
                                        width: 15,
                                      ),
                                      buildSocialButton(asset: AppAssets.linkedIn),
                                      Constants.sizedBox(
                                        width: 15,
                                      ),
                                      buildSocialButton(asset: AppAssets.insta)
                                    ],
                                  ),
                                ),
                                Constants.sizedBox(height: 22),
                                FadeInUp(
                                  duration: const Duration(milliseconds: 500),
                                  child: AppButtons.buildMaterialButton(onTap: () {
                                    _scrollToBottom();
                                  },
                                  buttonName: 'Want to Know More..??'),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const ProfileAnimation(),
                          ],
                        ),
                        const SizedBox(
                          height: 150,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.75,
                    ),
                    child: Container(
                      color: AppColors.bgColor2, // Set the background color to white
                      child: Visibility(
                        visible: isFade,
                        child: FadeInUp(
                          duration: const Duration(seconds: 3),
                          child: const AboutMe(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
    );
  }
  
  void _scrollToBottom() {
    _scrollController.animateTo(
      500, //Scroll Range like how much it should scroll
      duration: const Duration(seconds: 1), // Adjust the duration as needed
      curve: Curves.easeInOut,
    );
  }
  
  Ink buildSocialButton({required String asset}) {
    return Ink(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.themeColor, width: 2.5),
        color: AppColors.bgColor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(6),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(500.0),
        hoverColor: AppColors.aqua,
        splashColor: AppColors.lowGreen,
        child: Image.asset(
          asset,
          width: 30,
          height: 32,
          color: AppColors.themeColor,
          // fit: BoxFit.contain,
        ),
      ),
    );
  }
}
