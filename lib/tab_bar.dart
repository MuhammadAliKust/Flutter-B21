import 'package:flutter/material.dart';
import 'package:flutter_b21/grid_view.dart';
import 'package:flutter_b21/login.dart';
import 'package:flutter_b21/page_view.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          bottom: TabBar(
            tabs: [Icon(Icons.home), Icon(Icons.favorite), Icon(Icons.person)],
          ),
        ),
        body: TabBarView(
          children: [LoginView(), PageViewDemo(), GridViewDemo()],
        ),
      ),
    );
  }
}
