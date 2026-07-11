import 'package:flutter/material.dart';
import 'package:my_flutter_project/bottom_navigation_bar.dart';

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

  TextEditingController Email=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: IconButton(
            color: Colors.purpleAccent,
              onPressed: (){},
              icon: Icon(Icons.arrow_back)),
        ),
        body:SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child:Column(
              spacing: 15,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Forget password",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                CircleAvatar(
                  backgroundColor: Colors.purple,
                  radius: 70,
                  child: CircleAvatar(
                    backgroundColor: Colors.purpleAccent,
                    radius: 60,
                    child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.purpleAccent,
                    foregroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWMLyBIFr52Zckp70OQ2a1d4tS_nhikay7O0yNt9nmXfiQpy2hmVnz8UGh&s=10"),
                  ),
                  ),
                ),
                Text("please fill your details below",style: TextStyle(fontSize: 15),),
                Container(width: 300,
                  decoration: BoxDecoration(
                      border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: Email,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: "Enter email"
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purpleAccent,
                  ),
                    onPressed: (){
                    setState(() {
                      Email.clear();
                    });
                    },
                    child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 30),))
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
