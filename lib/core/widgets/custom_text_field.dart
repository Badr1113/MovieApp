import 'package:flutter/material.dart';
import '../resources/color_manager.dart';

/// FROM Mohamed Fawzy You can Change it as you need or remove it



class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final bool isPassword;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.isPassword = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      style: const TextStyle(color: ColorManager.white),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: ColorManager.grey),
        prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: ColorManager.white) : null,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: ColorManager.cardBackground,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
