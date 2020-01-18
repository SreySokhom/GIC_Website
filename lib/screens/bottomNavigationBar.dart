import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:gic_website/screens/calendarScreen.dart';
import 'package:gic_website/screens/homeScreen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBarScreen> {

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(currentPage),
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CalendarScreen(),
    HomeScreen(),
    CalendarScreen(),
  ];

  Widget _bottomNavigationBar(){
    return FancyBottomNavigation(
      textColor: Color(0xff26304D),
      circleColor: Color(0xff26304D),
      inactiveIconColor: Color(0xff26304D),
      initialSelection: currentPage,
      tabs: [
        TabData(
          iconData: Icons.home,
          title: "Home",
          onclick: (){
            return HomeScreen();
          }
        ),
        TabData(
          iconData: Icons.calendar_today,
          title: "Calendar",
          onclick: (){
            return CalendarScreen();
          },
        ),
        TabData(
          iconData: Icons.notifications,
          title: "Notification",
          onclick: () => print("Notificaftion"),
        ),
        TabData(
          iconData: Icons.menu,
          title: "Menu",
          onclick: () => print("Menu"),
        )
      ],
      onTabChangedListener: (position) {
        setState(() {
          currentPage = position;
        });
      },
    );
  }
}
