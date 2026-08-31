import 'package:flutter/material.dart';

class MyClass1 extends StatelessWidget {

  final String NamefromHome;
  const MyClass1(this.NamefromHome,{super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Second page"),
        ),
        body: Column(
          children: [
            Text("Welcome$NamefromHome"),
            ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("Go Back"))
          ],
        ),
      ),
    );
  }
}
