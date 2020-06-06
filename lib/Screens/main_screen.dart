import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trip4peru/Screens/loading_screen.dart';
import 'package:trip4peru/Screens/login_screen.dart';
import 'package:trip4peru/Screens/profile_screen.dart';


class MainScreen extends StatelessWidget {
  static const String id = 'main_screen';
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (context, AsyncSnapshot<FirebaseUser> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting)
          return LoadingScreen();
        if (snapshot.data == null || !snapshot.hasData) return LoginScreen();
        return ProfileScreen();
      },
    );
  }
}
