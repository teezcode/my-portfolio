import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final String? svgIconPath;
  final double borderRadius;
  final VoidCallback? onIconTap;
  final InputBorder? border;
  final int? maxLines; // Add maxLines property
  final int? maxLength; // Add maxLength property

  const CustomTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.obscureText = false,
    this.svgIconPath,
    this.borderRadius = 30.0,
    this.onIconTap,
    this.border,
    this.maxLines = 1, // Default to 1 line
    this.maxLength, // Optional max length
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      maxLines: maxLines,
      maxLength: maxLength, // Enforce max length if provided
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Color(0xff35353C),
        border: border ?? InputBorder.none,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 14.0,
        ),
        suffixIcon: svgIconPath != null
            ? GestureDetector(
          onTap: onIconTap,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(
              svgIconPath!,
              fit: BoxFit.contain,
            ),
          ),
        )
            : null,
        enabledBorder: border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(color: Color(0xff858282)),
            ),
        focusedBorder: border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: Colors.transparent),
            ),
      ),
    );
  }
}