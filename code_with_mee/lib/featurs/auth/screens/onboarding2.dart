import 'package:code_with_me/core/utils/app_images.dart';
import 'package:code_with_me/core/utils/app_strings.dart';
import 'package:code_with_me/core/utils/app_colors.dart';
import 'package:code_with_me/featurs/auth/screens/on_bording3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/utils/commons.dart';

class OnBordingScreentwo extends StatelessWidget {
  const OnBordingScreentwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      AppStrings.skip,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.onBordingTitleColor,
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 63,
            ),
            SizedBox(
                height: 300,
                width: 300,
                child: Image.asset(AppImages.imgPath2)),
            SizedBox(
              height: 48,
            ),
            Center(
              child: Text(
                AppStrings.onBordingTitltwo,

                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Center(
              child: Text(
                AppStrings.substitletwo,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: AppColors.subTitleColor,
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: const Icon(
                        CupertinoIcons.arrow_left,
                      )),
                ),
                Container(
                  width: 125,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      pushMethod(context, OnBordingScreenThree());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          AppStrings.next,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                          ),
                        ),
                        Icon(
                          CupertinoIcons.arrow_right,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
