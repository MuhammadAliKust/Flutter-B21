import 'package:flutter/material.dart';

class MultipleSelectionDemo extends StatefulWidget {
  MultipleSelectionDemo({super.key});

  @override
  State<MultipleSelectionDemo> createState() => _MultipleSelectionDemoState();
}

class _MultipleSelectionDemoState extends State<MultipleSelectionDemo> {
  List<int> selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Multiple Selection Demo")),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Card(
              elevation: 3,
              color: selectedIndex.contains(i) ? Colors.blue : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                onTap: () {
                  if (selectedIndex.contains(i)) {
                    selectedIndex.remove(i);
                  } else {
                    selectedIndex.add(i);
                  }

                  setState(() {});
                },
                leading: Icon(Icons.notifications),
                title: Text("Loop Index: $i"),
                subtitle: Text("Selected Index: $selectedIndex"),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
          );
        },
      ),
    );
  }
}
