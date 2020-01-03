import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home", style: TextStyle(
                fontWeight: FontWeight.bold
            ),),
//            backgroundColor: Colors.blueAccent
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home", style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
//              backgroundColor: Colors.blueAccent
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home", style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
//              backgroundColor: Colors.blueAccent
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home", style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
//              backgroundColor: Colors.blueAccent
          )
        ],
        selectedItemColor: Color(0xff26304D),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepOrangeAccent
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height/2*0.3,
                width: MediaQuery.of(context).size.width*1,
                decoration: BoxDecoration(
                  color: Color(0xff26304D),
                ),
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/images/gic_logo.png",
                        height:60,width:70
                    ),
                    Text("Génie Informatique et Communication",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      )
    );
  }
}
