import 'package:boleto_em_dia/shared/auth/auth_controller.dart';
import 'package:boleto_em_dia/shared/themes/app_colors.dart';
import 'package:boleto_em_dia/shared/themes/app_images.dart';
import 'package:boleto_em_dia/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.currentUser(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Center(child: Image.asset(AppImages.union)),
          Positioned(
            top: 240,
            left: 0,
            right: 0,
            child: Image.asset(AppImages.logoFull),
          ),
          Positioned(
            top: 400,
            left: 0,
            right: 0,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                      text: 'boleto em\n',
                      style: AppTextStyles.splashHomeRegular),
                  TextSpan(
                    text: 'dia ✔',
                    style: AppTextStyles.splashHomePrimary,
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
