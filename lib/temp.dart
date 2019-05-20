// import 'package:flutter/material.dart';

// class MyTemp with ChangeNotifier {
//   String _name = "Celsius";

//   int _tempratur = 24;

//   String get nameType => _name;
//   int get tempratur => _tempratur;

//   set newName(String newN) {
//     _name = newN;
//     notifyListeners();
//   }

//   set newTemp(int newT) {
//     _tempratur = newT;
//     notifyListeners();
//   }
// }

// KODE UNTUK DI MAIN.DART

// import 'package:bloc_provider/temp.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(MaterialApp(
//     title: "State Manajemen Provider",
//     debugShowCheckedModeBanner: false,
//     home: HomePage(),
//   ));
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       builder: (context) => MyTemp(),
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Provider"),
//           elevation: 0.5,
//           backgroundColor: Colors.red,
//         ),
//         body: Container(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[TempName(), TempValue()],
//           ),
//         ),
//         floatingActionButton: MyFloatingButton(),
//       ),
//     );
//   }
// }

// class TempName extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10.0),
//       child: Text("Tempratur Name here"),
//     );
//   }
// }

// class TempValue extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10.0),
//       child: Text("Tempratur Value here"),
//     );
//   }
// }

// class MyFloatingButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var muProv = Provider.of<MyTemp>(context);
//     return FloatingActionButton(
//       onPressed: () {
//         String newNames =
//             muProv.nameType == "Celsius" ? "Farenheit" : "Celcius";
//         muProv.newName = newNames;
//       },
//       backgroundColor:
//           muProv.nameType == "Celsius" ? Colors.green : Colors.blue,
//       child: Icon(Icons.change_history),
//     );
//   }
// }
