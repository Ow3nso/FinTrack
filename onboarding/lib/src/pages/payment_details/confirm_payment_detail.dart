import 'package:flutter/material.dart';
import 'package:onboarding/src/pages/signup_flow/signup_page_template.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ConfirmPaymentDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SignUpPageTemplate(
      title: 'Confirm your Mpesa Number',
      subtitle: 'We sent a 6-digit code to +254707394018',
      inputFields: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 32.0),
          child: PinCodeTextField(
            appContext: context,
            length: 6,
            obscureText: false,
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
        Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Time remaining: 00:56",
              style: TextStyle(color: Colors.grey),
            ),

            const Spacer(),
            
            TextButton(
              onPressed: () {
                // Handle resend code action
              },
              child: const Text(
                'Resend code',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ],
      buttonText: 'Verify Your Number',
      onButtonPressed: () {
        // Handle verification action
        Navigator.pushNamed(context, '/cardList');
      },
    );
  }
}
