import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

import 'landing page.dart';


class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 6),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()))
    );
  }




  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Scaffold(
      body: Stack(
        // alignment:Alignment.center ,

        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Color(0xff8b0000).withOpacity(0.8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // SizedBox(height: 150),
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "images/globe.png",
                          ),
                          // child: Icon(Icons.account_balance,size: 50,),
                          radius: 60,
                          //backgroundImage: ,
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(height: 20),

                        Text(
                          "Welcome to Shiloh Christian Church",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0),
                        ),

                        Text(
                          " Celebrating 32 years of Kingdom Service ! ",
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.white),
                        ),
                      ],
                    )),
                SizedBox(height: 20),
                Expanded(
                    flex: 1,
                    child: Container(
                        alignment: Alignment(0, 0),
                        child: Column(children: <Widget>[
                          SizedBox(width: 5),
                          CircularProgressIndicator(
                            valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
                            strokeWidth: 3,
                            //backgroundColor: Colors.white ,
                          ),
                        ])))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
