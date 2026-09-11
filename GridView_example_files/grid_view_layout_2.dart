import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> gridData = [
      {"title": "Item 1", "icon": Icons.filter_1, "color": Colors.blue.shade800},
      {"title": "Item 2", "icon": Icons.filter_2, "color": Colors.blue},
      {"title": "Item 3", "icon": Icons.filter_3, "color": Colors.red.shade700},
      {"title": "Item 4", "icon": Icons.filter_4, "color": Colors.orange},
      {"title": "Item 5", "icon": Icons.filter_5, "color": Colors.pink},
      {"title": "Item 6", "icon": Icons.filter_6, "color": Colors.green},
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.grid_view),
              SizedBox(width: 10),
              Text("GRIDVIEW", style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),

        body: GridView.count(
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          crossAxisCount: 2,
          padding: const EdgeInsets.all(20),

          children: [
            for (var item in gridData)
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: item["color"],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      item["icon"],
                      color: Colors.white,
                      size: 32,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      item["title"],
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    )
                  ],
                ),
              ),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          child: const Icon(Icons.vertical_split, color: Colors.white),
        ),
      ),
    );
  }
}