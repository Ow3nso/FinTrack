import 'package:flutter/material.dart';

import 'package:onboarding/src/pages/signup_flow/signup_page_template.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SignUpPageTemplate(
      title: 'Log in to FinTrack',
      subtitle: 'Enter your registered mobile number to log in',
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
        const SizedBox(height: 24),
        const Text(
          'Password',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          style: const TextStyle(color: Colors.white),
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: const TextStyle(color: Colors.grey),
            filled: true,
            fillColor: Colors.black,
            prefixIcon: const Icon(Icons.lock, color: Colors.grey),
            suffixIcon: const Icon(Icons.visibility, color: Colors.grey),
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
        const SizedBox(height: 16,),
        const Text(
          'Forgot password?',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey
          ),
        )
      ],
      buttonText: 'Log In',
      onButtonPressed: () {
        // Handle sign-up action
        Navigator.pushNamed(context, '/mainPage');
      },
    );
  }
}
