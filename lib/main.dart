// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutterapp_findjobez/pages/home_page.dart';
import 'package:flutterapp_findjobez/pages/onboarding_page.dart';
import 'package:flutterapp_findjobez/pages/sign_in_page.dart';
import 'package:flutterapp_findjobez/pages/sign_up_page.dart';
import 'package:flutterapp_findjobez/pages/splash_page.dart';
import 'package:flutterapp_findjobez/providers/auth_provider.dart';
import 'package:flutterapp_findjobez/providers/user_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider<UserProvider>(
          create: (context) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/onboarding': (context) => OnBoardingPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => HomePage(),
        },
      ),
    );
  }
}
