import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 25, left: 25, top: 20),
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/gic_logo.png',
                  height: 130,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Founded in 1998, the Department of Information and Communication Engineering, also known as Département de"
                  "Génie d’Informatique et Communication (GIC) in French, has formed more than one thousand engineers and technicians in"
                  "computer science who are now participating actively in the development of both public and private sectors.",
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(height: 1.3),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("For more information",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                     child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Text("Tel:"),
                                flex: 1,
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: _launchTel,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text("(+855) 23 5555 942")
                                    ],
                                  ),
                                ),
                                flex: 2,
                              )
                            ],
                          ),
                          Divider(),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Text("Fax:"),
                                flex: 1,
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: _launchFax,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text("(+855) 23 5555 942")
                                    ],
                                  ),
                                ),
                                flex: 2,
                              )
                            ],
                          ),
                          Divider(),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Text("Email:"),
                                flex: 1,
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: _launchEmail,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text("itc.gicinfo@gmail.com")
                                    ],
                                  ),
                                ),
                                flex: 2,
                              )
                            ],
                          ),
                          Divider(),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Text("Website:"),
                                flex: 1,
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: _launchWeb,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text("gic.itc.edu.kh")
                                    ],
                                  ),
                                ),
                                flex: 2,
                              )
                            ],
                          ),
                          Divider(),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Text("Address:"),
                                flex: 1,
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: _launchMap,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text("Office 307F, Building F, PO Box 86, Russian Conf. Blvd. Phnom Penh, Cambodia.",
                                      softWrap: true,
                                      textAlign: TextAlign.right,)
                                    ],
                                  ),
                                ),
                                flex: 2,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            color: Color(0xff26304D),
            child: Center(
              child: Text("Copyright © 2020 by GIC Department",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,)
              ),
            ),
          )
        ],
      ),
    );
  }

  _launchTel() async {
    const tel = 'tel:023 5555 942';
    if (await canLaunch(tel)) {
      await launch(tel);
    } else {
      throw 'Could not launch $tel';
    }
  }

  _launchFax() async {
    const tel = 'tel:023 5555 942';
    if (await canLaunch(tel)) {
      await launch(tel);
    } else {
      throw 'Could not launch $tel';
    }
  }

  _launchEmail() async {
    const mail = 'mailto:itc.gicinfo@gmail.com?subject=News&body=New%20plugin';
    if (await canLaunch(mail)) {
      await launch(mail);
    } else {
      throw 'Could not launch $mail';
    }
  }

  _launchWeb() async {
    const website = 'http:gic.itc.edi.kh';
    if (await canLaunch(website)) {
      await launch(website);
    } else {
      throw 'Could not launch $website';
    }
  }

  _launchMap() async {
    const website = 'http:gic.itc.edi.kh';
    if (await canLaunch(website)) {
      await launch(website);
    } else {
      throw 'Could not launch $website';
    }
  }

}
