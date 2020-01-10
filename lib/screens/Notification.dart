import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();

}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Notification", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Color(0xff26304D),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        child:Card(
          child: Center(
                child: Stack(
                 children: <Widget>[
                 Center(
                   child: Opacity(
                     opacity: 0.5,
                     child: Image(image: AssetImage("assets/images/gic_logo.png",),
                      colorBlendMode:BlendMode.hue,
                      fit: BoxFit.fill,
                      ),
                   ),
                 ),
                Padding(
                  padding: const EdgeInsets.only(top: 350, left: 130),
                  child: Text("No Notification !",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                  ),
                )
            ]
            ),
          ),
        )
      ),
    );
  }
}