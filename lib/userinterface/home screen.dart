import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:cached_network_image/cached_network_image.dart';

class NewsFeed extends StatefulWidget {
  // int colorVal;
  // Newsfid(this.colorVal);

  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
    Card(
    child: Container(
      height: 40.0,
      // width: 400.0,
      decoration: BoxDecoration(
        //border: Border(left:BorderSide() ,right:BorderSide() ,top:BorderSide() ,bottom: BorderSide()),
        color: Color(0xff8b0000),
        shape: BoxShape.rectangle,
      ),
      child: Row(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                //shape: BoxShape.circle,
              ),
              height: 50.0,
              width: 50.0,
              padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 3.0),
              child: Image.asset("images/shilohfrontimage.jpg")),
          Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                "Welcome To Shiloh Christian Church!",
                softWrap: true,
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    ),
    ),
    Stack(
    children: <Widget>[
    // Text("Welcome Note goes here"),
    Card(
    child: Container(

    //height: MediaQuery.of(context).size.height/3,
    width: MediaQuery.of(context).size.width,
    child: Image.asset("images/shilohfrontimage.jpg")),
    ),

    Container(
    padding: EdgeInsets.all(5),
    height: 100.0,
    //  width: 100.0,
    child: Image.asset("images/pastorsnewpic.PNG"),
    ),

    Container(
    padding: EdgeInsets.fromLTRB(70, 70, 0, 0),
    child: FloatingActionButton(
    backgroundColor: Color(0xff47100), //Colors.redAccent,
    mini: true,
    onPressed: () {
    //    Navigator.pop(context);
    /*  Navigator.push(
                                context,
                                //  MaterialPageRoute(builder: (context) => Viewer.urlLink( 'https://youtu.be/GkIXkAW__6A')) );
                                MaterialPageRoute(
                                    builder: (context) => VideoGreeting()));*/
    }, //  Viewer(),//_launchURL(),
    //  tooltip: 'Message',
    child: Icon(Icons.play_circle_filled)),
    ),
    ],
    ),
  //  SizedBox(height: 5.0),
    Container(
    height: 200,
    // width: 250,
    decoration: BoxDecoration(

    // borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft:Radius.circular(20)),
    image: DecorationImage(
      image: AssetImage( "images/undivided.png"),
      fit: BoxFit.fill
    ),
    ),
    //  image: NetworkImage(images ),

   // fit: BoxFit.fill)
    ),
      //@@@@@@@@@@@@@@@
      SizedBox(height: 5.0),
      Container(
        height: 200,
        // width: 250,
        decoration: BoxDecoration(

          // borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft:Radius.circular(20)),
          image: DecorationImage(
              image: AssetImage( "images/mantastic2.jpg"),
              fit: BoxFit.fill
          ),
        ),

        // fit: BoxFit.fill)
      ),
     // SizedBox(height: 5.0),
      Container(
        height: 200,
        // width: 250,
        decoration: BoxDecoration(

          // borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft:Radius.circular(20)),
          image: DecorationImage(
              image: AssetImage( "images/ScriptureArt_0118_-_Isaiah_53_5_NLT_English.jpg"),
              fit: BoxFit.fill
          ),
        ),
        //  image: NetworkImage(images ),

        // fit: BoxFit.fill)
      ),
      SizedBox(height: 5.0),
      Container(
        height: 200,
        // width: 250,
        decoration: BoxDecoration(

          // borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft:Radius.circular(20)),
          image: DecorationImage(
              image: AssetImage( "images/valentine.jpg"),
              fit: BoxFit.fill
          ),
        ),
        //  image: NetworkImage(images ),

        // fit: BoxFit.fill)
      ),
      SizedBox(height: 5.0),
      Container(
        height: 200,
        // width: 250,
        decoration: BoxDecoration(

          // borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft:Radius.circular(20)),
          image: DecorationImage(
              image: AssetImage( "images/weeklyservice.png"),
              fit: BoxFit.fill
          ),
        ),
        //  image: NetworkImage(images ),

        // fit: BoxFit.fill)
      ),


    ]
    );
  }
}

Widget _buildCard(newsFeedImage, newsFeedTitle, programImage) {
  return Column(children: <Widget>[
    _newsCardBuilder(images: newsFeedImage, textDetails: newsFeedTitle),
    // SizedBox(height: 10),
    _newsCardBuilder(images: newsFeedImage, textDetails: newsFeedTitle),
    SizedBox(height: 10),
    _imageBuilder(program: programImage),
  ]);
}

Widget _newsCardBuilder({String images, String textDetails}) {
//  if(images.isEmpty)
//  return Text("Loading ....") ;
//  else
  return Card(
    elevation: 14,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 200,
          // width: 250,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft:Radius.circular(20)),
              image: DecorationImage(
                  image: CachedNetworkImageProvider(images),
                  //  image: NetworkImage(images ),

                  fit: BoxFit.fill)),
        ),
        SizedBox(height: 15.0),
        Container(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Text(
              textDetails,
              softWrap: true,
              textAlign: TextAlign.justify,
              style: TextStyle(
                //fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _imageBuilder({String program}) {
  return Container(
      height: 400.0,
      // width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
//            bottomLeft: Radius.circular(20),
//            bottomRight: Radius.circular(20)
            //  bottomLeft: Radius.circular(15.0)
          ),
          image: DecorationImage(
              image: CachedNetworkImageProvider(program), fit: BoxFit.fill))
    //image: NetworkImage(program), fit: BoxFit.fill))

  );
}
