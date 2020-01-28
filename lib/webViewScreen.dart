import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gic_website/styles/styles.dart';
import 'package:webview_flutter/webview_flutter.dart';


class ViewDetailScreen extends StatefulWidget {

  String url;
  String header;
  ViewDetailScreen({this.url, this.header});

  @override
  _ViewDetailScreenState createState() => _ViewDetailScreenState();
}

class _ViewDetailScreenState extends State<ViewDetailScreen> {

  bool _isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.url);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.header, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Color(0xff26304D),
        elevation: 0.0,
      ),
      body: Stack(
        children: <Widget>[
          WebView(
            initialUrl: widget.url,
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: pageFinishedLoading,
          ),
          _isLoading == true ? _loadingWidget() : SizedBox(height: 0,)
        ],
      ),
    );
  }

  void pageFinishedLoading(String ur){
    setState(() {
      _isLoading = false;
    });
  }

  _loadingWidget(){
    return SpinKitThreeBounce(
      color: Styles.primaryColor,
      size: 40.0,
    );
  }

}
