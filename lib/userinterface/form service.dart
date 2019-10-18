//import 'dart:io' as io;
//import 'dart:convert';
//import 'package:path_provider/path_provider.dart';
import 'package:flutter_mailer/flutter_mailer.dart';

class FormService {
  String pathName;
  String date;
  String name = '';
  String subject = '';
  String phoneNumber = '';
  String email = '';
  String description = '';

  void processApplication() async {
    var mailBody = """
      <html>
      <p><b>Name:<b> $name</p>
     
      <p><b>Phone Number:<b> $phoneNumber</p>  
      <p> <b>email :<b> $email</p>    
      <p><b>Notes:<br> $description</p>
     
     
      </html>""";

    final MailOptions mailOptions = MailOptions(
      body: mailBody,
      subject: '$subject ',
      recipients: ['sulazo@yahoo.com'],
      isHTML: true,
      bccRecipients: [''],
      ccRecipients: [''],
    );

    await FlutterMailer.send(mailOptions);
  }
}
