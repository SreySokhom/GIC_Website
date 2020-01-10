import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                              height:70,width:80
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
              ],
            ),
          )
      ),
    );
  }

}