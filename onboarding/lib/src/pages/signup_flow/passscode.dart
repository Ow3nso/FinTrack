import 'package:flutter/material.dart';
import 'package:onboarding/src/pages/signup_flow/signup_page_template.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PassCodeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SignUpPageTemplate(
      title: 'Create passcode',
      subtitle: 'Secure your wallet with a 4-digit passcode',
      inputFields: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: PinCodeTextField(
            appContext: context,
            length: 4,
            obscureText: true,
            animationType: AnimationType.fade,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.underline,
              activeColor: Colors.white,
              inactiveColor: Colors.grey,
              selectedColor: Colors.blue,
              fieldHeight: 60,
              fieldWidth: 50,
            ),
            textStyle: const TextStyle(color: Colors.white),
            onChanged: (value) {
              // Handle changes if needed
            },
          ),
        ),
      ],
      buttonText: 'Create your wallet',
      onButtonPressed: () {
        // Handle verification action
        Navigator.pushNamed(context, '/welcomeScreen');
      },
    );
  }
}
