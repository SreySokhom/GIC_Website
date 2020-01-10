import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
// import 'package:carousel_pro/carousel_pro.dart';
import 'package:gic_website/screens/carousel_slider.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
 
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
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
                          height:70,width:70
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
              CarouselWithIndicator(),
       
                  Align(
                    
                    alignment: Alignment.centerLeft,
                    child:
                    Container(
                    margin: EdgeInsets.only(left:10,bottom:10),
                    child: Text("Features",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 25,
                          
                        ),
                      ),  
                  )),
                  Container(
                    margin:EdgeInsets.only(top:10,bottom:5),
                    child:
                   Row(
                 
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children:[
                   
                     Container(
                     height:120,
                     width: 120,
                     decoration:BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(20.0)),
                       color: Color(0xFFFFFFFF),
                       boxShadow: [
                           BoxShadow(
                           color: Color(0x3fC1C1C1),
                           blurRadius: 6.0, // soften the shadow
                           spreadRadius: 2.0, //extend the shadow
                           offset: Offset(
                             0.0, // Move to right 10  horizontally
                             3.0, // Move to bottom 10 Vertically
                           ),
                         )
                                  ],
                     )
                   ),   
                   
                     Container(
                     height:120,
                     width: 120,
                     decoration:BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(20.0)),
                       color: Color(0xFFFFFFFF),
                       boxShadow: [
                           BoxShadow(
                           color: Color(0x3fC1C1C1),
                           blurRadius: 6.0, // soften the shadow
                           spreadRadius: 2.0, //extend the shadow
                           offset: Offset(
                             0.0, // Move to right 10  horizontally
                             3.0, // Move to bottom 10 Vertically
                           ),
                         )
                                  ],
                     )
                   ),   
                    
                     Container(
                     height:120,
                     width: 120,
                     decoration:BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(20.0)),
                       color: Color(0xFFFFFFFF),
                       boxShadow: [
                           BoxShadow(
                           color: Color(0x3fC1C1C1),
                           blurRadius: 6.0, // soften the shadow
                           spreadRadius: 2.0, //extend the shadow
                           offset: Offset(
                             0.0, // Move to right 10  horizontally
                             3.0, // Move to bottom 10 Vertically
                           ),
                         )
                                  ],
                     )
                   ),                
                 ],
               )),
               Container(
                    margin:EdgeInsets.only(top:5,bottom:10),
                    child:
                Row(
                
                 children:[
                   
                     Container(
                     margin:EdgeInsets.only(left:15,right:13),
                     height:120,
                     width: 120,
                     decoration:BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(20.0)),
                       color: Color(0xFFFFFFFF),
                       boxShadow: [
                           BoxShadow(
                           color: Color(0x3fC1C1C1),
                           blurRadius: 6.0, // soften the shadow
                           spreadRadius: 2.0, //extend the shadow
                           offset: Offset(
                             0.0, // Move to right 10  horizontally
                             3.0, // Move to bottom 10 Vertically
                           ),
                         )
                                  ],
                     )
                   ),   
                   
                     Container(
                     height:120,
                     width: 120,
                     decoration:BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(20.0)),
                       color: Color(0xFFFFFFFF),
                       boxShadow: [
                           BoxShadow(
                           color: Color(0x3fC1C1C1),
                           blurRadius: 6.0, // soften the shadow
                           spreadRadius: 2.0, //extend the shadow
                           offset: Offset(
                             0.0, // Move to right 10  horizontally
                             3.0, // Move to bottom 10 Vertically
                           ),
                         )
                                  ],
                     )
                   ),   
                    
                                 
                 ],
               ))
            ],
          ),
        )
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }
  
  
  Widget _bottomNavigationBar(){
    return FancyBottomNavigation(
      textColor: Color(0xff26304D),
      circleColor: Color(0xff26304D),
      inactiveIconColor: Color(0xff26304D),
      initialSelection: currentPage,
      tabs: [
        TabData(
          iconData: Icons.home,
          title: "Home",
          onclick: () => print("Home"),
        ),
        TabData(
            iconData: Icons.calendar_today,
            title: "Calendar",
            onclick: () => print("Calendar"),
        ),
        TabData(
            iconData: Icons.notifications,
            title: "Notification",
            onclick: () => print("Notificaftion"),
        ),
        TabData(
            iconData: Icons.menu,
            title: "Menu",
            onclick: () => print("Menu"),
        )
      ],
      onTabChangedListener: (position) {
        setState(() {
          currentPage = position;
        });
      },
    );
  }

}
