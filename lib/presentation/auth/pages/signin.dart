import 'package:bloc_ecommerce_firebase/common/helper/navogator/app_navigator.dart';
import 'package:bloc_ecommerce_firebase/common/widget/appbar/app_bar.dart';
import 'package:bloc_ecommerce_firebase/common/widget/button/basic_app_button.dart';
import 'package:bloc_ecommerce_firebase/presentation/auth/pages/enter_password.dart';
import 'package:bloc_ecommerce_firebase/presentation/auth/pages/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(hideBack: true,),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinText(context),
            const SizedBox(height: 20),
            _emailField(context),
            const SizedBox(height: 20),
            _continueButton(context),
            const SizedBox(height: 20),
            _createAccount(context),
          ],
        ),
      ),
    );
  }

  Widget _signinText(BuildContext context) {
    return const Text(
      "Sign In",
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _emailField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Enter Email',
      ),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.push(context, const EnterPasswordPage());
      },
      title: "Continue",
    );
  }

  Widget _createAccount(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      const TextSpan(text: "Don't you have an account? "),
      TextSpan(
        text: "Create one",
        recognizer: TapGestureRecognizer()..onTap = () {
          AppNavigator.push(context, const SignupPage());
        },
        style: const TextStyle(fontWeight: FontWeight.bold),
      )
    ]));
  }
}
