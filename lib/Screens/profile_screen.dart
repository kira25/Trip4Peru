import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trip4peru/utilities/firebase_auth.dart';
import 'package:trip4peru/widgets/destination_carousel.dart';
import 'package:trip4peru/widgets/hotel_carousel.dart';

FirebaseUser loggedInUser;

class ProfileScreen extends StatefulWidget {
  static const String id = 'profile_screen';
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        print(_selectedIndex);
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
            color:
                _selectedIndex == index ? Colors.blue[100] : Color(0xFFE7BEE),
            // color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(30.0)),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  final _auth = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.power_settings_new),
                  onPressed: () {
                    AuthProvider().logOut();
                  },
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(left: 20.0, right: 120.0),
                child: Text(
                  'Que te gustaria encontrar?',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map((MapEntry map) => _buildIcon(map.key))
                  .toList(),
            ),
            SizedBox(height: 20.0),
            Container(
              child: _selectedIndex == 0 ? DestinationCarousel() : null,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: _selectedIndex == 1 ? Hotelcarousel() : null,
            ),
          ],
        ),
      )),
    );
  }
}
