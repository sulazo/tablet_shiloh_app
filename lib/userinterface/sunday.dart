import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Sunday extends StatefulWidget {
  @override
  _SundayState createState() => _SundayState();
}

class _SundayState extends State<Sunday> {
  @override
  void initState() {
    super.initState();
    Firestore.instance.collection('shiloh').snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
          stream: Firestore.instance.collection('shiloh').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: Text("Loading..."));
            else
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, position) {
                    return Column(
                      children: <Widget>[
                        Container(
                          height: 270,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/congregration.jpg"),
                                  fit: BoxFit.fill)),
                        ),
                        Card(
                          //elevation: 3,
                          child: Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            //  color: Colors.blue,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("images/weeklyservice.png"),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                        _sermonOfTheDay(
                            sundaySermon: snapshot
                                .data.documents[position].data['sermon']),

                        _informationCard(
                            textDetails: snapshot.data.documents[position]
                                .data['program info'][0]),

                        _informationCard(
                            textDetails: snapshot.data.documents[position]
                                .data['program info'][1]),

                        _informationCard(
                            textDetails: snapshot.data.documents[position]
                                .data['program info'][2]),
                        _informationCard(
                            textDetails: snapshot.data.documents[position]
                                .data['program info'][3]),
                        _informationCard(
                            textDetails: snapshot.data.documents[position]
                                .data['program info'][4]),
                        _informationCard(
                            textDetails: snapshot.data.documents[position]
                                .data['program info'][5]),




                      ],
                    );
                  });
          });

  }

  _informationCard({String textDetails}) {
    if (textDetails.isEmpty) {
      return Container();
    } else
      return Card(
        elevation: 14,
        //width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height,
        //color: Colors.teal,
        // color: Colors.green[200],
        child: ListTile(
            subtitle: Text(textDetails,
                style: TextStyle(
                  color: Colors.black,
                ),
                softWrap: true),
            // subtitle: Text(textDetails),
            // trailing: Text("Trailing text here"),
            leading: CircleAvatar(
              child: Icon(
                  //Icons.info,
                  FontAwesomeIcons.info,
                  size: 20,
                  color: Colors.white),
              //  backgroundColor: Color(0xFF8AC7A4),
            )),
      );
  }

  _sermonOfTheDay({ String sundaySermon}) {
    if(sundaySermon.isEmpty)
      return Container();
    else
    return Card(
      elevation: 14,
      child: ListTile(
          title: Text("Sermon:",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              softWrap: true),
          subtitle: Text(sundaySermon,style:TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ), ),
          //Text(snapshot.data.documents[position].data['sermon']),

          // trailing: Text("Trailing text here"),
          leading: CircleAvatar(
            child: Icon(
              FontAwesomeIcons.bible,
            ),
          )),
    );
  }
}
