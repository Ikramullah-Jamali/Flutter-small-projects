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
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Row(
            children: [
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.arrow_back_ios,color: Colors.white,)
              ),
              SizedBox(width: 30,),
              Text("Standard buttons",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)
            ],
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 20,
              children: [
                SizedBox(height: 10,),
                Row(
                  spacing: 3,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: (){},
                        child: Container(
                          alignment: Alignment.center,
                          width: 90,
                          child: Text("Solid",style: TextStyle(color: Colors.white,fontSize: 17),),
                          color: Colors.black,
                        )
                    ),
                    GestureDetector(
                        onTap: (){},
                        child: Container(
                          alignment: Alignment.center,
                          width: 90,
                          child: Text("Outlined",style: TextStyle(color: Colors.white,fontSize: 17),),
                          color: Colors.black12,
                        )
                    ),
                    GestureDetector(
                        onTap: (){},
                        child: Container(
                          alignment: Alignment.center,
                          child: Text("Outlined 2X",style: TextStyle(color: Colors.white,fontSize: 17),),
                          color: Colors.black12,
                        )
                    ),
                  ],
                ),
                Text("Default",textAlign: TextAlign.start,style: TextStyle(fontSize: 30),),
                Container(
                   child: Column(
                     spacing: 20,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         spacing: 20,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              child: Text("Primary",style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              child: Text("Secondary",style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.lightGreenAccent,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              child: Text("Success",style: TextStyle(color: Colors.white),),
                            ),
                            ],
                          ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         spacing: 20,
                         children: [
                           Container(
                             decoration: BoxDecoration(
                                 color: Colors.orange,
                                 borderRadius: BorderRadius.circular(10)
                             ),
                             alignment: Alignment.center,
                             height: 40,
                             width: 100,
                             child: Text("Warning",style: TextStyle(color: Colors.white),),
                           ),
                           Container(
                             decoration: BoxDecoration(
                                 color: Colors.red,
                                 borderRadius: BorderRadius.circular(10)
                             ),
                             alignment: Alignment.center,
                             height: 40,
                             width: 100,
                             child: Text("Danger",style: TextStyle(color: Colors.white),),
                           ),
                           Container(
                             decoration: BoxDecoration(
                                 color: Colors.blueAccent,
                                 borderRadius: BorderRadius.circular(10)
                             ),
                             alignment: Alignment.center,
                             height: 40,
                             width: 100,
                             child: Text("Info",style: TextStyle(color: Colors.white),),
                           ),
                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         spacing: 20,
                         children: [
                           Container(
                             decoration: BoxDecoration(
                                 color: Colors.grey,
                                 borderRadius: BorderRadius.circular(10)
                             ),
                             alignment: Alignment.center,
                             height: 40,
                             width: 100,
                             child: Text("Light",style: TextStyle(color: Colors.black),),
                           ),
                           Container(
                             decoration: BoxDecoration(
                                 color: Colors.black,
                                 borderRadius: BorderRadius.circular(10)
                             ),
                             alignment: Alignment.center,
                             height: 40,
                             width: 100,
                             child: Text("Dark",style: TextStyle(color: Colors.white),),
                           ),
                           Container(
                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(10)
                             ),
                             alignment: Alignment.center,
                             height: 40,
                             width: 100,
                             child: Text("Link",style: TextStyle(color: Colors.blueAccent),),
                           ),
                         ],
                       ),
                     ],
                   )
                   ),
                Text("Active State",textAlign: TextAlign.start,style: TextStyle(fontSize: 30),),
                Container(
                    child: Column(
                      spacing: 20,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 20,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              child: Text("Primary",style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              child: Text("Secondary",style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.lightGreenAccent,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              child: Text("Success",style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 20,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              child: Text("Warning",style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              child: Text("Danger",style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              child: Text("Info",style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 20,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              child: Text("Light",style: TextStyle(color: Colors.black),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              child: Text("Dark",style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              child: Text("Link",style: TextStyle(color: Colors.blueAccent),),
                            ),
                          ],
                        ),
                      ],
                    )
                ),
                Text("Disabled State",textAlign: TextAlign.start,style: TextStyle(fontSize: 30),),
                Container(
                    child: Column(
                      spacing: 20,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 20,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              child: Text("Primary",style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              child: Text("Secondary",style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.lightGreenAccent,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              child: Text("Success",style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 20,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              child: Text("Warning",style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              child: Text("Danger",style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              child: Text("Info",style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 20,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              child: Text("Light",style: TextStyle(color: Colors.black),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              child: Text("Dark",style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              child: Text("Link",style: TextStyle(color: Colors.blueAccent),),
                            ),
                          ],
                        ),
                      ],
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
