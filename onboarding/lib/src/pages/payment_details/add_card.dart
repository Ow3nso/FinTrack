import 'package:flutter/material.dart';

import 'package:onboarding/src/pages/signup_flow/signup_page_template.dart';

class AddCardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SignUpPageTemplate(
      title: 'Payment details',
      subtitle: 'Your Mpesa number will be used for payments',
      inputFields: [
        const Text(
          'Phone',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Container(
              height: 48,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'packages/onboarding/lib/src/assets/kenyan_flag.png',
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    '+254',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: TextField(
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Mobile number',
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.black,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
          ],
        ),
      
      ],
      buttonText: 'Confirm number',
      onButtonPressed: () {
        Navigator.pushReplacementNamed(context, '/confirmPaymentDetail');
      },
    );
  }
}
