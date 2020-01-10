import 'package:flutter/material.dart';
import 'package:gic_website/screens/LanguageScreen.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "More",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xff26304D),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Setting",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xffA61D37)),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 70,
                alignment: Alignment.center,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      const ListTile(

                        title: Text('Languages', style: TextStyle(color: Color(0xff707070), fontWeight: FontWeight.bold, fontSize: 16),),
                        trailing: Icon(Icons.arrow_forward_ios, size: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 140,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      const ListTile(
                        title: Text('Contact Us', style: TextStyle(color: Color(0xff707070), fontWeight: FontWeight.bold, fontSize: 16),),
                        trailing: Icon(Icons.arrow_forward_ios, size: 20),
                      ),
                      Divider(),
                      const ListTile(
                        title: Text('About Us', style: TextStyle(color: Color(0xff707070), fontWeight: FontWeight.bold, fontSize: 16),),
                        trailing: Icon(Icons.arrow_forward_ios, size: 20),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
