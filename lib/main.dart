import 'package:abcxyz/ForgotPassword/ForgotPassEnterCode.dart';
import 'package:abcxyz/ForgotPassword/ForgotPassVerifi.dart';
import 'package:abcxyz/ForgotPassword/ForgotPasswordEmail.dart';
import 'package:abcxyz/WelcomePage/WelcomePage.dart';
import 'package:abcxyz/register/register.dart';
import 'package:abcxyz/Login/login.dart';
import 'package:abcxyz/register/register.dart';
import 'package:abcxyz/verification/verification.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      routes: {
        "/": (context) => WelcomeScreens(),
        "Login": (context) => LoginScreens(),
        "Register": (context) => RegisterScreens(),
        "Verification": (context) => VerificationScreen(),
        "ForgotPasswordEmail": (context) => ForgotEmailScreen(),
        "ForgotPassVerification": (context) => ForgotVerification(),
        "ForgotPassEnterCode":(context)=>ForgotPassEnterCode()
      },
    );
  }
}
