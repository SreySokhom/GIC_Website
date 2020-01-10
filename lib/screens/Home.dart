import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/images/teacher.jpg',
  'assets/images/department.jpg',
  'assets/images/party.jpg',
  'assets/images/present.jpg',
  'assets/images/teacheridol.jpg',
];

final List child = map<Widget>(
  imgList,
      (index, i) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(children: <Widget>[
          Image.asset(i, fit: BoxFit.cover, width: 1000.0),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(200, 0, 0, 0), Color.fromARGB(0, 0, 0, 0)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                'No. $index image',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  },
).toList();

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {
  int _current = 0;
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
                Column(
                  children: <Widget>[
                    CarouselSlider(
                      items: child,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 2.0,
                      onPageChanged: (index) {
                        setState(() {
                          _current = index;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(
                    imgList,
                        (index, url) {
                      return Container(
                        width: 8.0,
                        height: 8.0,
                        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == index
                                ? Color.fromRGBO(0, 0, 0, 0.9)
                                : Color.fromRGBO(0, 0, 0, 0.4)),
                      );
                    },
                  ),
                ),
              ],
            ),

          )
      ),
    );
  }

}