import 'package:bloc_ecommerce_firebase/common/helper/navogator/app_navigator.dart';
import 'package:bloc_ecommerce_firebase/common/widget/appbar/app_bar.dart';
import 'package:bloc_ecommerce_firebase/common/widget/button/basic_app_button.dart';
import 'package:bloc_ecommerce_firebase/presentation/auth/pages/enter_password.dart';
import 'package:bloc_ecommerce_firebase/presentation/auth/pages/signin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _createAccountText(context),
            const SizedBox(height: 20),
            _firstNameField(context),
            const SizedBox(height: 20),
            _lastNameField(context),
            const SizedBox(height: 20),
            _emailField(context),
            const SizedBox(height: 20),
            _passwordField(context),
            const SizedBox(height: 20),
            _continueButton(context),
            const SizedBox(height: 20),
            _createAccount(context),
          ],
        ),
      ),
    );
  }

  Widget _createAccountText(BuildContext context) {
    return const Text(
      "Create Account",
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _firstNameField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Firstname',
      ),
    );
  }

  Widget _lastNameField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: ' Lastname',
      ),
    );
  }

  Widget _emailField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Email Address',
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Password',
      ),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        // AppNavigator.push(context, EnterPasswordPage());
      },
      title: "Continue",
    );
  }

  Widget _createAccount(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      const TextSpan(text: "Do you have an account? "),
      TextSpan(
        text: "Signin",
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            AppNavigator.pushReplacement(context, SignInPage());
          },
        style: const TextStyle(fontWeight: FontWeight.bold),
      )
    ]));
  }
}
