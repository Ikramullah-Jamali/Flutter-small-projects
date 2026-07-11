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
      home:HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: (){
              showDialog(
                context: context,
                builder: (context)
                {
                  return AlertDialog(
                    title: Row(
                      spacing: 20,
                      children: [
                        Text("Logout"),
                        Icon(Icons.logout),
                      ],
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Are you sure, You want to Logout?"),
                        Text("Are you sure, You want to Logout?"),
                        Text("Are you sure, You want to Logout?"),
                        Text("Are you sure, You want to Logout?"),
                        Text("Are you sure, You want to Logout?"),
                        Text("Are you sure, You want to Logout?"),
                        Text("Are you sure, You want to Logout?"),
                        Text("Are you sure, You want to Logout?"),
                        Text("Are you sure, You want to Logout?"),
                      ],
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text("No")
                      ),
                      ElevatedButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Text("Yes")
                      ),
                    ],
                  );
                }
              );
            },
            child: Text("Logout")),
            ElevatedButton(
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (context)
                    {
                      return AlertDialog(
                        title: Text("Alert Dialogue"),
                      );
                    }
                );
              },
              child: Text("Show Dialogue"))
        ],
      ),
    );
  }
}
