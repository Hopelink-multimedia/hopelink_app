import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../widgets/custom_form_input.dart';
import '../widgets/progress_indicator_circle.dart';
import 'donar_health_registration_screen.dart';

class DonorPersonalDetailRegistrationScreen extends StatefulWidget {
  const DonorPersonalDetailRegistrationScreen({Key? key}) : super(key: key);

  @override
  State<DonorPersonalDetailRegistrationScreen> createState() => _DonorPersonalDetailRegistrationScreenState();
}

class _DonorPersonalDetailRegistrationScreenState extends State<DonorPersonalDetailRegistrationScreen> {
  int currentStep = 0;
  String? selectedGender;

  void nextStep() {
    if (currentStep < 3) {
      setState(() => currentStep++);
    }
  }

  void previousStep() {
    if (currentStep > 0) {
      setState(() => currentStep--);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 480),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const SizedBox(height: 4),
                  _buildUserHeader(),
                  _buildTitle(),
                  _buildProgressIndicator(),
                  _buildFormSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUserHeader() {
    return Align(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/40ee7680aa7a220f22125018bef36e8242e3caf6925c4ac1a17d2b6afb4f9ecb?placeholderIfAbsent=true',
            width: 23,
            fit: BoxFit.contain,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'Marliya Tajdeen',
                style: TextStyle(
                  fontFamily: 'Times New Roman',
                  fontSize: 15,
                  color: Color(0xFF8E8787),
                ),
              ),
              Container(
                width: 27,
                height: 27,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage('https://cdn.builder.io/api/v1/image/assets/TEMP/22d6145f247d187fac3c2d2d236f963b2ccd15c229f073537c2c3d4fe253159d?placeholderIfAbsent=true'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return const Padding(
      padding: EdgeInsets.only(top: 16, bottom: 12),
      child: Text(
        'Donor Personal Registration',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildProgressIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ProgressIndicatorCircle(
            isActive: index == currentStep,
            isCompleted: index < currentStep,
          ),
        );
      }),
    );
  }

  Widget _buildFormSection() {
    return Container(
      margin: const EdgeInsets.only(top: 19),
      padding: const EdgeInsets.fromLTRB(27, 23, 27, 50),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          const CustomFormInput(placeholder: 'Full Name'),
          const SizedBox(height: 24),
          const CustomFormInput(placeholder: 'Date of Birth'),
          const SizedBox(height: 23),
          const CustomFormInput(placeholder: 'Age'),
          const SizedBox(height: 23),
          _buildGenderSelection(),
          const SizedBox(height: 23),
          const CustomFormInput(placeholder: 'Phone Number'),
          const SizedBox(height: 23),
          const CustomFormInput(placeholder: 'Email Address'),
          const SizedBox(height: 23),
          const CustomFormInput(placeholder: 'Address'),
          const SizedBox(height: 40),
          _buildNavigationButtons(context),
        ],
      ),
    );
  }

  Widget _buildGenderSelection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 9),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Gender',
            style: TextStyle(
              color: AppColors.inputText,
              fontSize: 15,
              fontWeight: FontWeight.w600,
              fontFamily: 'Inter',
            ),
          ),
          Row(
            children: [
              _buildGenderOption('Female'),
              const SizedBox(width: 20),
              _buildGenderOption('Male'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGenderOption(String gender) {
    return GestureDetector(
      onTap: () => setState(() => selectedGender = gender),
      child: Text(
        gender,
        style: TextStyle(
          color: selectedGender == gender ? AppColors.primary : AppColors.inputText,
          fontSize: 15,
          fontWeight: FontWeight.w600,
          fontFamily: 'Inter',
        ),
      ),
    );
  }

  Widget _buildNavigationButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {
            previousStep;
            Navigator.pop(context); // Go back to the previous screen
          },
          child: const Text('Back'),
        ),
        ElevatedButton(
          onPressed: () {
            nextStep;
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DonorHealthDetailRegistrationScreen()),
            );
          },
          child: const Text('Next'),
        ),
      ],
    );
  }
}
