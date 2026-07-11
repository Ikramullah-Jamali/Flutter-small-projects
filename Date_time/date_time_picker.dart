import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DateTime pickedDate=DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (newContext) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title:  Text("Date"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: CupertinoDatePicker(
                        onDateTimeChanged: (date)
                        {
                          print(date);
                        }),
                  ),
                  Flexible(
                    child: CupertinoTimerPicker(
                        onTimerDurationChanged: (time)
                        {
                          print(time);
                        }),
                  ),
                ],
                // children: [
                //   Text(DateFormat('yyyy-dd-MM').format(pickedDate)),
                //   ElevatedButton(
                //     onPressed: () async {
                //        DateTime? date= await showDatePicker(
                //         context: newContext,
                //         initialDate: DateTime.now(),
                //         firstDate: DateTime(2000),
                //         lastDate: DateTime(2050),
                //       );
                //       if(date != null)
                //         {
                //           setState(() {
                //             pickedDate=date;
                //           });
                //         }
                //     },
                //     child: const Text("Pick Date"),
                //   ),
                //   ElevatedButton(
                //     onPressed: () async {
                //       TimeOfDay? time= await showTimePicker(
                //         context: newContext,
                //         initialTime: TimeOfDay.now(),
                //       );
                //       print(time?.format(newContext));
                //     },
                //     child: const Text("Pick Time"),
                //   ),
                // ],
              ),
            ),
          );
        },
      ),
    );
  }
}
