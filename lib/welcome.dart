import 'package:flutter/material.dart';

import 'cardscreen.dart';
import 'homescreen.dart';
class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  var screens = [
    HomeScreen(),
    CardScreen(),
  ]; //screens for each tab

  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(38, 81, 158, 1),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home")
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              title: Text("Card")
          ),
        ],
        onTap: (index){
          setState(() {
            selectedTab = index;
          });
        },
        showUnselectedLabels: true,
        iconSize: 30,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        elevation: 0,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screens[selectedTab],
    );





  }
}
