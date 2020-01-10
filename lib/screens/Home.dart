import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gic_website/screens/FAQsScholarshipScreen.dart';
import 'package:gic_website/screens/FAQsScreen.dart';
import 'package:gic_website/screens/PartnersScreen.dart';
import 'aboutGicScreen.dart';


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
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        child: Stack(children: <Widget>[
          Image.asset(i, fit: BoxFit.cover, width: 1000.0),
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

  static BoxDecoration boxDecoration = BoxDecoration(
    boxShadow: <BoxShadow>[
      BoxShadow(
        offset: Offset(0, 4),
        color: Colors.black12,
        blurRadius: 20,
      )
    ],
    borderRadius: BorderRadius.circular(10),
    color: Colors.white,
  );

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
                          height: 70, width: 80),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Génie Informatique et Communication",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'SegoePrint',
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                )),
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
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index
                            ? Color.fromRGBO(0, 0, 0, 0.9)
                            : Color.fromRGBO(0, 0, 0, 0.4)),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Features",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Color(0xffA61D37)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PartnerScreen()));
                          },
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 125,
                              height: 125,
                              decoration: boxDecoration,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 15),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "News/Events",
                                            style: TextStyle(color: Color(0xff26304D), fontSize: 16, fontWeight: FontWeight.bold),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 5),
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              width: 50,
                                              height: 1,
                                              color: Color(0xffFFCE71),
                                            ),
                                          ),
                                          Container(
                                              padding: EdgeInsets.only(top: 10),
                                              alignment: Alignment.topLeft,
                                              width: 100,
                                              child: Image.asset(
                                                "assets/images/news.png",
                                                width: 50,
                                                height: 50,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PartnerScreen()));
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 125,
                              height: 125,
                              decoration: boxDecoration,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 15),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Scholarships",
                                            style: TextStyle(color: Color(0xff26304D), fontSize: 16, fontWeight: FontWeight.bold),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 5),
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              width: 50,
                                              height: 1,
                                              color: Color(0xffE14A4A),
                                            ),
                                          ),
                                          Container(
                                              padding: EdgeInsets.only(top: 10),
                                              alignment: Alignment.topLeft,
                                              width: 100,
                                              child: Image.asset(
                                                "assets/images/graduation.png",
                                                width: 50,
                                                height: 50,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PartnerScreen()));
                          },
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: 125,
                              height: 125,
                              decoration: boxDecoration,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 15),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Partners",
                                            style: TextStyle(color: Color(0xff26304D), fontSize: 16, fontWeight: FontWeight.bold),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 5),
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              width: 50,
                                              height: 1,
                                              color: Color(0xff5C9CEE),
                                            ),
                                          ),
                                          Container(
                                              padding: EdgeInsets.only(top: 10),
                                              alignment: Alignment.topLeft,
                                              width: 100,
                                              child: Image.asset(
                                                "assets/images/partners.png",
                                                width: 50,
                                                height: 50,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => FAQScreen()));
                          },
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 125,
                              height: 125,
                              decoration: boxDecoration,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 15),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "FAQs",
                                            style: TextStyle(color: Color(0xff26304D), fontSize: 16, fontWeight: FontWeight.bold),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 5),
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              width: 50,
                                              height: 1,
                                              color: Color(0xffAE85CC),
                                            ),
                                          ),
                                          Container(
                                              padding: EdgeInsets.only(top: 10),
                                              alignment: Alignment.topLeft,
                                              width: 100,
                                              child: Image.asset(
                                                "assets/images/faq.png",
                                                width: 50,
                                                height: 50,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => AboutGICScreen()));
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 125,
                              height: 125,
                              decoration: boxDecoration,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 15),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "About GIC",
                                            style: TextStyle(color: Color(0xff26304D), fontSize: 16, fontWeight: FontWeight.bold),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 5),
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              width: 50,
                                              height: 1,
                                              color: Color(0xffA65D4E),
                                            ),
                                          ),
                                          Container(
                                              padding: EdgeInsets.only(top: 10),
                                              alignment: Alignment.topLeft,
                                              width: 100,
                                              child: Image.asset(
                                                "assets/images/data.png",
                                                width: 50,
                                                height: 50,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: 125,
                            height: 125,
                            child: SizedBox(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
