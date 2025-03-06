import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButton extends StatelessWidget {
  final VoidCallback onPressed;

  const NextButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: TextButton(
        onPressed: onPressed, // Dynamic navigation
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFFE13236),
          padding: const EdgeInsets.symmetric(
            vertical: 14,
            horizontal: 70,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          'Next',
          style: GoogleFonts.poppins(
            fontSize: 24,
            color: const Color(0xFFF5F5F5),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}