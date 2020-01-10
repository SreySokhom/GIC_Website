import 'package:flutter/material.dart';
import 'package:gic_website/screens/UniversityPartnerScreen.dart';
import 'package:gic_website/screens/CompanyPartnerScreen.dart';

class PartnerScreen extends StatefulWidget {
  @override
  _PartnerScreenState createState() => _PartnerScreenState();
}

class _PartnerScreenState extends State<PartnerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight( 130.0),
            child:AppBar(
              title: Text("Partners",
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
                  Tab(text: "Universities",),
                  Tab(text: "Companies",),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              UniversitiesScreen(),
              CompaniesScreen()
            ],
          ),
        ),

      ),
    );
  }
}
