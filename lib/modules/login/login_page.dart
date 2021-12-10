import 'package:billsup/shared/themes/app_colors.dart';
import 'package:billsup/shared/themes/app_images.dart';
import 'package:billsup/shared/themes/app_text_styles.dart';
import 'package:billsup/shared/widgets/social_login/social_login_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              bottom: 220,
              child: Image.asset(AppImages.person),
            ),
            Positioned(
              bottom: size.height * 0.10,
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
                  SocialLoginButton(onTap: () {
                    debugPrint('FUNCIONA');
                  }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
