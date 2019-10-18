import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PastorsCorner extends StatefulWidget {
  @override
  _PastorsCornerState createState() => _PastorsCornerState();
}

class _PastorsCornerState extends State<PastorsCorner> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(slivers: <Widget>[

        SliverAppBar(
          //shape: ,
          // snap:,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Pastors Corner",
            style: TextStyle(color: Colors.black),
          ),
          pinned: true,
          expandedHeight: 300,
          iconTheme: IconThemeData(color: Colors.red),

          flexibleSpace: FlexibleSpaceBar(
            background: myFlexibleAppBar(),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate(<Widget>[
          SizedBox(height: 5),
          Container(
            height: 250,
            child: Container(
              child: Image.asset(
                "images/ScriptureArt_-_Matthew_20_28.jpg",
                fit: BoxFit.fill,
                width: 250.0,
              //  height: 400.0,
              ),
             // margin: EdgeInsets.all(5),
              color: Colors.blue,
            ),
            // elevation: 8,
          ),
        //  SizedBox(height: 5),
          Card(
            // elevation:8,
            child: Image.asset(
              "images/inspiration.jpg",
              fit: BoxFit.fill,
              //width: 250.0,
              height: 250.0,
            ),
          ),
          //SizedBox(height: 20),
          Card(
              // elevation: 8,
              child: Image.asset(
            "images/ScriptureArt_0118_-_John_11_25-26_NLT_English.jpg",
            fit: BoxFit.fill,
           //width: 250.0,
            height: 250.0,
          )),
        //  SizedBox(height: 5),
          Card(),
        ]))
      ])),
    );
  }
}

myFlexibleAppBar() {
  return Container(
    // padding: EdgeInsets.all(10),

    //width: 400,
    //color: Colors.white,
    child: Stack(
      children: <Widget>[
        Container(
          //color: Colors.blue,
          decoration: BoxDecoration(

              // color: Colors.red,
              //shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("images/congregration.jpg"),
                  fit: BoxFit.cover)
              // borderRadius:BorderRadius.circular(15) ,

              ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("images/pastorsnewpic.PNG")),
        ),
      ],
    ),
  );
}
