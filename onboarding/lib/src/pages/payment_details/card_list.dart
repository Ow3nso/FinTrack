import 'package:flutter/material.dart';
import 'package:onboarding/src/pages/signup_flow/signup_page_template.dart';
// import '../../widgets/button.dart';

class CardListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SignUpPageTemplate(
      title: 'Card list',
      subtitle: 'Enter your credit card info into the box below.',
      inputFields: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 32.0),
          child: Card(
            color: Colors.grey[900],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListTile(
              leading: Image.asset(
                'packages/onboarding/lib/src/assets/mpesa.png', // Replace with your Mastercard logo asset
                width: 40,
                height: 40,
              ),
              title: const Text(
                'Account',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                '************3994',
                style: TextStyle(color: Colors.white70),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.white),
                onPressed: () {
                  // Handle delete action
                },
              ),
            ),
          ),
        ),
      ],
      buttonText: 'Continue',
      onButtonPressed: () {
        // Handle add another card action
        Navigator.pushNamed(context, '/mainPage');
      },
       // To match the button color in the image
    );
    
  }
}
