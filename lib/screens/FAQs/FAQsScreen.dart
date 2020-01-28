import 'package:flutter/material.dart';
import 'package:gic_website/screens/FAQs/FAQsGeneralScreen.dart';
import 'package:gic_website/screens/FAQs/FAQsInternshipScreen.dart';
import 'package:gic_website/screens/FAQs/FAQsScholarshipScreen.dart';

class FAQScreen extends StatefulWidget {
  @override
  _FAQScreenState createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight( 130.0),
              child:AppBar(
                title: Text("How can we help you ?",
                    style: TextStyle(
                    fontSize: 20,
                  )
                ),
                centerTitle: true,
                backgroundColor: Color(0xff26304D),
                elevation: 0,
                bottom: TabBar(
                  labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),
                  unselectedLabelColor: Colors.white,
                  labelColor: Color(0xff26304D),
                  indicator: BoxDecoration(
                      color: Colors.white
                  ),
                  tabs: <Widget>[
                    Tab(text: "General",),
                    Tab(text: "Internship",),
                    Tab(text: "Scholarship",),
                  ],
                ),
              ),
          ),
        body: TabBarView(
          children: <Widget>[
             GeneralScreen(),
            InternshipScreen(),
            ScholarshipScreen()
          ],
        ),
        ),

      ),
    );
  }
}
