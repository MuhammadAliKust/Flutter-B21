import 'package:flutter/material.dart';
import 'package:flutter_b21/providers/user.dart';
import 'package:provider/provider.dart';

class ScreenBView extends StatelessWidget {
  const ScreenBView({super.key});

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        leadingWidth: 0,
        title: Text("Screen B"),
      ),

      body: Column(
        children: [
          Text(user.getName(),style: TextStyle(fontSize: 40),),
          Text(user.getEmail(),style: TextStyle(fontSize: 40),),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go back to Screen A"),
            ),
          ),
        ],
      ),
    );
  }
}
