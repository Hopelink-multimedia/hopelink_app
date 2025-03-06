import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class ChooseAccountScreen extends StatelessWidget {
  const ChooseAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(32, 66, 36, 0),
                child: Text(
                  'Choose an account!!!',
                  style: AppTheme.titleStyle,
                ),
              ),
              SizedBox(height: 64),
              Center(
                child: Container(
                  constraints: BoxConstraints(maxWidth: 260),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildAccountOption(
                        label: 'Hospital',
                        imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/020826e563598c46b6b7cf485ec498cc5607d9d2861bfa00cc2dfab097a35eb4?placeholderIfAbsent=true',
                      ),
                      _buildAccountOption(
                        label: 'User',
                        imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/d286ee5c8815a68414053df74328c682e3c2cbae4b61ca88f1de68131d3e988e?placeholderIfAbsent=true',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 250),
              _buildBottomMessage(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAccountOption({
    required String label,
    required String imageUrl,
  }) {
    return Column(
      children: [
        Text(
          label,
          style: AppTheme.optionLabelStyle,
        ),
        SizedBox(height: 51),
        Image.network(
          imageUrl,
          width: 80,
          height: 80,
          fit: BoxFit.contain,
        ),
      ],
    );
  }

  Widget _buildBottomMessage() {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 1.0,

          child: ClipOval(
            child: Image.network(
              'https://cdn.builder.io/api/v1/image/assets/TEMP/473ac557f2f1a9911f83bc4470f500de3b8c9f823397ac6232ff1202f3aa7730?placeholderIfAbsent=true',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned.fill(
          child: Padding(
            padding: EdgeInsets.fromLTRB(48, 86, 48, 164),
            child: Center(
              child: Text(
                'Be the reason for someone life',
                style: AppTheme.bottomMessageStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}