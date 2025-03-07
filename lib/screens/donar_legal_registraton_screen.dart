import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/colors.dart';
import '../widgets/custom_form_input.dart';
import '../widgets/progress_indicator_circle.dart';
import '../widgets/upload_box.dart';
import 'donar_health_registration_screen.dart';
import 'donat_creation_status.dart';

class DonorLegalRegistrationScreen extends StatefulWidget {
  const DonorLegalRegistrationScreen({Key? key}) : super(key: key);

  @override
  State<DonorLegalRegistrationScreen> createState() => _DonorLegalRegistrationScreenState();
}

class _DonorLegalRegistrationScreenState extends State<DonorLegalRegistrationScreen> {
  int currentStep = 3;
  String? selectedGender;
  bool hasLegalDocumentation = true;
  bool consentToContact = true;

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
        'Donor Legal Registration',
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
          _buildLegalDocumentationSection(),
          const SizedBox(height: 24),
          _buildUploadSection(),
          const SizedBox(height: 23),
          _buildConsentSection(),
          const SizedBox(height: 23),
          _buildMedicalReportSection(),
          const SizedBox(height: 40),
          _buildSubmitButton(),
        ],
      ),
    );
  }

  Widget _buildLegalDocumentationSection() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Do you have any legal documentation for organ donation?',
            style: GoogleFonts.poppins(
              color: const Color(0xFFB8AFAF),
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              _buildRadioOption('Yes', hasLegalDocumentation, (value) {
                setState(() => hasLegalDocumentation = true);
              }),
              const SizedBox(width: 20),
              _buildRadioOption('No', !hasLegalDocumentation, (value) {
                setState(() => hasLegalDocumentation = false);
              }),
            ],
          ),

        ],
      ),
    );
  }

  Widget _buildRadioOption(String label, bool groupValue, Function(bool?) onChanged) {
    return Row(
      children: [
        Radio<bool>(
          value: true, // Represents "Yes"
          groupValue: groupValue,
          onChanged: onChanged,
          activeColor: const Color(0xFF72B0F3),
        ),
        GestureDetector(
          onTap: () => onChanged(true), // Makes text clickable
          child: Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }


  Widget _buildUploadSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '-If Yes,Please Upload:',
          style: GoogleFonts.poppins(
            color: const Color(0xFFD9D9D9),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        const UploadBox(),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildConsentSection() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Do you consent to be contacted by hospitals/doctors for donation request',
            style: GoogleFonts.poppins(
              color: const Color(0xFFB8AFAF),
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              _buildRadioOption('Yes', consentToContact, (value) {
                setState(() => consentToContact = value!);
              }),
              const SizedBox(width: 20),
              _buildRadioOption('No', !consentToContact, (value) {
                setState(() => consentToContact = !value!);
              }),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMedicalReportSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Upload a recent medical report',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        const UploadBox(),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DonarSuccessScreen()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            minimumSize: const Size(132, 44),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Text(
            'Submit',
            style: GoogleFonts.poppins(
              color: const Color(0xFFE13236),
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
