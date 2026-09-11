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
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: GridView.count(
          padding: EdgeInsets.all(10),
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            // Container(
            //   color: Colors.black,
            // ),
            Image.network("https://www.geosuper.tv/assets/uploads/updates/2021-12-22/12454_8540168_updates.gif",fit:BoxFit.cover,),
            Image.network("https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_800,q_50/lsci/db/PICTURES/CMS/417800/417847.jpg",fit:BoxFit.cover),
            Image.network("https://img1.hscicdn.com/image/upload/f_auto,t_ds_wide_w_800,q_50/lsci/db/PICTURES/CMS/308200/308245.6.jpg",fit:BoxFit.cover),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYW5SAS3__1f8sDzAy7MQ80IN1YuAW-_3IQw&s",fit:BoxFit.cover),
            Image.network("https://www.geosuper.tv/assets/uploads/updates/2021-12-22/12454_8540168_updates.gif",fit:BoxFit.cover),
            Image.network("https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_800,q_50/lsci/db/PICTURES/CMS/417800/417847.jpg",fit:BoxFit.cover),
            Image.network("https://img1.hscicdn.com/image/upload/f_auto,t_ds_wide_w_800,q_50/lsci/db/PICTURES/CMS/308200/308245.6.jpg",fit:BoxFit.cover),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYW5SAS3__1f8sDzAy7MQ80IN1YuAW-_3IQw&s",fit:BoxFit.cover),
            Image.network("https://www.geosuper.tv/assets/uploads/updates/2021-12-22/12454_8540168_updates.gif",fit:BoxFit.cover),
            Image.network("https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_800,q_50/lsci/db/PICTURES/CMS/417800/417847.jpg",fit:BoxFit.cover),
            Image.network("https://img1.hscicdn.com/image/upload/f_auto,t_ds_wide_w_800,q_50/lsci/db/PICTURES/CMS/308200/308245.6.jpg",fit:BoxFit.cover),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYW5SAS3__1f8sDzAy7MQ80IN1YuAW-_3IQw&s",fit:BoxFit.cover),

          ],
        ),
      ),
    );
  }
}
