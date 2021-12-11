// ignore_for_file: avoid_print

import 'package:boleto_em_dia/modules/login/login_controller.dart';
import 'package:boleto_em_dia/shared/themes/app_colors.dart';
import 'package:boleto_em_dia/shared/themes/app_images.dart';
import 'package:boleto_em_dia/shared/themes/app_text_styles.dart';
import 'package:boleto_em_dia/shared/widgets/social_login/social_login_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              height: size.height * 0.36,
              width: size.width,
              color: AppColors.primary,
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: size.height * 0.3,
              child: Image.asset(AppImages.person),
            ),
            Positioned(
              bottom: size.height * 0.1,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logoMini),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 24, left: 70, right: 70),
                    child: Text(
                      'Organize seus boletos em um só lugar',
                      style: AppTextStyles.titleHome,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SocialLoginButton(
                    onTap: () {
                      controller.googleSignIn(context);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
