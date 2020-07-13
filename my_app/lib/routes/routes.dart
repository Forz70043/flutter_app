import 'package:flutter/material.dart';
import 'package:contactus/contactus.dart';

class Routes extends StatelessWidget {

  final String route;
  Routes(this.route);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(route)),
      body: new Center(
        child: ContactUs(
          logo: AssetImage('assets/images/ap-logo/AP-dev1.png'),
          email: 'alfonso.pisicchio@libero.it',
          githubUserName: 'Forz70043',
          linkedinURL: 'https://www.linkedin.com/in/alfonsopisicchio/',
          tagLine: 'Software Developer', 
          cardColor: Colors.lightBlue, 
          companyColor: Colors.red,
          companyName: 'alter.net', textColor: Colors.white, taglineColor: null,
        )
      )
    );
  }
}



class AboutMe extends StatelessWidget {
  //String title="About Me";
  @override
  Widget build(BuildContext context){
    return CustomScrollView(
      slivers: <Widget>[
        ContactUs(
          logo: AssetImage('/my_app/assets/images/ap-logo/AP-dev1.png'),
          email: 'alfonso.pisicchio@libero.it',
          githubUserName: 'Forz70043',
          linkedinURL: 'https://www.linkedin.com/in/alfonsopisicchio/',
          tagLine: 'Software Developer', 
          cardColor: Colors.black, 
          companyColor: Colors.red,
          companyName: ' ', textColor: Colors.white, taglineColor: null,
        )
      ],
    );
  }


  getBody(){
  
  }
}