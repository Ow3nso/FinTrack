import 'package:flutter/material.dart';

import 'package:onboarding/src/pages/signup_flow/signup_page_template.dart';

class HomeAddressView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SignUpPageTemplate(
      title: 'Home Address',
      subtitle: 'The info needs to be accurate with your ID document',
      inputFields: [

        const Text(
          'Address Line',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'John Doe',
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

        const SizedBox(height: 16,),

        const Text(
          'City',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'City, State',
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

        const SizedBox(height: 16,),

        const Text(
          'Postal Code',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Ex: 00000',
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

        const SizedBox(height: 16,),
        
      ],
      buttonText: 'Continue',
      onButtonPressed: () {
        // Handle sign-up action
        Navigator.pushNamed(context, '/passCodeView');
      },
    );
  }
}
