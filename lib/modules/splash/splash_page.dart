import 'package:billsup/shared/themes/app_colors.dart';
import 'package:billsup/shared/themes/app_images.dart';
import 'package:billsup/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Center(child: Image.asset(AppImages.union)),
          Center(child: Image.asset(AppImages.logoFull)),
          Positioned(
            top: 460,
            left: 130,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Bills',
                    style: AppTextStyles.titleHomeRegular
                  ),
                  TextSpan(
                    text: 'UP',
                    style: AppTextStyles.titleHomePrimary,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
