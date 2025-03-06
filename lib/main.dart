import 'package:flutter/material.dart';
import 'smart_dashboard.dart'; // Import your Smart Dashboard screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SmartDashBoardScreen(), // Corrected: Set it as the home screen
    );
  }
}
