import 'package:flutter/material.dart';

import '../../widgets/button.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ), // Set the background color of the page to black
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Image.asset('packages/onboarding/lib/src/assets/Send_money_abroad.png'),

              const SizedBox(height: 50,),

              const Text(
                'Create your FinTrack account',
                textAlign: TextAlign.center, // Center align the text
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Set text color to white for contrast
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'FinTrack is a powerful tool that allows you to easily send, receive and track all your expenses',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              ),

              const SizedBox(height: 50),

              CustomButton(
                label: 'Sign Up',
                onPressed: () async {
                  Navigator.pushNamed(context, '/addPhoneNumberView');
                },
                color: Color(0xFF315EE7),
                textColor: Colors.white,
                width: double.infinity,
                height: 50,
              ),

              const SizedBox(height: 20),

              CustomButton(
                label: 'Log In',
                onPressed: () async {
                  Navigator.pushNamed(context, '/loginView');
                },
                color: Colors.black,
                textColor: Colors.white,
                width: double.infinity,
                height: 50,
              ),

              const Spacer(),

              const Text(
                'By continuing you accept our terms of service and privacy policy',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}