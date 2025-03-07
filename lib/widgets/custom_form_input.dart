import 'package:flutter/material.dart';
import '../theme/colors.dart';

class CustomFormInput extends StatelessWidget {
  final String placeholder;
  final TextEditingController? controller;
  final bool isEnabled;
  final VoidCallback? onTap;

  const CustomFormInput({
    Key? key,
    required this.placeholder,
    this.controller,
    this.isEnabled = true,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 9),
      child: TextField(
        controller: controller,
        enabled: isEnabled,
        onTap: onTap,
        style: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: placeholder,
          hintStyle: const TextStyle(
            color: AppColors.inputText,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}