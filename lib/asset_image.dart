import 'package:flutter/material.dart';

class AssetImageDemo extends StatelessWidget {
  const AssetImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Asset Image")),
      body: Image.asset(
        'assets/images/register.PNG',
        height: 100,
        fit: BoxFit.fill,
        width: 300,
      ),
    );
  }
}
