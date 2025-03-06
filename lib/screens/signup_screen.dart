import 'package:flutter/material.dart';
import 'package:hopelink/screens/account_creation_status.dart';
import '../widgets/custom_shapes.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isSmallScreen = size.width <= 640;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFFF85355),
        child: Stack(
          children: [
              Positioned(
                left: -250,
                top: 50,
                child: CustomPaint(
                  size: const Size(200, 10),
                  painter: BackgroundShapePainter(color: const Color(0xFFE13236)),
                ),
              ),
              Positioned(
                right: -0,
                bottom: 0,
                child: CustomPaint(
                  size: const Size(490, 380),
                  painter: BackgroundShapePainter(color: const Color(0xFFE13236)),
                ),
              ),
            Center(
              child: Container(
                width: isSmallScreen ? 350 : 280,
                padding: EdgeInsets.all(isSmallScreen ? 35 : 24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Create Account',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: isSmallScreen ? 24 : 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        'Create an account now to access all our services, exclusive features—quick and easy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: isSmallScreen ? 10 : 11,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 40),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: 'Email Address',
                          hintStyle: TextStyle(
                            fontFamily: 'Times New Roman',
                            fontSize: 15,
                            color: const Color(0xFF8E8787),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: const Color(0xFFE9E6E6),
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 0,
                          ),
                        ),
                        style: const TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'New Password',
                          hintStyle: TextStyle(
                            fontFamily: 'Times New Roman',
                            fontSize: 15,
                            color: const Color(0xFF8E8787),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: const Color(0xFFE9E6E6),
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 0,
                          ),
                        ),
                        style: const TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        controller: _confirmPasswordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          hintStyle: TextStyle(
                            fontFamily: 'Times New Roman',
                            fontSize: 15,
                            color: const Color(0xFF8E8787),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: const Color(0xFFE9E6E6),
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 0,
                          ),
                        ),
                        style: const TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: isSmallScreen ? 150 : 149,
                        height: isSmallScreen ? 42 : 48,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SuccessScreen()),
                              );
                              // Handle sign up
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFE22D2D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                              fontFamily: 'Times New Roman',
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            style: TextStyle(
                              fontFamily: 'Times New Roman',
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Handle sign in navigation
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                fontFamily: 'Times New Roman',
                                fontSize: 15,
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}