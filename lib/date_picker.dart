import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerDemo extends StatefulWidget {
  const DatePickerDemo({super.key});

  @override
  State<DatePickerDemo> createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Date Picker")),
      body: Column(
        children: [
          if (selectedDate != null) Text(DateFormat.yMMMMEEEEd().format(selectedDate!),style: TextStyle(fontSize: 30),),
          Center(
            child: ElevatedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime.now(),
                ).then((val){
                  selectedDate = val;
                  setState(() {

                  });
                });
              },
              child: Text("Show Date Picker"),
            ),
          ),
        ],
      ),
    );
  }
}
