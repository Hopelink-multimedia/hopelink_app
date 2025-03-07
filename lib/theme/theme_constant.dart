import 'package:flutter/material.dart';

class ThemeConstants {
  // Colors
  static const Color primaryRed = Color(0xFFF85355);
  static const Color secondaryRed = Color(0xFFE13236);
  static const Color textBlack = Color(0xFF000000);
  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color grayBackground = Color(0xFFD9D9D9);

  // Text Styles
  static const TextStyle timeStyle = TextStyle(
    fontFamily: 'Times New Roman',
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: textBlack,
  );

  static const TextStyle usernameStyle = TextStyle(
    fontFamily: 'Times New Roman',
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: textWhite,
  );

  static const TextStyle searchHintStyle = TextStyle(
    fontFamily: 'Times New Roman',
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: grayBackground,
  );

  static const TextStyle advertisementStyle = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: textBlack,
  );

  static const TextStyle newsStyle = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: textBlack,
  );

  static const TextStyle descriptionStyle = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: textBlack,
  );

  static const TextStyle registerButtonStyle = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: textWhite,
  );

  // Added Missing Styles
  static const TextStyle menuItemStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: textWhite,
  );

  static const TextStyle irishGroverRegular = TextStyle(
    fontFamily: 'IrishGrover',
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: textWhite,
  );

  // Sizes
  static const double menuTitleIconSize = 24.0;
  static const double horizontalPadding = 16.0;
  static const double verticalPadding = 10.0;
}