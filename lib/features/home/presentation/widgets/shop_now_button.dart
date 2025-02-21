// import 'package:final_project_bootcamp/core/app_colors.dart';
// import 'package:final_project_bootcamp/core/app_styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_style.dart';
class ShopNowButton extends StatelessWidget {
  const ShopNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.myBink,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "Shop Now",
        style: AppStyles.semiBold.copyWith(
          color: AppColors.myBlue,
          fontSize: 10,
        ),
      ),
    );
  }
}
