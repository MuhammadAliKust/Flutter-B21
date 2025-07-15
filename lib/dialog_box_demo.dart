import 'package:flutter/material.dart';
import 'package:flutter_b21/login.dart';

class DialogBoxPractice extends StatelessWidget {
  const DialogBoxPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialog Box Demo")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Message"),
                  content: Text("Do you really want to delete this item?"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginView()),
                        );
                      },
                      child: Text("Yes"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("No"),
                    ),
                  ],
                );
              },
            );
          },
          child: Text("Show Dialog Box"),
        ),
      ),
    );
  }
}
