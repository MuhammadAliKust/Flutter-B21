import 'package:flutter/material.dart';
import 'package:flutter_b21/grid_view.dart';
import 'package:flutter_b21/login.dart';
import 'package:flutter_b21/page_view.dart';

class TabbarViewDemo extends StatelessWidget {
  const TabbarViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar "),
          bottom: TabBar(
            tabs: [
              Column(children: [Icon(Icons.home), Text("Home")]),
              Icon(Icons.favorite),
              Icon(Icons.person),
            ],
          ),
        ),
        body: TabBarView(
          children: [LoginView(), GridViewDemo(), PageViewDemo()],
        ),
      ),
    );
  }
}
