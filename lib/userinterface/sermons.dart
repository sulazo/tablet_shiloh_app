
import 'package:flutter/material.dart';
import 'package:tablet_shiloh_app/userinterface/webview.dart';

class Sermon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(
      title: customAppbar(),
    ),
    body:Container(

        child: WebViewer.urlLink("https://video.ibm.com/channel/shiloh-christian-church"))

    );
  }


  Widget customAppbar() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        'images/editedlogo.jpg',
        fit: BoxFit.fill,
      ),
    );
  }
}
