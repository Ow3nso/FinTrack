import 'package:flutter/material.dart';

import '../../widgets/button.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, 
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const SizedBox(height: 100,),

              Image.asset('packages/onboarding/lib/src/assets/Send_money_abroad.png'),

              // const SizedBox(height: 50,),

              const Spacer(),

              const Text(
                'Congratulations!',
                textAlign: TextAlign.center, // Center align the text
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Set text color to white for contrast
                ),
              ),

              const Text(
                'Welcome to FinTrack',
                textAlign: TextAlign.center, // Center align the text
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Set text color to white for contrast
                ),
              ),

              const SizedBox(height: 16.0,),

              const Text(
                'We are happy to have you. It\'s time to send, and receive and track your expenses',
                textAlign: TextAlign.center, // Center align the text
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey, // Set text color to white for contrast
                ),
              ),

              const SizedBox(height: 16,),

              CustomButton(
                label: 'Continue',
                onPressed: () async {
                  Navigator.pushNamed(context, '/cardOnboarding');
                },
                color: const Color(0xFF315EE7),
                textColor: Colors.white,
                width: double.infinity,
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}