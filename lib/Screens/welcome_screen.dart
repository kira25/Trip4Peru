import 'package:flutter/material.dart';


import 'package:trip4peru/Screens/registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0)
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60.0),
                  child: Image(
                    image: AssetImage('./images/welcome_screen.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Bienvenido a Trip4Peru',
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(
            height: 30.0,
          ),
          ButtonTheme(
            minWidth: 200.0,
            height: 50.0,
            child: RaisedButton(
                elevation: 10.0,
                child: Text('Comenzemos'),
                color: Color(0xFFF85959),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                }),
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        ImageIcon(
                          AssetImage('./images/trekking.png'),
                          color: Color(0xFF7c203a),
                          size: 60.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Aventura')
                      ],
                    ),
                  )
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        ImageIcon(
                          AssetImage('./images/museo.png'),
                          color: Color(0xFF7c203a),
                          size: 60.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Aventura')
                      ],
                    ),
                  )
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        ImageIcon(
                          AssetImage('./images/pareja.png'),
                          color: Color(0xFF7c203a),
                          size: 60.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Aventura')
                      ],
                    ),
                  )
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        ImageIcon(
                          AssetImage('./images/indio.png'),
                          color: Color(0xFF7c203a),
                          size: 60.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Aventura')
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
