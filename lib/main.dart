import 'package:billsup/modules/home/home_page.dart';
import 'package:billsup/modules/login/login_page.dart';
import 'package:billsup/modules/splash/splash_page.dart';
import 'package:billsup/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bills Up',
      theme: ThemeData(primaryColor: AppColors.primary),
      home: const LoginPage(),
    );
  }
}
