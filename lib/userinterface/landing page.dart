import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tablet_shiloh_app/userinterface/sunday.dart';


import 'connect.dart';
import 'ministries.dart';
import 'sermons.dart';
import 'home screen.dart';
import 'package:share/share.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String payPalWebLink =
      "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=ETN5H7R8N39YQ&source=url";

  Color primaryColor = Color(0xff8b0000);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new Scaffold(
        body: DefaultTabController(
          length: 3,
          child: NestedScrollView(
            //controller: _scrollViewController,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                new SliverAppBar(
                 // titleSpacing: 100,
                  expandedHeight:100 ,
                  snap: true,
                  pinned: true,
                  floating: true,
                  backgroundColor: primaryColor,
                  actions: <Widget>[
                    IconButton(
                     // iconSize:60 ,
                        color: Colors.white,
                        icon: Icon(Icons.account_box),
                        onPressed: (){}
                    ),
                  ],
                  centerTitle: true,
                  title: customAppbar(),

                  forceElevated: innerBoxIsScrolled,
                  bottom: TabBar(
                    // controller: tabController,
                    //currentIndex =0,

                    indicatorColor: Colors.white,
                    indicatorWeight: 2.0,
                    //isScrollable: true,
                    onTap: (index) {
                      setState(() {
                        if (index == 0) {
                          primaryColor = Color(0xff8b0000);
                        } else if (index == 1) {
                          primaryColor = Colors.blueGrey;
                        } else if (index == 2) {
                          primaryColor = Color(0xff8b0000);

                          //Color(0xffdd4f05)    ;// Colors.teal;
                        }
                      });
                    },


                    tabs: [
                      Tab(
                        child: Container(
                          child: Text(
                            "Home",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                             // fontSize: 30.0,
                              /*Tab(text:"NEWS FEED",
                    ),*/
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text(
                            "Sermons",
                            style: TextStyle(
                                color: Colors.white,
                                //fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text(
                            "Connect",
                            style: TextStyle(
                                color: Colors.white,
                                //fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ];
            },

            body: new TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                NewsFeed(),
             Sermon(),
             //   Ministries(),
                //Programs(),
              Connect(),
              ],
              // controller: _tabController,
            ),
          ),
        ),
        //Side menu@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
        drawer: Drawer(
          elevation: 30,
          child: ListView(
            children: <Widget>[
              // Divider(),
              UserAccountsDrawerHeader(
                accountEmail: Text("shilohch@sbcglobal.net"),
                accountName: Text(
                  "Shiloh Christian Church",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ), // Remove or replace with Logo
                currentAccountPicture: CircleAvatar(
                  // radius: 100,
                  backgroundImage: AssetImage("images/shilohfrontimage.jpg"),
                ),
              ),

              /*ListTile(
                leading: Icon(FontAwesomeIcons.prayingHands),
                title: Text("Sixty  seconds special prayer "),
                onTap: () {
                  Navigator.pop(context);
                },
              ),*/

              ListTile(
                leading: Icon(FontAwesomeIcons.cross),
                title: Text("Prayer request"),
                onTap: () {},
              ),
              Divider(height: 5, color: Colors.black),
             // Divider(height: 5, color: Colors.black),
             // Divider(height: 5, color: Colors.black),
              ListTile(
                leading: Icon(FontAwesomeIcons.cross),
                title: Text("First time believers "),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(height: 5, color: Colors.black),
              ListTile(
                leading: Icon(FontAwesomeIcons.cross),
                title: Text("Renewing my commitment"),
                onTap: () {},
              ),

              Divider(height: 5, color: Colors.black),
              ListTile(
                leading: Icon(FontAwesomeIcons.cross),
                title: Text("Commit to the Lord"),
                onTap: () {}
              ),

              Divider(height: 5, color: Colors.black),
              ListTile(
                leading: Icon(FontAwesomeIcons.cross),
                title: Text("Join the church"),
                onTap: () {},
              ),
              Divider(height: 5, color: Colors.black),
              ListTile(
                leading: Icon(FontAwesomeIcons.cross),
                title: Text("Grow in Faith "),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              Divider(height: 5, color: Colors.black),
              ListTile(
                leading: Icon(FontAwesomeIcons.handshake),
                title: Text("Serve!"),
                onTap: () {}

              ),

              Divider(height: 5, color: Colors.black),
              ListTile(
                  leading: Icon(FontAwesomeIcons.solidBuilding),
                  title: Text("Ministries"),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> Ministries(),
                    )
                    );
                  }

              ),

              Divider(height: 5, color: Colors.black),
              ListTile(
                leading: Icon(FontAwesomeIcons.globe),
                title: Text("Website"),
                onTap: () {},
              ),
              Divider(height: 5, color: Colors.black),

              ListTile(
                leading: Icon(FontAwesomeIcons.facebookSquare),
                title: Text("Facebook"),
                onTap: () {},
              ),
              Divider(height: 5, color: Colors.black),
              ListTile(
                leading: Icon(FontAwesomeIcons.youtube),
                title: Text("Youtube"),
                onTap: () {},
              ),
              Divider(height: 5, color: Colors.black),
              ListTile(
                leading: Icon(FontAwesomeIcons.phone),
                title: Text("Phone"),
                onTap: () {},
              ),
              Divider(height: 5, color: Colors.black),
              ListTile(
                leading: Icon(FontAwesomeIcons.mailBulk),
                title: Text("Email"),
                onTap: () {},
              ),
              Divider(height: 5, color: Colors.black),
              ListTile(
                leading: Icon(FontAwesomeIcons.idCard),
                title: Text("User Profile"),
                onTap: () { },
              ),

              Divider(height: 5, color: Colors.black),

            ],
          ),
        ),
        bottomNavigationBar: Material(
          elevation: 25,
          child: Container(
            decoration: BoxDecoration(
              //color: Colors.grey
            ),
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    IconButton(

                        color: Color(0xff8b0000),
                        icon: Icon(Icons.location_on),
                     //   iconSize: 50,
                        onPressed: () {}
                        ),
                    Text("Directions")
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      color: Color(0xff8b0000),
                      icon: Icon(FontAwesomeIcons.handHoldingHeart),
                    //  iconSize: 50,
                      onPressed: () {}
                    ),
                    Text("Giving")
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      color: Color(0xff8b0000),
                      icon: Icon(FontAwesomeIcons.envelopeOpenText),
                     // iconSize: 50,
                      onPressed: () {
                        Share.share(
                          "Come worship with us @Shiloh Chrsitian " +
                              "Church Middletown,CT,06457 "
                                  "https://www.shiloh-christian.com/home",
                          subject: "Come worship with us",
                          //sharePositionOrigin: Rec,
                        );
                      },
                    ),
                    Text("Send Invite")
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customAppbar() {
    return Container(
      margin: EdgeInsets.only(top:15),
    height: 900,
     width: 600,
      child: Image.asset(
        'images/editedlogo.jpg',
        fit: BoxFit.fill,
      ),
    );
  }
}
