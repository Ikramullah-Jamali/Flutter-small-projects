import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          spacing: 10,
          children: [
            CircleAvatar(
              radius: 20,
              foregroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmsRs64gX9PMbAKCQrZfP5lBLwxwHKRLOynqpjXvio2Q&s=10"),
              ),
            Text("VidMonetize"),
            Spacer(),
            CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyhcjSV91h-v4A1LYXv2TMuryzLtHXmiycw3OtEBEWIg&s=10"),)
            ],
        ),
      ),
      drawer: Drawer(
      ),
      body: GridView.count(
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(20),
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          Container(
            //margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              //shape:BoxShadow()
            ),
            height: 100,
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Total Views",style: TextStyle(color: Colors.black45),),
                    Spacer(),
                    Icon(Icons.info_outline,color: Colors.black45)
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("200K",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          Icon(Icons.arrow_upward,color: Colors.green,)
                        ],
                      ),
                      Text("Views")
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            //margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              //shape:BoxShadow()
            ),
            height: 130,
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Total Watch Views",style: TextStyle(color: Colors.black45,fontSize: 12),),
                    Spacer(),
                    Icon(Icons.info_outline,color: Colors.black45)
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("200K",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          Icon(Icons.arrow_upward,color: Colors.green,)
                        ],
                      ),
                      Text("Watch Time")
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            //margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              //shape:BoxShadow()
            ),
            height: 130,
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Total Views",style: TextStyle(color: Colors.black45),),
                    Spacer(),
                    Icon(Icons.info_outline,color: Colors.black45)
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("200K",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          Icon(Icons.arrow_upward,color: Colors.green,)
                        ],
                      ),
                      Text("Views")
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            //margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              //shape:BoxShadow()
            ),
            height: 130,
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Total Views",style: TextStyle(color: Colors.black45),),
                    Spacer(),
                    Icon(Icons.info_outline,color: Colors.black45)
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("200K",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          Icon(Icons.arrow_upward,color: Colors.green,)
                        ],
                      ),
                      Text("Views")
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            //margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              //shape:BoxShadow()
            ),
            height: 130,
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Total Views",style: TextStyle(color: Colors.black45),),
                    Spacer(),
                    Icon(Icons.info_outline,color: Colors.black45)
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("200K",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          Icon(Icons.arrow_upward,color: Colors.green,)
                        ],
                      ),
                      Text("Views")
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            //margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              //shape:BoxShadow()
            ),
            height: 130,
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Total Views",style: TextStyle(color: Colors.black45),),
                    Spacer(),
                    Icon(Icons.info_outline,color: Colors.black45)
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("200K",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          Icon(Icons.arrow_upward,color: Colors.green,)
                        ],
                      ),
                      Text("Views")
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            //margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              //shape:BoxShadow()
            ),
            height: 100,
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Total Views",style: TextStyle(color: Colors.black45),),
                    Spacer(),
                    Icon(Icons.info_outline,color: Colors.black45)
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("200K",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          Icon(Icons.arrow_upward,color: Colors.green,)
                        ],
                      ),
                      Text("Views")
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            //margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              //shape:BoxShadow()
            ),
            height: 130,
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Total Returning Followers",style: TextStyle(color: Colors.black45,fontSize: 10),),
                    Spacer(),
                    Icon(Icons.info_outline,color: Colors.black45,size: 18,)
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("200K",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          Icon(Icons.arrow_upward,color: Colors.green,)
                        ],
                      ),
                      Text("Views")
                    ],
                  ),
                )
              ],
            ),
          ),
        
        ],
      ),
    );
  }
}

