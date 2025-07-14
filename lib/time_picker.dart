import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimePickerDemo extends StatefulWidget {
  const TimePickerDemo({super.key});

  @override
  State<TimePickerDemo> createState() => _TimePickerDemoState();
}

class _TimePickerDemoState extends State<TimePickerDemo> {
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Time Picker")),
      body: Column(
        children: [
          if (selectedTime != null)
            Text(selectedTime!.format(context), style: TextStyle(fontSize: 30)),
          Center(
            child: ElevatedButton(
              onPressed: () {
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                ).then((val) {
                  selectedTime = val;
                  setState(() {});
                });
              },
              child: Text("Show Time Picker"),
            ),
          ),
        ],
      ),
    );
  }
}
