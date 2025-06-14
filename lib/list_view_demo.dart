import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View Demo")),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 18.0,
              right: 30,
              top: 5,
              bottom: 10,
            ),
            child: Card(
              elevation: 20,
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notification Title"),
                subtitle: Text("Notification SubTitle"),
                trailing: Icon(Icons.arrow_forward_rounded),
                // tileColor: Colors.blue.withOpacity(0.4),
              ),
            ),
          );
        },
      ),
    );
  }
}
