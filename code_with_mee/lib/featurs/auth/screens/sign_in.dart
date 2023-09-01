import 'package:code_with_me/core/utils/app_images.dart';
import 'package:code_with_me/core/utils/commons.dart';
import 'package:code_with_me/core/utils/app_colors.dart';
import 'package:code_with_me/featurs/auth/screens/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/utils/app_strings.dart';

class signIn extends StatefulWidget {

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  bool passwordVisible = false;

  //const signIn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(33),
          child: Column(
            children: [
            SizedBox(
            height: 48,
          ),
          Container(
              height: 300,
              width: 361,
              child: Image.asset(AppImages.imgPath4)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              TextButton(
                onPressed: () {
                  pushMethod(context, signIn());
                },
                child: Text(
                  'Sign in',
                  style: GoogleFonts.poppins(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  pushMethod(context, signUp());
                },
                child: Text(
                  'Sign up',
                  style: GoogleFonts.poppins(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40,),
          const SizedBox(
            height: 48,
            width: 343,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: AppColors.subTitleColor,
                  size: 24,
                ),
                hintText: 'E-mail',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          SizedBox(
            height: 48,
            width: 343,
            child: TextField(
              obscureText: passwordVisible,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock_outlined,
                  color: AppColors.subTitleColor,
                  size: 24,
                ),
                hintText: 'Password',

                suffixIcon: IconButton(onPressed: () {
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                }, icon: Icon(
                  passwordVisible ? Icons.visibility : Icons.visibility_off,


                ),
                ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forget password ?',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.subTitleColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 47,
            ),
            Container(
              height: 50,
              width: 343,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      AppStrings.signin,
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
            ],
          ),
        ),
      ),
    );
  }
}
