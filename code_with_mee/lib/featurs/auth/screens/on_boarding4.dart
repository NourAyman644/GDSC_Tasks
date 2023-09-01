import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_colors.dart';

class OnBordingScreenFour extends StatefulWidget {
  @override
  State<OnBordingScreenFour> createState() => _OnBordingScreenFourState();
}

class _OnBordingScreenFourState extends State<OnBordingScreenFour>
    with TickerProviderStateMixin {
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    TabController? _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(33),
          child: Column(
            children: [
              Container(
                height: 300,
                width: 361,
                child: Image.asset(
                  AppImages.imgPath4,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                child: TabBar(
                  controller: _tabController,
                  labelColor: AppColors.primaryColor,
                  unselectedLabelColor: AppColors.Text,
                  indicatorColor: AppColors.primaryColor,
                  indicatorWeight: 5,
                  labelStyle: GoogleFonts.poppins(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  tabs: const [
                    Tab(text: 'Sign In'),
                    Tab(text: 'Sign Up'),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.7,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    SingleChildScrollView(
                      child: _buildSignInContent(),
                    ),
                    SingleChildScrollView(
                      child: _buildSignUpContent(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSignInContent() {
    return Column(
      children: [
        const SizedBox(height: 40),
        SizedBox(
          height: 48,
          width: 343,
          child: TextField(

            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              prefixIcon: const Icon(
                Icons.email_outlined,
                color: AppColors.Text ,
                size: 25,

              ),
              hintText: 'E-mail',
              hintStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                color: AppColors.Text,
                fontSize: 16,

              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),

              ),
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        SizedBox(
          height: 48,
          width: 343,
          child: TextField(
            obscureText: passwordVisible,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              prefixIcon: const Icon(
                Icons.lock_outlined,
                color: AppColors.Text,
                size: 24,
              ),
              hintText: 'Password',
              hintStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  color: AppColors.Text,
                  fontSize: 16
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
                icon: Icon(
                  passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Forget password ?',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.Text,
              ),
            ),
          ],
        ),
        const SizedBox(height: 47),
        SizedBox(
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
    );
  }

  Widget _buildSignUpContent() {
    return Column(
      children: [
        const SizedBox(height: 40),
        SizedBox(
          height: 48,
          width: 343,
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              prefixIcon: const Icon(
                Icons.person_outline,
                color: AppColors.Text,
                size: 24,
              ),
              hintText: 'Name',
              hintStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                color: AppColors.Text,
                fontSize: 16,

              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        SizedBox(
          height: 48,
          width: 343,
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              prefixIcon: const Icon(
                Icons.phone,
                color: AppColors.Text,
                size: 24,
              ),
              hintText: 'Phone Number',
              hintStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                color: AppColors.Text,
                fontSize: 16,

              ),
              // suffixIcon: Icon(CupertinoIcons.eye_slash),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        SizedBox(
          height: 48,
          width: 343,
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              prefixIcon: const Icon(
                Icons.email_outlined,
                color: AppColors.Text,
                size: 24,
              ),
              hintText: 'E-mail',
              hintStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                color: AppColors.Text,
                fontSize: 16,

              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        SizedBox(
          height: 48,
          width: 343,
          child: TextField(
            obscureText: passwordVisible,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              prefixIcon: const Icon(
                Icons.lock_outlined,
                color: AppColors.Text,
                size: 24,
              ),
              hintText: 'Password',
              hintStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                color: AppColors.Text,
                fontSize: 16,

              ),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
                icon: Icon(
                  passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        SizedBox(
          height: 48,
          width: 343,
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              hintText: 'Department',
              hintStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                color: AppColors.Text,
                fontSize: 16,

              ),
              suffixIcon: const Icon(
                Icons.keyboard_arrow_down_outlined,
                color: AppColors.Text,
                size: 30,
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
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
                  AppStrings.signUp,
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
    );
  }
}