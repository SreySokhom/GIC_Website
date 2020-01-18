import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';


class ReusableLogo extends StatelessWidget {
  const ReusableLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Transter", style: TextStyle( fontSize: 28, color: Colors.white, ),
        ),
        SizedBox( width: 5 ),
        Image.asset("images/truck.png", width: 90, height: 80,),
      ],
    );
  }
}

abstract class Styles {

  static const TextStyle bold30grey = TextStyle(
      fontSize: 30,
      color: Colors.grey,
      fontWeight: FontWeight.bold
  );

  static const TextStyle chooseTructTypeStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white
  );

  static const TextStyle bold20grey = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: Colors.grey
  );

  static const TextStyle bold15grey = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
      color: Colors.grey
  );

  static const TextStyle grey20 = TextStyle(
      color: Colors.grey,
      fontSize: 20
  );

  static const TextStyle boldStyle = TextStyle(
      fontWeight: FontWeight.bold
  );

  static const TextStyle boldStyle20 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
  );

  static const TextStyle carStyle = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 23,
  );
  static const TextStyle weightStyle = TextStyle(
      color: Colors.purple
  );

  static const TextStyle grey = TextStyle(
      color: Colors.grey
  );

  static const TextStyle searchText = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle infoTextStyle = TextStyle(
      color: Color(0xFF58C5BF),
      fontSize: 20,
      fontWeight: FontWeight.bold
  );

  static BoxDecoration boxDecoration = BoxDecoration(
    boxShadow: <BoxShadow>[
      BoxShadow(
        offset: Offset(0, 4),
        color: Colors.black12,
        blurRadius: 5,
      )
    ],
    borderRadius: BorderRadius.circular(10),
    color: Colors.white,
  );

  static OutlineInputBorder buttonOutlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF58C5BF)),
    borderRadius: BorderRadius.circular(20),
  );

  static OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
    borderRadius: BorderRadius.circular(10),
  );
  static OutlineInputBorder outlineInputfocusedBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Styles.primaryColor),
      borderRadius: BorderRadius.circular(10)
  );
  static OutlineInputBorder outlineInputEnableBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(10)
  );


  static const Color primaryColor = Color(0xff26304D);

}