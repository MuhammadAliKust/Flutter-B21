import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Demo")),
      body: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),

            child: Image.asset('assets/images/register.PNG'),
          ),
          Container(height: 300, width: 300, color: Colors.blue),
          Container(height: 200, width: 200, color: Colors.yellow),
          Container(height: 100, width: 100, color: Colors.green),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
