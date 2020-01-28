import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gic_website/styles/styles.dart';
import 'package:webview_flutter/webview_flutter.dart';


class UniversityPartnerScreen extends StatefulWidget {

  String url;
  UniversityPartnerScreen({this.url});

  @override
  _UniversityPartnerScreenState createState() => _UniversityPartnerScreenState();
}

class _UniversityPartnerScreenState extends State<UniversityPartnerScreen> {

  bool _isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
