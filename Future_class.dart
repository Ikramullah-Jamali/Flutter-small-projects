import 'package:flutter/material.dart';

void main(){
  var futureobj=Future.delayed(
    Duration(seconds: 5),
  );
  futureobj.then((value)=>print("Hello World after 5 secondes"));
  print("Hello World");
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blueAccent,),
        body: Text("Hi"),
      ),
    );
  }
}
