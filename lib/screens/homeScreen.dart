import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:gic_website/screens/aboutGicScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  color: Color(0xff26304D),
                ),
                padding: EdgeInsets.only(top: 5),
                child: SafeArea(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/images/gic_logo.png",
                          height:70,width:70
                      ),
                      SizedBox(height: 4,),
                      Text("Génie Informatique et Communication",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'SegoePrint',
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                )
              ),
              MaterialButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => new AboutGICScreen())),
                child: Text('Clicked to about gic'),
              )
            ],
          ),
        )
      ),
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
            onclick: () => print("Menu"),
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
