import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gic_website/styles/styles.dart';
import 'package:gic_website/webViewScreen.dart';

class Calender extends StatefulWidget {
  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Color(0xff26304D),
      ),
      body: Column(
        children: <Widget>[
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              child : Container(
                padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
                width: MediaQuery.of(context).size.width * 1,
                height: 105,
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
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => ViewDetailScreen(url: "https://gic.itc.edu.kh/calendar", header: "Academic Calendar",)
              ));
            },
          ),
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              child : Container(
                padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
                width: MediaQuery.of(context).size.width * 1,
                height: 105,
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
                    SizedBox(height: 10,),
                    Image.asset('assets/images/calendar.png', width: 50, height: 50,)
                  ],
                ),
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ViewDetailScreen(url: "https://gic.itc.edu.kh/timetable", header: "Timetable",)
              ));
            },
          ),
        ],
      ),
    );
  }

}