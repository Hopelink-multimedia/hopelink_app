import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../widgets/custom_form_input.dart';
import '../widgets/progress_indicator_circle.dart';
import 'donor_donation_register screen.dart';

class DonorHealthDetailRegistrationScreen extends StatefulWidget {
  const DonorHealthDetailRegistrationScreen({Key? key}) : super(key: key);

  @override
  State<DonorHealthDetailRegistrationScreen> createState() => _DonorHealthDetailRegistrationScreenState();
}

class _DonorHealthDetailRegistrationScreenState extends State<DonorHealthDetailRegistrationScreen> {
  int currentStep = 1;
  String? selectedGender;
  String? selectedCurrentMedical;

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
        'Donor Health Registration',
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
          const CustomFormInput(placeholder: 'Blood Group'),
          const SizedBox(height: 24),
          const CustomFormInput(placeholder: 'Height'),
          const SizedBox(height: 23),
          const CustomFormInput(placeholder: 'Weight'),
          const SizedBox(height: 23),
          _buildMedicalConditionSelection(),
          const SizedBox(height: 23),
          const CustomFormInput(placeholder: '-If Yes,Please Specify?'),
          const SizedBox(height: 23),
          _buildCurrentMedicationSelection(),
          const SizedBox(height: 23),
          const CustomFormInput(placeholder: '-If Yes,Please Specify?'),
          const SizedBox(height: 40),
          _buildNavigationButtons(context),
        ],
      ),
    );
  }

  Widget _buildMedicalConditionSelection() {
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
            'Do you have any medical\n conditions?',
            style: TextStyle(
              color: AppColors.inputText,
              fontSize: 15,
              fontWeight: FontWeight.w600,
              fontFamily: 'Inter',
            ),
          ),
          Row(
            children: [
              _buildMedicalConditationOption('Yes'),
              const SizedBox(width: 20),
              _buildMedicalConditationOption('No'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMedicalConditationOption(String gender) {
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

  Widget _buildCurrentMedicationSelection() {
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
            'Are you currently on\n any medication',
            style: TextStyle(
              color: AppColors.inputText,
              fontSize: 15,
              fontWeight: FontWeight.w600,
              fontFamily: 'Inter',
            ),
          ),
          Row(
            children: [
              _buildCurrentMedicationOption('Yes'),
              const SizedBox(width: 20),
              _buildCurrentMedicationOption('No'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCurrentMedicationOption(String medical) {
    return GestureDetector(
      onTap: () => setState(() => selectedCurrentMedical = medical),
      child: Text(
        medical,
        style: TextStyle(
          color: selectedCurrentMedical == medical ? AppColors.primary : AppColors.inputText,
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
              MaterialPageRoute(builder: (context) => DonorDonationRegistrationScreen()),
            );
          },
          child: const Text('Next'),
        ),
      ],
    );
  }

}
