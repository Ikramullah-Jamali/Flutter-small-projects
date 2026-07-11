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

  int index=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Center(child: Text(("Index:$index")),) ,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value){
            setState(() {
              index=value;
            });
            //print(value);
          },
          currentIndex: index,  // 0 index is selected by-Default
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
              label: "Home"
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search),
                label: "search"
            ),
            BottomNavigationBarItem(icon: Icon(Icons.settings),
              label: "Settings"
            )
          ],

        ),
      ),
    );
  }
}
