import 'package:final_project_bootcamp/core/resources/app_colors.dart';
import 'package:final_project_bootcamp/core/resources/app_style.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/get_font_size.dart';

class ContactTextField extends StatelessWidget {
  final TextEditingController controller;
  final IconData icon;
  final String label;
  final String hintText;
  final String? Function(String?)? validator;
  const ContactTextField({
    super.key,
    required this.controller,
    required this.icon,
    required this.label,
    required this.hintText,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppStyles.regular.copyWith(
              color: AppColors.myGrey, fontSize: getFontSize(context, 12)),
          icon: Icon(icon, color: AppColors.myBlue),
          labelText: label,
          labelStyle: AppStyles.semiBold.copyWith(
              color: AppColors.myBlack, fontSize: getFontSize(context, 16)),

          // border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
