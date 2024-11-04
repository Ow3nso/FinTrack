import 'package:flutter/material.dart';
import '../../widgets/button.dart';

class CardOnboardingView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100,),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('packages/onboarding/lib/src/assets/Send_money_abroad.png'),
                ],
              ),
            ),
            const Spacer(),

            const Text(
              'Add payment details',
              textAlign: TextAlign.center, // Center align the text
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Set text color to white for contrast
              ),
            ),

            const SizedBox(height: 16.0),

            const Text(
              'Experience the power of financial organization with our platform',
              textAlign: TextAlign.center, // Center align the text
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: Colors.grey, // Set text color to white for contrast
              ),
            ),

            const SizedBox(height: 16.0),

            CustomButton(
              color: const Color(0xFF315EE7),
              label: 'Proceed', 
              onPressed: () {
                Navigator.pushNamed(context, '/addCardDetails');
              }
            ),
          ],
        ),
      ),
    );
  }
}