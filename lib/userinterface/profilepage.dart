/*
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import 'landing page.dart';





class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => new _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var profilePicUrl = "";

  var nickName = '';

  bool isLoading = false;

  //File selectedImage;

  UserManagement userManagement = new UserManagement();

  String newNickName;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseAuth.instance.currentUser().then((user) {
      setState(() {
        profilePicUrl = user.photoUrl;
        nickName = user.displayName;
      });
    }).catchError((e) {

    });
  }









  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(


          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              CircleAvatar(
                child: Icon(FontAwesomeIcons.userCircle),
              ),
              Text("Profile page"),
            ],
          ),
          centerTitle: true, //
        ),
        body: new Stack(
          children: <Widget>[

            Positioned(
                width: 350.0,
                left: 4.0,
                top: MediaQuery.of(context).size.height / 5,
                child: Column(
                  children: <Widget>[
                    Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            image: DecorationImage(
                                image: NetworkImage(profilePicUrl),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(75.0)),
                            boxShadow: [
                              BoxShadow(blurRadius: 7.0, color: Colors.black)
                            ])),
                    SizedBox(height: 20.0),
                    // getLoader(),
                    SizedBox(height: 65.0),
                    Text(
                      nickName,
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                    SizedBox(height: 15.0),
                    */
/* Text(
                      'Actor',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Montserrat'),
                    ),*//*

                    SizedBox(height: 75.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[

                        Container(
                            height: 50.0,
                            width: 200.0,
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              shadowColor: Colors.redAccent,
                              color: Colors.red,
                              elevation: 7.0,
                              child: GestureDetector(
                                onTap: () {
                                  FirebaseAuth.instance.signOut().then((val) {
                                    Navigator.pop(context);


                                    // Navigator.popUntil();
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                                    */
/*Navigator.of(context)
                                        .pushReplacementNamed('/landingpage');*//*

                                  }).catchError((e) {
                                    print(e);
                                  });
                                },
                                child: Center(
                                  child: Text(
                                    'Log out',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ],
                ))
          ],
        ));
  }
}

*/
