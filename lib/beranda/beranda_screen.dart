import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_login_ui/utilities/constants.dart';
import 'package:project1/utilities/constants.dart';
import 'package:project1/widget/circular_clipper.dart';

class BerandaScreen extends StatefulWidget {
  @override
  _BerandaScreenState createState() => _BerandaScreenState();
}

class _BerandaScreenState extends State<BerandaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                transform: Matrix4.translationValues(0.0, -50.0, 0.0),
                child: ClipShadowPath(
                  clipper: CircularClipper(),
                  shadow: Shadow(blurRadius: 0.0),
//                  child: Image(
//                    height: 300.0,
//                    width: double.infinity,
//                    fit: BoxFit.cover,
//                    image: AssetImage('assets/background.jpg'),
//                  ),

                ),
              ),

            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "    Hi, User",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'OpenSans',
                    fontSize: 25.0,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
//                IconButton(
//                  padding: EdgeInsets.only(left: 30.0),
//                  onPressed: () => Navigator.pop(context),
//                  icon: Icon(Icons.arrow_back),
//                  iconSize: 30.0,
//                  color: Colors.black,
//                ),
              ],
            )
            ],
          )

        ],
      ),
    );
  }
}
