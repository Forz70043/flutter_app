import 'package:flutter/material.dart';

class Routes extends StatelessWidget {

  final String route;
  Routes(this.route);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(route)),
      body: new Center(
        child: new Text(route)
      )
    );
  }
}