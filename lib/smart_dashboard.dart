import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hopelink/widgets/continue_button.dart';
import '../widgets/pagination_indicator.dart';
import 'info/security_info.dart';

class SmartDashBoardScreen extends StatelessWidget {
  const SmartDashBoardScreen({Key? key}) : super(key: key);

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
            const SizedBox(height: 40),
            Container(
              width: 350,
              height: 350,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/b5c7f7593222564004b1c6b38e67bd3444e0d620c35c8b6c182eb10d344980c7?placeholderIfAbsent=true',
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 50),
            const PaginationIndicator(totalDots: 5, currentIndex: 0),
            const SizedBox(height: 50),
            ContinueButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecurityInfoScreen()), // Replace with your destination screen
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

