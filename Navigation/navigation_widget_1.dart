import 'package:flutter/material.dart';
import 'package:my_flutter_project/navigation_widget_2.dart';

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

  var NameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Home Page"),
      ),
      body: Column(
        children: [
          TextField(
            controller: NameController,
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)
                {
                  return MyClass1(NameController.text.toString());
                }));
              },
              child: Text("Go to Next Page"))
        ],
      ),
    );
  }
}

