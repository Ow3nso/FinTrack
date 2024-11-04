import 'package:flutter/material.dart';

import 'package:homepage/src/pages/main_page.dart';

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

      title: 'HomePage',
      initialRoute: '/',
      routes: {

        '/':(context) => MainPage(),

      },
    );
  }
}