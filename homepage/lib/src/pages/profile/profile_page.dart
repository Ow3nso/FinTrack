import 'package:flutter/material.dart';

import '../../widgets/profilepage/button.dart';

class ProfilePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(Icons.arrow_back_ios_rounded)
            ],
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  'v2024.10.24',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),
                )
              ],
            ),
          )
        ],
      ),
      extendBody: true,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Settings',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32.0,
              ),
            ),

            const SizedBox(height: 16.0),

            SettingsButton(
              title: 'Set Currency',
              icon: const Icon(Icons.currency_bitcoin),
              description: 'Change your currency',
              bgColor: Colors.black,
              onPressed: () {},
            ),

            const SizedBox(height: 16.0),

            SettingsButton(
              title: 'Account',
              icon: const Icon(Icons.account_circle),
              description: 'View account details',
              bgColor: const Color.fromARGB(15, 226, 223, 223).withOpacity(0.2),
              onPressed: () {},
            ),

            const SizedBox(height: 16.0),

            const Text(
              'Import & Export',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16.0),

            SettingsButton(
              title: 'Export',
              icon: const Icon(Icons.print),
              description: 'Export data to CSV',
              bgColor: const Color.fromARGB(15, 226, 223, 223).withOpacity(0.2),
              onPressed: () {},
            ),

            const SizedBox(height: 16.0),

            SettingsButton(
              title: 'Backup',
              icon: const Icon(Icons.print),
              description: 'Backup data to google drive',
              bgColor: const Color.fromARGB(15, 226, 223, 223).withOpacity(0.2),
              onPressed: () {},
            ),

            const SizedBox(height: 16.0),

            const Text(
              'Other',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16.0),

            SettingsButton(
              title: 'Exchange rates',
              icon: const Icon(Icons.print),
              description: 'View rates with other curencies',
              bgColor: const Color.fromARGB(15, 226, 223, 223).withOpacity(0.2),
              onPressed: () {},
            ),

            const SizedBox(height: 16.0),

            SettingsButton(
              title: 'Help center',
              icon: const Icon(Icons.print),
              description: 'Request help from us',
              bgColor: const Color.fromARGB(15, 226, 223, 223).withOpacity(0.2),
              onPressed: () {},
            ),

            const SizedBox(height: 16.0),

            SettingsButton(
              title: 'Request a feature',
              icon: const Icon(Icons.print),
              description: 'We value users updates',
              bgColor: const Color.fromARGB(15, 226, 223, 223).withOpacity(0.2),
              onPressed: () {},
            ),

            const SizedBox(height: 16.0),

            SettingsButton(
              title: 'Rate us on google play',
              icon: const Icon(Icons.star),
              description: 'Please give us a five star',
              bgColor: const Color.fromARGB(15, 226, 223, 223).withOpacity(0.2),
              onPressed: () {},
            ),

            const SizedBox(height: 16.0),
            
            const Text(
              'Danger zone',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16.0),

            SettingsButton(
              title: 'Delete account',
              icon: const Icon(Icons.delete),
              description: 'Dispose all user account data',
              bgColor: const Color.fromARGB(255, 250, 54, 40),
              onPressed: () {},
            ),

            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}