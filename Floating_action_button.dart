import 'package:flutter/material.dart';

void main()
{
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
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int counter=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text("Counter"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          counter++;
        });
      },
        child: Icon(Icons.add),),
      body: Center(
        child: Text("Counter:${counter.toString()}",style: Theme.of(context).textTheme.displayLarge,)
      ),
    );
  }
}

