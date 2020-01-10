import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:gic_website/screens/Home.dart';
import 'package:gic_website/screens/Calender.dart';
import 'package:gic_website/screens/Notification.dart';
import 'package:gic_website/screens/More.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Calender(),
    Notifications(),
    More(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(currentPage),
      bottomNavigationBar: FancyBottomNavigation(
        textColor: Color(0xff26304D),
        circleColor: Color(0xff26304D),
        inactiveIconColor: Color(0xff26304D),
        initialSelection: currentPage,
        tabs: [
          TabData(
            iconData: Icons.home,
            title: "Home",
            onclick: () => print("Home"),
          ),
          TabData(
            iconData: Icons.calendar_today,
            title: "Calendar",
            onclick: () => print("Calendar"),
          ),
          TabData(
            iconData: Icons.notifications,
            title: "Notification",
            onclick: () => print("Notificaftion"),
          ),
          TabData(
            iconData: Icons.menu,
            title: "Menu",
            onclick: () => print("More"),
          )
        ],
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }
}

//MaterialButton(
//onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => new AboutGICScreen())),
//child: Text('Clicked to about gic'),
//)
