import 'package:flutter/material.dart';
import 'package:my_flutter_project/form_validation_app.dart';

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

  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController qualification = TextEditingController();
  final formKey=GlobalKey<FormState>();
  //GlobalKey<ScaffoldState> globalKey= GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Hyderabad Software house"),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              SizedBox(height: 30,),
              CircleAvatar(
                maxRadius: 40,
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB0G0JuPSHX8DMTnYKLPq7TUYdxCnBJkRY4w&s",),
              ),
              SizedBox(height: 10,),
             Container(
               color: Colors.blue,
               padding: EdgeInsets.all(20),
               alignment: Alignment.center,
               child: Text("Hyderabad Software house",style: TextStyle(fontSize: 20),),
             ),
              SizedBox(height: 20,),
              ListTile(
                onTap: (){},
                title: Text("Home"),
               leading: IconButton(onPressed: () {},
                 icon: Icon(Icons.home)),
              ),
              ListTile(
                onTap: (){},
                title: Text("Settings"),
                leading: IconButton(onPressed: () {},
                    icon: Icon(Icons.settings)),
              ),
              ListTile(
                onTap: (){},
                title: Text("About"),
                leading: IconButton(onPressed: () {},
                    icon: Icon(Icons.info)),
              ),
              ListTile(
                onTap: (){},
                title: Text("Help"),
                leading: IconButton(onPressed: () {},
                    icon: Icon(Icons.help)),
              ),
              ListTile(
                onTap: (){},
                title: Text("Logout"),
                leading: IconButton(onPressed: () {},
                    icon: Icon(Icons.logout)),
              ),
            ],
          ),
        ),

        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: SizedBox(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Job portal",style: TextStyle(fontSize: 40),),
                    const SizedBox(height: 12),
                    TextFormField(
                      controller: name,
                      decoration: InputDecoration(
                          hintText: "Enter Name",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person),
                          suffixIcon: IconButton(onPressed: ()
                          {
                            name.clear();
                          }, icon:Icon(Icons.close))
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Your Name";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      controller: phone,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        suffixIcon: IconButton(onPressed: ()
                        {
                          phone.clear();
                        }, icon:Icon(Icons.close)),
                        hintText: "Enter Phone Number",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Phone Number";
                        }
                        if (value.length != 11) {
                          return "Please Enter 11 Digits";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        suffixIcon: IconButton(onPressed: ()
                        {
                          email.clear();
                        }, icon:Icon(Icons.close)),
                        hintText: "Enter Your Email",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Your Email";
                        }
                        if (!value.contains("@")) {
                          return "Invalid Email Address";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      controller: qualification,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.school),
                        suffixIcon: IconButton(onPressed: ()
                        {
                          qualification.clear();
                        }, icon:Icon(Icons.close)),
                        hintText: "Your Qualification",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Your Qualification";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(onPressed: (){
                      if(formKey.currentState!.validate()){
                        print("Your Name:${name.text}");
                        print("Your phone number:${phone.text}");
                        print("Your Email:${email.text}");
                        print("Your password:${qualification.text}");
                      }
                    },
                      child: Text("Apply")),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
