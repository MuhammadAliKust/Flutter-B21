import 'package:flutter/material.dart';
import 'package:flutter_b21/grid_view.dart';
import 'package:flutter_b21/login.dart';
import 'package:flutter_b21/multiple_selection.dart';
import 'package:flutter_b21/page_view.dart';

import 'Student_profile.dart';
import 'asset_image.dart';
import 'bottom_nav_bar.dart';
import 'dynamic_list_view.dart';
import 'list_view_demo.dart';
import 'network_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridViewDemo(),
      // home: Scaffold(
      //   backgroundColor: Colors.yellow,
      //   appBar: AppBar(
      //     backgroundColor: Colors.blue,
      //     title: Text(
      //       'First Screen',
      //       style: TextStyle(
      //         fontSize: 30,
      //         fontWeight: FontWeight.bold,
      //         color: Colors.white,
      //       ),
      //     ),
      //     centerTitle: true,
      //     leading: Icon(Icons.arrow_back, color: Colors.white, size: 30),
      //     actions: [
      //       Icon(Icons.notifications, color: Colors.white, size: 30),
      //       Icon(Icons.shopping_cart, color: Colors.white, size: 30),
      //     ],
      //   ),
      //   body: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: [
      //       Text("First Text", style: TextStyle(fontSize: 40)),
      //       SizedBox(height: 20),
      //       Text("Second Text", style: TextStyle(fontSize: 40)),
      //       SizedBox(height: 20),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           Icon(Icons.thumb_up_alt),
      //           Icon(Icons.thumb_up_alt),
      //           Column(
      //             children: [
      //               Icon(Icons.thumb_up_alt),
      //
      //               Icon(Icons.thumb_up_alt),
      //               Icon(Icons.thumb_up_alt),
      //               Row(
      //                 children: [
      //                   Icon(Icons.thumb_up_alt),
      //                   Icon(Icons.thumb_up_alt),
      //                   Column(
      //                     children: [
      //                       Icon(Icons.thumb_up_alt),
      //                       Icon(Icons.thumb_up_alt),
      //                       Icon(Icons.thumb_up_alt),
      //                     ],
      //                   ),
      //                 ],
      //               ),
      //             ],
      //           ),
      //
      //           Icon(Icons.thumb_up_alt),
      //           Icon(Icons.thumb_up_alt),
      //           Icon(Icons.thumb_up_alt),
      //         ],
      //       ),
      //     ],
      //   ),
      //   floatingActionButton: FloatingActionButton(
      //     onPressed: () {},
      //     child: Text("Ab "),
      //     backgroundColor: Colors.blue,
      //   ),
      // ),
    );
  }
}
