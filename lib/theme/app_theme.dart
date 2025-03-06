import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static TextStyle get titleStyle => GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static TextStyle get optionLabelStyle => GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static TextStyle get bottomMessageStyle => GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w800,
    color: Color(0xFF0F0F0F),
    shadows: [
      Shadow(
        offset: Offset(0, 0),
        blurRadius: 2,
        color: Colors.black.withOpacity(0.25),
      ),
    ],
  );
}