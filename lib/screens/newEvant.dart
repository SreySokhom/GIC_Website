// Flutter code sample for ListTile

// Here is an example of an article list item with multiline titles and
// subtitles. It utilizes [Row]s and [Column]s, as well as [Expanded] and
// [AspectRatio] widgets to organize its layout.
//
import 'package:flutter/material.dart';
import 'package:gic_website/screens/Home.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'News/Events';

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(centerTitle: true,
            title: const Text(_title),
            backgroundColor: Color(0xff26304D),

            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white,), onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
            })

        ),
        body: MyStatelessWidget(),
      ),
    );
  }
}

class _ArticleDescription extends StatelessWidget {
  _ArticleDescription({
    Key key,
    this.title,
    this.subtitle,
    this.publishDate,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String publishDate;



  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '$title',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 2.0)),
              Text(
                '$subtitle',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                ),
              ),

            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              /*Text(
                '$author',
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black87,
                ),
              ),*/
              Text(
                '$publishDate ',
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomListItemTwo extends StatelessWidget {
  CustomListItemTwo({
    Key key,
    this.thumbnail,
    this.title,
    this.subtitle,
    this.publishDate,
  }) : super(key: key);

  final Widget thumbnail;
  final String title;
  final String subtitle;
  final String publishDate;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1.0,
              child: thumbnail,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 1.0, 2.0, 1.0),
                child: _ArticleDescription(
                  title: title,
                  subtitle: subtitle,
                  publishDate: publishDate,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[

        Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            width: MediaQuery.of(context).size.width * 1,
            decoration: boxDecoration,
            child: CustomListItemTwo(
              thumbnail: Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Image.asset('assets/images/teacher.jpg'),
              ),
              title: 'Flutter 1.0 Launch',
              subtitle: 'Flutter continues to improve and expand its horizons.'
                  'This text should max out at two lines and clip',
              publishDate: 'Dec 28',
            ),

          ),
        ),
        Padding(padding: const EdgeInsets.all(5),
          child:
          Container(
            width: MediaQuery.of(context).size.width * 1,
            decoration: boxDecoration,
            child: CustomListItemTwo(
              thumbnail: Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Image.asset('assets/images/teacher.jpg'),
              ),
              title: 'Flutter 1.0 Launch',
              subtitle: 'Flutter continues to improve and expand its horizons.'
                  'This text should max out at two lines and clip',
              publishDate: 'Dec 28',
            ),

          ),
        ),
        Padding(padding: const EdgeInsets.all(5),
          child: Container(
            width: MediaQuery.of(context).size.width * 1,
            decoration: boxDecoration,
            child: CustomListItemTwo(
              thumbnail: Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Image.asset('assets/images/teacher.jpg'),
              ),
              title: 'Flutter 1.0 Launch',
              subtitle: 'Flutter continues to improve and expand its horizons.'
                  'This text should max out at two lines and clip',
              publishDate: 'Dec 28',
            ),
          ),
        ),
        Padding(padding: const EdgeInsets.all(5),
          child: Container(
            width: MediaQuery.of(context).size.width * 1,
            decoration: boxDecoration,
            child: CustomListItemTwo(
              thumbnail: Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Image.asset('assets/images/teacher.jpg'),
              ),
              title: 'Flutter 1.0 Launch',
              subtitle: 'Flutter continues to improve and expand its horizons.'
                  'This text should max out at two lines and clip',
              publishDate: 'Dec 28',
            ),
          ),
        ),
        Padding(padding: const EdgeInsets.all(5),
          child: Container(
            width: MediaQuery.of(context).size.width * 1,
            decoration: boxDecoration,
            child: CustomListItemTwo(
              thumbnail: Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Image.asset('assets/images/teacher.jpg'),
              ),
              title: 'Flutter 1.0 Launch',
              subtitle: 'Flutter continues to improve and expand its horizons.'
                  'This text should max out at two lines and clip',
              publishDate: 'Dec 28',
            ),

          ),
        ),
        Padding(padding: const EdgeInsets.all(5),
          child: Container(
            width: MediaQuery.of(context).size.width * 1,
            decoration: boxDecoration,
            child: CustomListItemTwo(
              thumbnail: Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Image.asset('assets/images/teacher.jpg'),
              ),
              title: 'Flutter 1.0 Launch',
              subtitle: 'Flutter continues to improve and expand its horizons.'
                  'This text should max out at two lines and clip',
              publishDate: 'Dec 28',
            ),

          ),
        ),

      ],

    );
  }
}