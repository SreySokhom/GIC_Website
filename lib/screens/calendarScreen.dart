import 'package:flutter/material.dart';
import 'package:gic_website/screens/homeScreen.dart';
import 'package:gic_website/styles/styles.dart';


class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendar", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
        backgroundColor: Styles.primaryColor,
      ),
      body: Column(
        children: <Widget>[

          GestureDetector(
            child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              child : Container(
                padding: EdgeInsets.only(left: 15),
                width: MediaQuery.of(context).size.width * 1,
                height: 100,
                decoration: Styles.boxDecoration,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Academic Calendar", style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    SizedBox(
                      child: Container(
                        color: Colors.red,
                        width: 120,
                        height: 3,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Icon(Icons.calendar_today, color: Styles.primaryColor, size: 50,)
                  ],
                ),
              ),
            ),
            onTap: (){
              Navigator.pop(context, MaterialPageRoute(builder: (context) => BottomNavigationBar()));
            },
          ),

          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            child : Container(
              padding: EdgeInsets.only(left: 15),
              width: MediaQuery.of(context).size.width * 1,
              height: 100,
              decoration: Styles.boxDecoration,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Timetable", style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  SizedBox(
                    child: Container(
                      color: Colors.orange,
                      width: 65,
                      height: 3,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Icon(Icons.calendar_today, color: Colors.yellow, size: 50,)
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
