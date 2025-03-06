import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hopelink/info/equitability_info.dart';
import 'package:hopelink/smart_dashboard.dart';
import 'package:hopelink/widgets/next_button.dart';
import '../widgets/pagination_indicator.dart';

class ScalabilityInfoScreen extends StatelessWidget {
  const ScalabilityInfoScreen({Key? key}) : super(key: key);

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
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/e820bc82c4163065c84e0253553b56481e1b65c67879eed73a0f21c5c2e4782a?placeholderIfAbsent=true&apiKey=669dc86a515243e5af97a72faecb05b5',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            // Security Title
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Scalability',
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
                        text: 'increasing',
                        style: TextStyle(color: Color(0xFFE13236)),
                      ),
                      TextSpan(text: ' users and institutions without compromising '),
                      TextSpan(
                        text: 'performance',
                        style: TextStyle(color: Color(0xFFE13236)),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
            const PaginationIndicator(totalDots: 5, currentIndex: 3),
            const SizedBox(height: 50),
            // Next Button
            NextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EquitabilityInfoScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}