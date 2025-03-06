import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/continue_button.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Center(
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 250),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width: 222,
                              height: 222,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage('https://cdn.builder.io/api/v1/image/assets/TEMP/61ec5b4c15b9f7aba7a330ac35c2f73e9c2c87c77c07dd0f1c979fd2ac7c3cc9?placeholderIfAbsent=true'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 60),
                            // Success Message
                            Text(
                              'SUCCESSFULLY CREATED \n YOUR ACCOUNT',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF3CEC56),
                                fontSize: 30,
                                fontFamily: 'Inria Sans',
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 40),
              Center(
                    child: ContinueButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => SecurityInfoScreen()), // Replace with your destination screen
                        // );
                      },
                    ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}