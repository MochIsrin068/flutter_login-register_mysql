import 'dart:convert';
import './home.dart';
import 'package:flutter/material.dart';
import './api.dart';
import 'package:http/http.dart' as http;
import './register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Login Local Server",
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String apiUrl = Api.url;

  String msgError = "";

  getApi(String username, String password) async {
    final res = await http
        .post(apiUrl, body: {"username": username, "password": password});
    final data = jsonDecode(res.body);

    if (data['level'] == "admin") {
      print(data['msg'] + " dan status : " + data['level']);
      Navigator.of(context).push(MaterialPageRoute(
          builder: (c) => HomePage(username: data['username'])));
      _username.clear();
      _password.clear();
      setState(() {
        msgError = "";
      });
    } else if (data['level'] == "user") {
      print(data['msg'] + " dan status : " + data['level']);
      Navigator.of(context).push(MaterialPageRoute(
          builder: (c) => HomePage(username: data['username'])));
      _username.clear();
      _password.clear();
      setState(() {
        msgError = "";
      });
    } else {
      setState(() {
        msgError = "Username atau Password Salah";
      });
    }
  }

  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          backgroundColor: Colors.pink,
          elevation: 0.5,
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => RegisterPage()));
              },
              child: Text("Register"),
              splashColor: Colors.amber,
              highlightColor: Colors.amber,
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.amber, Colors.pink]),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: TextField(
                    controller: _username,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Username",
                        hintText: "Username"),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.amber, Colors.pink]),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: TextField(
                    controller: _password,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Password",
                        hintText: "Password"),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Material(
                  borderRadius: BorderRadius.circular(20.0),
                  elevation: 10.0,
                  color: Colors.pink,
                  child: MaterialButton(
                    onPressed: () {
                      getApi(_username.text, _password.text);
                    },
                    color: Colors.pink,
                    child: Text("LOGIN"),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Center(
                  child: Text(msgError, style: TextStyle(color: Colors.red)),
                )
              ],
            ),
          ),
        ));
  }
}
