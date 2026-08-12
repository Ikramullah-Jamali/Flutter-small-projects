import 'package:flutter/material.dart';

void main() {
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
          backgroundColor: Colors.black54,
          title: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              ),
              SizedBox(width: 30),
              Text(
                "Standard buttons",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 20,
              children: [
                SizedBox(height: 10),
                Row(
                  spacing: 3,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    topTabButton("Solid", Colors.black, 90),
                    topTabButton("Outlined", Colors.black12, 90),
                    topTabButton("Outlined 2X", Colors.black12, null),
                  ],
                ),
                categorySection("Default"),
                categorySection("Active State"),
                categorySection("Disabled State"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget topTabButton(String text, Color bgColor, double? width) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        width: width,
        color: bgColor,
        padding: width == null ? EdgeInsets.symmetric(horizontal: 8) : null,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
      ),
    );
  }

  Widget categorySection(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        Text(
          title,
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 30),
        ),
        nineButtonsGroup(),
      ],
    );
  }

  Widget nineButtonsGroup() {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            coloredButton("Primary", Colors.blueAccent, Colors.white),
            coloredButton("Secondary", Colors.purple, Colors.white),
            coloredButton("Success", Colors.lightGreenAccent, Colors.white),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            coloredButton("Warning", Colors.orange, Colors.white),
            coloredButton("Danger", Colors.red, Colors.white),
            coloredButton("Info", Colors.blueAccent, Colors.white),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            coloredButton("Light", Colors.grey, Colors.black),
            coloredButton("Dark", Colors.black, Colors.white),
            coloredButton("Link", Colors.white, Colors.blueAccent),
          ],
        ),
      ],
    );
  }

  Widget coloredButton(String text, Color bgColor, Color textColor) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      height: 40,
      width: 100,
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
