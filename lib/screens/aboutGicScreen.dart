import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutGICScreen extends StatefulWidget {
  @override
  _AboutGICScreenState createState() => _AboutGICScreenState();
}

class _AboutGICScreenState extends State<AboutGICScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff26304D),
        centerTitle: true,
        title: Text("About GIC"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  'assets/images/gic_logo.png',
                  height: 130,
                ),
                Text(
                  "Founded in 1998, the Department of Information and Communication Engineering, also known as Département de"
                  "Génie d’Informatique et Communication (GIC) in French, has formed more than one thousand engineers and technicians in"
                  "computer science who are now participating actively in the development of both public and private sectors.",
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("For more information",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      SizedBox(
                        height: 16,
                      ),
                      _widgetInformation("Tel:", "(+855) 23 5555 942"),
                      _widgetInformation("Fax:", "(+855) 23 880 369"),
                      _widgetInformation("Email:", "itc.gicinfo@gmail.com"),
                      _widgetInformation("Website:", "gic.itc.edu.kh"),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: <Widget>[Text("Address")],
                          ),
                          Spacer(),
                          Column(
                            children: <Widget>[
                              Text(
                                "Office 307F, Building F, PO Box 86,\nRussian Conf. Blvd. Phnom Penh, Cambodia.",
                                textAlign: TextAlign.right,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            color: Color(0xff26304D),
            child: Text(
              "Copyright © 2020 by GIC Department",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }

  Widget _widgetInformation(String title, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          children: <Widget>[Text(title)],
        ),
        Spacer(),
        Column(
          children: <Widget>[Text(text), Divider()],
        ),
      ],
    );
  }
}
