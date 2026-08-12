import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DatePickerScreen(),
    );
  }
}

class DatePickerScreen extends StatefulWidget {
  const DatePickerScreen({super.key});
  @override
  State<DatePickerScreen> createState() => _DatePickerScreenState();
}

class _DatePickerScreenState extends State<DatePickerScreen> {
  DateTime pickedDate = DateTime.now();
  Duration pickedTime = const Duration(hours: 1, minutes: 30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: const Text("Cupertino Pickers", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            infoBox("Selected Date", DateFormat('MMMM dd, yyyy').format(pickedDate), Icons.calendar_month),
            const SizedBox(height: 12),
            Expanded(
              child: pickerCard(
                CupertinoDatePicker(
                  initialDateTime: pickedDate,
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (date) {
                    setState(() { pickedDate = date; });
                  },
                ),
              ),
            ),
            const SizedBox(height: 24),
            infoBox("Selected Timer", formatTime(pickedTime), Icons.timer),
            const SizedBox(height: 12),
            Expanded(
              child: pickerCard(
                CupertinoTimerPicker(
                  mode: CupertinoTimerPickerMode.hms,
                  initialTimerDuration: pickedTime,
                  onTimerDurationChanged: (time) {
                    setState(() { pickedTime = time; });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget infoBox(String title, String value, IconData icon) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.deepPurpleAccent.withOpacity(0.3)),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.deepPurple, size: 28),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontSize: 14, color: Colors.black54)),
              Text(value, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.deepPurple)),
            ],
          ),
        ],
      ),
    );
  }

  Widget pickerCard(Widget childWidget) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, spreadRadius: 2, offset: const Offset(0, 4))
        ],
      ),
      child: childWidget,
    );
  }

  String formatTime(Duration duration) {
    String hours = duration.inHours.toString().padLeft(2, "0");
    String mins = duration.inMinutes.remainder(60).toString().padLeft(2, "0");
    String secs = duration.inSeconds.remainder(60).toString().padLeft(2, "0");
    return "${hours}h ${mins}m ${secs}s";
  }
}
