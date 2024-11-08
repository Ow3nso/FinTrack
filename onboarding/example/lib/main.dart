import 'package:flutter/material.dart';
// import 'package:device_preview/device_preview.dart';

import 'package:onboarding/src/pages/onboarding/page_one.dart';
import 'package:onboarding/src/pages/onboarding/welcome_screen.dart';

import 'package:onboarding/src/pages/signup_flow/get_started.dart';
import 'package:onboarding/src/pages/signup_flow/add_phone_number.dart';
import 'package:onboarding/src/pages/signup_flow/confirm_phone_view.dart';
import 'package:onboarding/src/pages/signup_flow/login.dart';
import 'package:onboarding/src/pages/signup_flow/personal_info.dart';
import 'package:onboarding/src/pages/signup_flow/email_view.dart';
import 'package:onboarding/src/pages/signup_flow/home_address.dart';
import 'package:onboarding/src/pages/signup_flow/passscode.dart';

import 'package:onboarding/src/pages/payment_details/card_onboarding.dart';
import 'package:onboarding/src/pages/payment_details/add_card.dart';
import 'package:onboarding/src/pages/payment_details/confirm_payment_detail.dart';
import 'package:onboarding/src/pages/payment_details/card_list.dart';

import 'package:homepage/src/pages/main_page.dart';

// void main() {
//   runApp(
//     DevicePreview(
//       // White background looks professional in website embedding
//       backgroundColor: Colors.white,

//       // Enable preview by default for web demo
//       enabled: true,

//       // Start with Galaxy A50 as it's a common Android device
//       defaultDevice: Devices.ios.iPhone13ProMax,

//       // Show toolbar to let users test different devices
//       isToolbarVisible: true,

//       // Keep English only to avoid confusion in demos
//       availableLocales: [Locale('en', 'US')],

//       // Customize preview controls
//       tools: const [
//         // Device selection controls
//         DeviceSection(
//           model: true, // Option to change device model to fit your needs
//           orientation: false, // Lock to portrait for consistent demo
//           frameVisibility: false, // Hide frame options
//           virtualKeyboard: false, // Hide keyboard
//         ),

//         // Theme switching section
//         // SystemSection(
//         //   locale: false, // Hide language options - we're keeping it English only
//         //   theme: false, // Show theme switcher if your app has dark/light modes
//         // ),

//         // Disable accessibility for demo simplicity
//         // AccessibilitySection(
//         //   boldText: false,
//         //   invertColors: false,
//         //   textScalingFactor: false,
//         //   accessibleNavigation: false,
//         // ),

//         // Hide extra settings to keep demo focused
//         // SettingsSection(
//         //   backgroundTheme: false,
//         //   toolsTheme: false,
//         // ),
//       ],

//       // Curated list of devices for comprehensive preview
//       devices: [
//         // ... Devices.all, // uncomment to see all devices

//         // Popular Android Devices
//         Devices.android.samsungGalaxyA50, // Mid-range
//         Devices.android.samsungGalaxyNote20, // Large screen
//         Devices.android.samsungGalaxyS20, // Flagship
//         Devices.android.samsungGalaxyNote20Ultra, // Premium
//         Devices.android.onePlus8Pro, // Different aspect ratio
//         Devices.android.sonyXperia1II, // Tall screen

//         // Popular iOS Devices
//         Devices.ios.iPhoneSE, // Small screen
//         Devices.ios.iPhone12, // Standard size
//         Devices.ios.iPhone12Mini, // Compact
//         Devices.ios.iPhone12ProMax, // Large
//         Devices.ios.iPhone13, // Latest standard
//         Devices.ios.iPhone13ProMax, // Latest large
//         Devices.ios.iPhone13Mini, // Latest compact
//         Devices.ios.iPhoneSE, // Budget option
//       ],

//       /// Your app's entry point
//       builder: (context) => MyApp(),
//     ),
//   );
// }

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      // home: const HomePage(),

      title: 'Onboarding',
      initialRoute: '/',
      routes: {

        '/':(context) => OnboardingPage(),
        '/getStarted':(context) => GetStarted(),

        '/addPhoneNumberView':(context) => PhoneNumberView(),
        '/loginView':(context) => LoginView(),
        '/confirmPhoneView':(context) => ConfirmPhoneNumberView(),
        '/personalInfo':(context) => PersonalInfoView(),
        '/emailView':(context) => EmailView(),
        '/homeAddress':(context) => HomeAddressView(),
        '/passCodeView':(context) => PassCodeView(),
        '/welcomeScreen':(context) => WelcomeScreen(),
        '/cardOnboarding':(context) => CardOnboardingView(),
        '/addCardDetails':(context) => AddCardView(),
        '/confirmPaymentDetail':(context) => ConfirmPaymentDetailView(),
        '/cardList':(context) => CardListView(),
        '/mainPage':(context) => MainPage(),

      },
    );
  }
}