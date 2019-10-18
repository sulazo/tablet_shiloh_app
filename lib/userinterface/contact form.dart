/*
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'form service.dart';

class ContactForm extends StatefulWidget {
  final String title;

  ContactForm({this.title});

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  FormService formService = FormService();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomPadding:false
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(FontAwesomeIcons.arrowAltCircleLeft,
              //   color: Color(0xff8b0000)
            ),
            onPressed: () {
              Navigator.pop(context);
              //
            }),

        centerTitle: true,
        title: Text("${widget.title}",
         // style: TextStyle(),
        softWrap: true,),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
        children: <Widget>[
          Form(

            key: _formKey,
            child: Container(
              child: Column(
                children: <Widget>[
                  TextFormField(

                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.deepPurple),

                    keyboardType: TextInputType.text,
                    onSaved: (String value) {
                      setState(() {
                        formService.name = value;
                      });
                    },
                    validator: (String value) {
                      if (value.isEmpty) return 'Enter name';
                      if (value.length < 5) return 'Enter first and lastname';
                      return null;
                    },
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(

                      labelText: "Name",
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(new Radius.circular(2.0))),
                    ),
                  ),
                  SizedBox(height: 25),


                  _buildRow(),

                  SizedBox(height: 25),


                  TextFormField(
                    maxLines: 5,
                    validator: (String text) {
                      if (text.length < 10)
                        return " Enter notes ";
                      else
                        return null;
                    },
                    onSaved: (val) =>
                        setState(() => formService.description = val),
                    decoration: InputDecoration(
                      //prefixText: "Description of work order requested",
                      labelText: "Notes",
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(new Radius.circular(2.0))),
                    ),
                  ),
                  //
                  SizedBox(height: 20),
                  RaisedButton(
                      color: Color(0xff923403), //Color(0xff5032b6),
                      child: Text("Send",
                          textScaleFactor: 1,
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        final form = _formKey.currentState;

                        if (form.validate()) {
                          form.save();
                          formService.subject = widget.title;
                          formService.processApplication();
                          Navigator.pop(context);

                          // Form is saved, perform the login now.
                        }
                      })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row _buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          child: TextFormField(
            validator: _validateEmail,
            onSaved: (inputValue) =>
                setState(() => formService.email = inputValue),
            keyboardType: TextInputType.emailAddress,
            // maxLength: 50,
            decoration: InputDecoration(
              labelText: "Email",

              // prefixText: "Email:",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(new Radius.circular(2.0))),
            ),
          ),
        ),
        SizedBox(width: 10),
        Flexible(
          //flex: 2,
          child: TextFormField(
            keyboardType: TextInputType.numberWithOptions(),
            validator: validateMobile,
            onSaved: (val) => setState(() => formService.phoneNumber = val),
            //onSaved: ,
            // maxLength: 50,
            decoration: InputDecoration(
              labelText: "Phone Number",
              // prefixText: "Email:",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(new Radius.circular(2.0))),
            ),
          ),
        )
      ],
    );
  }

  String _validateEmail(String value) {
//    _formWasEdited = true;
    if (value.isEmpty) return 'Enter email address';
    if (value.length < 5) return 'enter full email address';
    if (!value.contains('@')) return 'Missing @';
    return null;
  }

  String validateMobile(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length < 10)
      return '12 digits Mobile Number ';
    else
      return null;
  }
}
*/
