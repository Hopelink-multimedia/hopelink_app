import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hopelink/widgets/next_button.dart';
import '../widgets/pagination_indicator.dart';
import 'efficienct_info.dart';

class SecurityInfoScreen extends StatelessWidget {
  const SecurityInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HOPELINK',
                  style: TextStyle(
                    fontFamily: 'IrishGrover',
                    fontSize: 65,
                    color: const Color(0xFFC70000),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Rebirth',
                  style: GoogleFonts.poppins(
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Security Image
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Container(
                width: 275,
                height: 275,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(125),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      offset: const Offset(0, 4),
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(125),
                  child: Image.network(
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/3b3be7c644be15e6589f46b8301f4b485ad981107c90e2c837da91c24750a767?placeholderIfAbsent=true',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            // Security Title
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Security',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontFamily: 'Times New Roman',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            // Security Description
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: 250,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      color: Color(0xFF8E8787),
                      fontSize: 16,
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                      TextSpan(text: 'Ensures data '),
                      TextSpan(
                        text: 'protection',
                        style: TextStyle(color: Color(0xFFE13236)),
                      ),
                      TextSpan(
                        text: ' with AES-256 encryption, biometrics, and two-factor authentication',
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
            const PaginationIndicator(totalDots: 5, currentIndex: 1),
            const SizedBox(height: 50),
            // Next Button
            NextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EfficiencyInfoScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}