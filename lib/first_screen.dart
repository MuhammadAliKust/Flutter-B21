import 'package:flutter/material.dart';
import 'package:flutter_b21/secon_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen A")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondScreen(name: 'Ali',email: 'test@gmail.com',),
              ),
            );
          },
          child: Text("Go to Screen B"),
        ),
      ),
    );
  }
}
