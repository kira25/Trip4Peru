import 'package:flutter/material.dart';

import 'package:trip4peru/Screens/login_screen.dart';
import 'package:trip4peru/Screens/main_screen.dart';
import 'package:trip4peru/Screens/profile_screen.dart';
import 'package:trip4peru/Screens/registration_screen.dart';


import 'Screens/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        MainScreen.id: (context) => MainScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
      },
    );
  }
}
