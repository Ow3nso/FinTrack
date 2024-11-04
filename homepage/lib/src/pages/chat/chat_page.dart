import 'package:flutter/material.dart';

import '../../widgets/button.dart';

class ChatPage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text(
            'Support',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('packages/homepage/lib/src/assets/Trust.png'),

            const SizedBox(height: 32.0,),

            const Text(
                'Fintrack Support',
                textAlign: TextAlign.center, // Center align the text
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Set text color to white for contrast
                ),
              ),

              const SizedBox(height: 16.0,),

              const Text(
                'Our dedicated team is here to assist you with any questions or issues related to our Fintrack mobile app',
                textAlign: TextAlign.center, // Center align the text
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey, // Set text color to white for contrast
                ),
              ),

              const SizedBox(height: 32),

              CustomButton(
                label: 'Start Chat',
                onPressed: () {}
              ),

              const SizedBox(height: 16.0),

              CustomButton(
                color: Colors.black,
                label: 'View FAQ',
                onPressed: () {}
              ),

          ],
        ),
      ),
    );
  }
}