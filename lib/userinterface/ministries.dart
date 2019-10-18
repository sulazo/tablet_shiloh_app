

import 'package:flutter/material.dart' ;
import 'package:tablet_shiloh_app/userinterface/webview.dart';



class Ministries extends StatefulWidget {
  @override
  MinistriesState createState() {
    return new MinistriesState();
  }
}

class MinistriesState extends State<Ministries> {


  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
        appBar:AppBar(
          title:    customAppbar()  ,//Text("Shiloh Ministries"),
        ),
        body:  ListView(      // u can also use var buildGridView = ListView

          shrinkWrap: true,
          children: <Widget>[
            //   SizedBox(height:20,child: Center(child: Text(" SCC Ministries")),),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10,bottom: 0,right: 10),
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
                shrinkWrap: true,
                children: <Widget>[
                  //  _buildCard("images/Evangelismteam.PNG","Tap here",""),
                  _buildCard("images/jcet.png",'Tap here',"https://www.shiloh-christian.com/boot-camp"),
                  _buildCard("images/joycamp.png","Tap here","https://www.shiloh-christian.com/joy-camp-website/"),
                  _buildCard("images/miit.png","Tap here","https://www.mitt-online.com"),
                  // _buildCard("images/Acts2.png","Tap here","https://www.shiloh-christian.com/acts"), missing image
                  _buildCard("images/championsclub.png","Tap here","https://www.shiloh-christian.com/champions-club"),
                  _buildCard("images/Princessclub.PNG","Tap here","https://www.shiloh-christian.com/princess-club"),
                  _buildCard("images/sundayschool.png","Tap here","https://www.shiloh-christian.com/sunday-school"),
                  _buildCard("images/Women'sminstry.png","Tap here","https://www.shiloh-christian.com/sister"),
                  _buildCard("images/Worldwidemissions.PNG","Tap here","https://www.shiloh-christian.com/world-missions"),
                  // _buildCard("images/a1.jpg","Ministry11","https://www.mitt-online.com/"),


                ],
              ),
            )  ],


        ),
      );
  }

  Widget _buildCard(String imageName,  String details,String webAddress) {
    return Card(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded( flex: 3,
                child: Image.asset(imageName,
                    fit: BoxFit.fill,
                    width: 400.0,
                    height: 300.0),),

              // Padding(padding: const EdgeInsets.all(1.0)),
              Expanded(
                  child:FlatButton(
                    child: IconButton(icon:Icon(Icons.touch_app,color: Colors.grey),
                        //Text(details,style:TextStyle(color: Colors.blue)),
                        onPressed: ()=>
                            Navigator.push(context, MaterialPageRoute(builder: (ctx) => WebViewer.urlLink(webAddress)
                            ), )),


                  )
              )])
    );}
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



/*_launchURL(String www) async{

  String url =www;

  // const url = "https://www.google.com/";
  if (await canLaunch(url)) {
    await launch(url,forceSafariVC:false ,forceWebView:true );
  } else {
    throw 'Could not launch $url';
  }
}*/

