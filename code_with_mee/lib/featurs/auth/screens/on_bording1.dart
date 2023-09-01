import 'package:code_with_me/core/utils/app_images.dart';
import 'package:code_with_me/core/utils/app_strings.dart';
import 'package:code_with_me/core/utils/commons.dart';
import 'package:code_with_me/core/utils/app_colors.dart';
import 'package:code_with_me/featurs/auth/screens/onboarding2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBordingScreenOne extends StatelessWidget {
  const OnBordingScreenOne({super.key});

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
            SizedBox(height: 63,),
            SizedBox(
                height: 300,
                width: 300,

                child: Image.asset(AppImages.imgPath)),
            SizedBox(height: 48,),
            Center(
              child: Text(AppStrings.onBordingTitleOne,style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,

              ),),
            ),
            SizedBox(height: 4,),
            Center(
              child: Text(AppStrings.substitleOne,style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: AppColors.subTitleColor,
              ),),
            ),
            Spacer(),
            Row(

              children: [
                Spacer(flex: 1,),
                Container(
                       width: 125,
                       height: 60,
                  child: ElevatedButton(onPressed: (){

                    pushMethod(context, OnBordingScreentwo());

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                    
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
                        Icon(CupertinoIcons.arrow_right,)
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
