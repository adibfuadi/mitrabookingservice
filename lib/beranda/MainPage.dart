import 'package:flutter/material.dart';
import 'HomePage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Mr Book', textAlign: TextAlign.center),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Color(0xFFF0F0F0),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Home')),
            BottomNavigationBarItem(icon: Icon(Icons.book),title: Text('Book')),
            BottomNavigationBarItem(icon: Icon(Icons.account_box),title: Text('Profile')),
            BottomNavigationBarItem(icon: Icon(Icons.more),title: Text('More')),
          ]),
      body: getBodyWidget(),
    );
  }

  getBodyWidget() {
    return (_currentIndex==0)? HomePage():Container();
  }
}
