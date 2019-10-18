
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tablet_shiloh_app/userinterface/splashscreen.dart';



void main()  {
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_){
  debugPaintSizeEnabled = false;

  //set to true so you can see the visual layout
  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,
    title: "Kristian App",
    theme: ThemeData(fontFamily: 'Montserrat',
        //iconTheme: IconThemeData(color: Colors.black),
        //accentIconTheme:
        //  primaryIconTheme:  ,
        primarySwatch:Colors.red ,         //Colors.red) ,
        primaryColor: Color(0xff8b0000)),
    home: SplashScreen(),
  ));
}
//);
// }

