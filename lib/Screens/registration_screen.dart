import 'package:flutter/material.dart';
import 'package:trip4peru/Screens/login_screen.dart';
import 'package:trip4peru/Screens/main_screen.dart';

import 'package:trip4peru/utilities/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController _emailController;

  TextEditingController _passwordController;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: '');
    _passwordController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100.0,
              ),
              Text(
                'Cuentanos sobre ti',
                style: GoogleFonts.oswald(
                    textStyle:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 18.0,
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(hintText: 'Enter your email'),
              ),
              SizedBox(
                height: 18.0,
              ),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(hintText: 'Enter your password'),
              ),
              SizedBox(
                height: 18.0,
              ),
              RaisedButton(
                  child: Text('Register'),
                  onPressed: () async {
                    if (_emailController.text.isEmpty ||
                        _passwordController.text.isEmpty) {
                      print('Email and password cannot be empty');
                      return;
                    }
                    bool res = await AuthProvider().createWithEmail(
                        _emailController.text, _passwordController.text);
                    if (!res) {
                      Navigator.pushNamed(context, LoginScreen.id);
                    }
                  }),

                  GestureDetector(child: Text('Ya tienes una cuenta? Inicia sesion'),onTap: (){
                    Navigator.pushNamed(context, MainScreen.id);
                  },)
            ],
          ),
        ),
      ),
    );
  }
}
