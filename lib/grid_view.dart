import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View Demo")),

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 3.5,
          ),
          itemBuilder: (context, i) {
            return InkWell(
              onTap: () {},
              child: Container(
                height: 100,
                width: 1000,
                decoration: BoxDecoration(
                  color: Color(0xffb7bac2),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blue, width: 3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.add, size: 30),
                    Text("All", style: TextStyle(fontSize: 30)),
                    Icon(Icons.add, size: 30),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
