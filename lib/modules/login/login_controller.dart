// ignore_for_file: avoid_print

import 'package:boleto_em_dia/shared/auth/auth_controller.dart';
import 'package:boleto_em_dia/shared/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController {
  Future<void> googleSignIn(BuildContext context) async {
    final authController = AuthController();

    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final response = await _googleSignIn.signIn();
      final user = UserModel(
        name: response!.displayName!,
        photoURL: response.photoUrl,
      );
      authController.setUser(context, user);
      print(response);
    } catch (error) {
      print(error);
      authController.setUser(context, null);
    }
  }
}
