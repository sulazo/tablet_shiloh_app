import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 // UserManagement user = UserManagement();


  //google sign in
  GoogleSignIn _googleSignIn = new GoogleSignIn();
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: true,
        appBar: AppBar(


          title: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.account_circle),
              ),
              Text("Sign In Page"),
            ],
          ),
          centerTitle: true,

        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //use validator to validate email and password
            Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Stack(
                        children: <Widget>[
                          Container(
                              padding:
                              EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 0.0),
                              child: Column(
                                children: <Widget>[
                                  CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 40,
                                    child: Icon(FontAwesomeIcons.user),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text("Welcome to Shiloh Christian Church !")
                                ],
                              )),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 10.0),
                        Container(
                            width: 350.0,
                            child: Align(
                              alignment: Alignment.center,
                              child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      new BorderRadius.circular(30.0)),
                                  color: Color(0xffffffff),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(
                                        FontAwesomeIcons.google,
                                        color: Color(0xffCE107C),
                                      ),
                                      SizedBox(width: 10.0),
                                      Text(
                                        'Sign in with Google',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                  onPressed: () => _handleSignInWithGoogle()
                              ),
                            )),
                        Container(
                            width: 350.0,
                            child: Align(
                              alignment: Alignment.center,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    new BorderRadius.circular(30.0)),
                                color: Color(0xffffffff),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      FontAwesomeIcons.facebookF,
                                      color: Color(0xff4754de),
                                    ),
                                    SizedBox(width: 10.0),
                                    Text(
                                      'Sign in with Facebook',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18.0),
                                    ),
                                  ],
                                ),
                                onPressed: () {},
                              ),
                            )),
                      ],
                    )
                  ],
                )),
            SizedBox(height: 20.0),
          ],
        ));
  }

 _handleSignInWithGoogle() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
    await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final FirebaseUser user = (await _auth.signInWithCredential(credential)).user;
    assert(user.email != null);
    assert(user.displayName != null);
    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);

    final FirebaseUser currentUser = await _auth.currentUser();
    assert(user.uid == currentUser.uid);
    //  print("signed in " + user.displayName);

    return 'signInWithGoogle succeeded: $user';
  }

/*
_googlerSignIn() async{

  final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
  final GoogleSignInAuthentication googleAuth =await googleUser.authentication;

  final AuthCredential credential = GoogleAuthProvider.getCredential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );

  AuthResult user = await  _auth.signInWithCredential(credential);
}
*/




}
