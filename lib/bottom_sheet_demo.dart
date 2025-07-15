import 'package:flutter/material.dart';
import 'package:flutter_b21/login.dart';

class BottomSheetPractice extends StatelessWidget {
  const BottomSheetPractice({super.key});

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
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Container(
                        height: 8,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.4),
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
