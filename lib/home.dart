import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String username;

  HomePage({this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Home Page"),
          backgroundColor: Colors.pink,
          elevation: 0.5),
      body: Center(
        child: Text("Selamat Datang " + username),
      ),
    );
  }
}
