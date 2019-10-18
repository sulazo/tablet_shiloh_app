
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WebViewer extends StatelessWidget {
  final urlLink ;


  WebViewer.urlLink(this.urlLink);



  @override
  Widget build(BuildContext context) {

    return WebviewScaffold(
      //withLocalStorage: true,
      withJavascript:true ,
      withZoom: true,
      url:urlLink,

      appBar: AppBar(
          leading: IconButton(
              icon: Icon(FontAwesomeIcons.arrowAltCircleLeft,
               //   color: Color(0xff8b0000)
              ),
              onPressed: () {
                Navigator.pop(context);
                //
              }),

          title:_customAppbar()
      ),


    );
  }

  Widget _customAppbar() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        'images/editedlogo.jpg',
        fit: BoxFit.fill,
      ),
    );
  }




}


