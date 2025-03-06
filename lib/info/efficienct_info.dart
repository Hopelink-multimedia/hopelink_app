import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hopelink/info/scalability_info.dart';
import 'package:hopelink/widgets/next_button.dart';
import '../screens/login_screen.dart';
import '../widgets/pagination_indicator.dart';

class EfficiencyInfoScreen extends StatelessWidget {
  const EfficiencyInfoScreen({Key? key}) : super(key: key);

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
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/7599b7ef4c0b85fda24b17708a68dec11c251315d4d94776798a31c2f4dd3914?placeholderIfAbsent=true',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            // Security Title
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Efficiency',
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
                      TextSpan(
                        text: 'Speeds',
                        style: TextStyle(color: Color(0xFFE13236)),
                      ),
                      TextSpan(text: ' up matching and processes through the advanced '),
                      TextSpan(
                        text: 'MedMatch algorithm',
                        style: TextStyle(color: Color(0xFFE13236)),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
            const PaginationIndicator(totalDots: 5, currentIndex: 2),
            const SizedBox(height: 50),
            // Next Button
            NextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScalabilityInfoScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}