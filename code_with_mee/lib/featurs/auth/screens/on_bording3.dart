import 'package:code_with_me/core/utils/app_images.dart';
import 'package:code_with_me/core/utils/app_strings.dart';
import 'package:code_with_me/core/utils/commons.dart';
import 'package:code_with_me/core/utils/app_colors.dart';
import 'package:code_with_me/featurs/auth/screens/on_boarding4.dart';
import 'package:code_with_me/featurs/auth/screens/onboarding2.dart';
import 'package:code_with_me/featurs/auth/screens/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBordingScreenThree extends StatelessWidget {
  const OnBordingScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 130,
            ),
            SizedBox(
                height: 300,
                width: 300,
                child: Image.asset(AppImages.imgPath3)),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                AppStrings.onBordingTitlethree,
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Text(
                AppStrings.substitlethree,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: AppColors.subTitleColor,
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 60,
              width: 338,
              child: ElevatedButton(
                onPressed: () {
                 pushMethod(context, OnBordingScreenFour());
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      AppStrings.start,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 56,),
          ],
        ),
      ),
    );
  }
}
