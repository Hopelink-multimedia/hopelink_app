import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hopelink/screens/signup_screen.dart';
import '../constants/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isSmallScreen = constraints.maxWidth < 640;
          return Container(
            color: AppColors.primaryRed,
            child: Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 480),
                padding: const EdgeInsets.only(bottom: 85),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _buildTopBar(isSmallScreen),
                    _buildDonationSection(),
                    _buildLoginButtons(context),
                    _buildSocialLoginSection(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildTopBar(bool isSmallScreen) {
    return Padding(
      padding: const EdgeInsets.only(left: 23,top: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!isSmallScreen)
                Row(
                  children: [
                    Image.network('https://cdn.builder.io/api/v1/image/assets/TEMP/e768258072cf74f05b9ce7c2cdcf69c4d2f2a42c236ce851714ec3d759b7b628', width: 18, height: 16),
                    const SizedBox(width: 7),
                    Image.network('https://cdn.builder.io/api/v1/image/assets/TEMP/1f34acc8d1d04b3636fde494ed25e485cd5631eeac37778f9550f8f8991d9e37', width: 16, height: 16),
                  ],
                ),
              const SizedBox(height: 21),
              Container(
                margin: const EdgeInsets.only(left: 16),
                width: 66,
                height: 75,
                decoration: BoxDecoration(
                  color: AppColors.secondaryRed,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDonationSection() {
    return Column(
      children: [
        ClipOval(
          child: Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/4da9232b5d04c66c6cb79f0f14e2d3c19995593492e59db55682648f50acfe3f',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 17),
        Text(
          'DONATION',
          style: GoogleFonts.poppins(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildLoginButtons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 72),
          SizedBox(
            width: 329,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: const EdgeInsets.symmetric(vertical: 22),
              ),
              onPressed: () {
                // Handle login
              },
              child: Text(
                'Log in',
                style: GoogleFonts.calistoga(
                  fontSize: 20,
                  color: AppColors.errorRed,
                ),
              ),
            ),
          ),
          const SizedBox(height: 11),
          SizedBox(
            width: 329,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.darkRed,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: const EdgeInsets.symmetric(vertical: 19),
                side: const BorderSide(color: AppColors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
              },
              child: Text(
                'Create account',
                style: GoogleFonts.calistoga(
                  fontSize: 20,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialLoginSection() {
    return Column(
      children: [
        const SizedBox(height: 29),
        RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            style: TextStyle(
              fontFamily: 'Times New Roman',
              fontSize: 20,
              color: AppColors.white,
            ),
            children: [
              TextSpan(
                text: 'Or\n',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              TextSpan(text: 'Continue with'),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.google, size: 45, color: Colors.white), // Google Icon
              onPressed: () {
                // Handle Google login
              },
            ),
            const SizedBox(width: 100),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.instagram, size: 45, color: Colors.white), // Instagram Icon
              onPressed: () {
                // Handle Instagram login
              },
            ),
          ],
        ),
      ],
    );
  }
}
