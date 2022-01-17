import 'package:flutter/material.dart';
import 'package:signtranslator/screens/home.dart';
import 'package:signtranslator/screens/login.dart';
import 'package:signtranslator/screens/signup.dart';
import 'package:signtranslator/screens/splash.dart';

class Routes {
  static const authLanding = '/auth_landing';
  static const loginScreen = '/login_screen';
  static const home = '/home';
  static const signUp = '/sign_up';

  static Map<String, Widget Function(BuildContext)> appRoutes(
          BuildContext context) =>
      {
        authLanding: (context) => AuthLanding(),
        loginScreen: (context) => LoginScreen(),
        home: (context) => Home(),
        signUp: (context) => SignUp()
      };
}
