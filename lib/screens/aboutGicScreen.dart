import 'package:flutter/material.dart';

class AboutGICScreen extends StatefulWidget {
  @override
  _AboutGICScreenState createState() => _AboutGICScreenState();

}

class _AboutGICScreenState extends State<AboutGICScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.2,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 1,
                    decoration: BoxDecoration(
                      color: Color(0xff26304D),
                    ),
                    padding: EdgeInsets.all(40),
                    child: SafeArea(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 4,),
                          Text("About GIC",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          )
                        ],
                      ),
                    )
                )
              ],
            ),
          )
      ),
    );
  }
}