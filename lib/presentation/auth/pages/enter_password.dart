import 'package:bloc_ecommerce_firebase/common/helper/navogator/app_navigator.dart';
import 'package:bloc_ecommerce_firebase/common/widget/appbar/app_bar.dart';
import 'package:bloc_ecommerce_firebase/common/widget/button/basic_app_button.dart';
import 'package:bloc_ecommerce_firebase/presentation/auth/pages/forgot_password.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinText(context),
            const SizedBox(height: 20),
            _passwordField(context),
            const SizedBox(height: 20),
            _continueButton(context),
            const SizedBox(height: 20),
            _forgotAccount(context),
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

  Widget _passwordField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Enter Password',
      ),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {},
      title: "Continue",
    );
  }

  Widget _forgotAccount(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      const TextSpan(text: "Forgot password? "),
      TextSpan(
        text: "Reset",
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            AppNavigator.push(context, ForgotPasswordPage());
          },
        style: const TextStyle(fontWeight: FontWeight.bold),
      )
    ]));
  }
}
