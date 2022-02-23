// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutterapp_findjobez/pages/home_page.dart';
import 'package:flutterapp_findjobez/pages/onboarding_page.dart';
import 'package:flutterapp_findjobez/pages/sign_in_page.dart';
import 'package:flutterapp_findjobez/pages/sign_up_page.dart';
import 'package:flutterapp_findjobez/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnBoardingPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
