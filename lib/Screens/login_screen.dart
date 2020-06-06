import 'package:flutter/material.dart';
import 'package:trip4peru/Screens/registration_screen.dart';
import 'package:trip4peru/utilities/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              SizedBox(height: 100.0,),
              Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0),
              ),
              SizedBox(
                height: 18.0,
              ),
              GestureDetector(child: Text('¿No tienes una cuenta? Crear una cuenta'),
              onTap: (){
                Navigator.pushNamed(context, RegistrationScreen.id);
              },)
              ,
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
                  child: Text('Login'),
                  onPressed: () async {
                    if (_emailController.text.isEmpty ||
                        _passwordController.text.isEmpty) {
                      print('Email and password cannot be empty');
                      return;
                    }
                    bool res = await AuthProvider().signInWithEmail(
                        _emailController.text, _passwordController.text);
                    if (!res) {
                      print('login failed');
                    }
                    print('login pressed');
                  }),
              RaisedButton(child: Text('Log with Google'),onPressed: () async {
               bool res = await AuthProvider().loginWithGoogle();
               if(!res)
               print('error logging with google');
              })
            ],
          ),
        ),
      ),
    );
  }
}
