/*
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:project_shiloh/userinterface/contact%20form.dart';





import 'messenger.dart';



class MessagingWidget extends StatefulWidget {
  @override
  _MessagingWidgetState createState() => _MessagingWidgetState();
}

class _MessagingWidgetState extends State<MessagingWidget> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  final List<Message> messages = [];


  @override

  void initState() {
    super.initState();
    var token =   _firebaseMessaging.getToken();
    print("Instance ID :$token" );

    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
       print("onMessage: $message");

    */
/*   final snackbar= SnackBar(
           content: Text(message['notification']['title']),
         action: SnackBarAction(
             label: 'Go',
             onPressed: () {}
         ) ,


       );
       Scaffold.of(context).showSnackBar(snackbar);*//*






        final notification = message['notification'];
        setState(() {
          messages.add(Message(
              title: notification['title'], body: notification['body']));
        });
      },
      onLaunch: (Map<String, dynamic> message) async {

     //   Navigator.push(context, MaterialPageRoute(builder: (context) => NewsFeed()));
        print("onLaunch: $message");
        final notification = message['notification'];
        setState(() {
          messages.add(Message(
            title: '${notification['title']}',
            body: '${notification['body']}',
          ));
        });
      },



      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
      },
    );

    */
/*_firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(sound: true, badge: true, alert: true));*//*

  }

  @override

  Widget build(BuildContext context) => ContactForm();


//      ListView(
//    children: messages.map(buildMessage).toList(),
//  );
//
//  Widget buildMessage(Message message) => Container(
//      color: Colors.blue.withOpacity(0.3),
//      child:
//      ListTile(
//        title: Text(message.title),
//        subtitle: Text(message.body),
//      )
//  );



}

*/
