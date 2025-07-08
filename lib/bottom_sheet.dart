import 'package:flutter/material.dart';

class BottomSheetDemo extends StatelessWidget {
  const BottomSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Sheet Demo")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Container(
                        height: 7,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Text("Show Bottom Sheet"),
        ),
      ),
    );
  }
}
