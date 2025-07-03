import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/Studentmodelclass.dart';

class StudentProfile extends StatelessWidget {
  StudentProfile({super.key});

  List<Student> stdInfoList = [
    Student(
      id: 123,
      name: 'Khadeeja',
      img: '',
      phone: '4536',
      isActive: true,
      time: '3:30',
    ),
    Student(
      id: 123,
      name: 'Khadeeja',
      img: '',
      phone: '4536',
      isActive: true,
      time: '3:30',
    ),
    Student(
      id: 123,
      name: 'Khadeeja',
      img: '',
      phone: '4536',
      isActive: true,
      time: '3:30',
    ),
    Student(
      id: 123,
      name: 'Khadeeja',
      img: '',
      phone: '4536',
      isActive: true,
      time: '3:30',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, size: 30),
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(Icons.add, size: 30),
          Icon(Icons.arrow_back, size: 30),
          Icon(Icons.ac_unit_outlined, size: 30),
        ],
      ),
      body: ListView.builder(
        itemCount: stdInfoList.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(stdInfoList[i].name, style: TextStyle(fontSize: 20)),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(stdInfoList[i].phone, style: TextStyle(fontSize: 20)),
                Text(stdInfoList[i].time, style: TextStyle(fontSize: 20)),
              ],
            ),
            trailing: Text(
              stdInfoList[i].isActive.toString(),
              style: TextStyle(fontSize: 20),
            ),
            leading: Image.asset(''),
          );
        },
      ),
    );
  }
}
