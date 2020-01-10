import 'package:flutter/material.dart';

class CompaniesScreen extends StatefulWidget {
  @override
  _CompaniesScreenState createState() => _CompaniesScreenState();
}

class _CompaniesScreenState extends State<CompaniesScreen> {
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
            padding: const EdgeInsets.all(8),
            child: Center(child: const Text('He\'d have you all unravel at the')),

          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
            padding: const EdgeInsets.all(8),
            child: Center(child: const Text('Heed not the rabble')),

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
