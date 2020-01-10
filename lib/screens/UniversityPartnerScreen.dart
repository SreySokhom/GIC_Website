import 'package:flutter/material.dart';

class UniversitiesScreen extends StatefulWidget {
  @override
  _UniversitiesScreenState createState() => _UniversitiesScreenState();
}

class _UniversitiesScreenState extends State<UniversitiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(

              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              padding: const EdgeInsets.all(5),
              child: Stack(
                children: <Widget>[
                  Container(

                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 1,
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/gic_logo.png",),
                    ),
                  ),
                  Center(
                      child: Text('Sound of screams but the',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ))
                  ),
                ],
              ),

            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              padding: const EdgeInsets.all(5),
              child: Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 1,
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/gic_logo.png",),
                    ),
                  ),
                  Center(
                      child: Text('Sound of screams but the')
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              padding: const EdgeInsets.all(5),
              child: Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 1,
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/gic_logo.png",),
                    ),
                  ),
                  Center(
                      child: Text('Sound of screams but the')
                  ),
                ],
              ),

            ),
          ],
        )
    );
  }
}
