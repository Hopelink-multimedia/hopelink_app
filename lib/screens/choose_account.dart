import 'package:flutter/material.dart';
import 'package:hopelink/screens/login_screen.dart';
import '../theme/app_theme.dart';

class ChooseAccountScreen extends StatelessWidget {
  const ChooseAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(maxWidth: 480),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(48, 150, 36, 0),
                child: Text(
                  'Choose an account!!!',
                  style: AppTheme.titleStyle,
                ),
              ),
              SizedBox(height: 125),
              Center(
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildAccountOption(
                        context,
                        title: 'Hospital',
                        imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/020826e563598c46b6b7cf485ec498cc5607d9d2861bfa00cc2dfab097a35eb4?placeholderIfAbsent=true',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScreen()), // Replace with your destination screen
                          );
                        },
                      ),
                      _buildAccountOption(
                        context,
                        title: 'User',
                        imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/d286ee5c8815a68414053df74328c682e3c2cbae4b61ca88f1de68131d3e988e?placeholderIfAbsent=true',
                        onTap: () {
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 120),
              _buildBottomMessage(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAccountOption(
      BuildContext context, {
        required String title,
        required String imageUrl,
        required VoidCallback onTap,
      }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Text(
            title,
            style: AppTheme.accountOptionStyle,
          ),
          SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl,
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomMessage() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        AspectRatio(
          aspectRatio: 1.179,
          child: Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/473ac557f2f1a9911f83bc4470f500de3b8c9f823397ac6232ff1202f3aa7730?placeholderIfAbsent=true',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 86,
          left: 70,
          right: 48,
          child: Text(
            'Be the reason for someone life',
            style: AppTheme.bottomMessageStyle,
          ),
        ),
      ],
    );
  }
}