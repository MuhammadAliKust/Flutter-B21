import 'package:flutter/material.dart';
import 'package:flutter_b21/models/notification.dart';

class DynamicListView extends StatefulWidget {
  DynamicListView({super.key});

  @override
  State<DynamicListView> createState() => _DynamicListViewState();
}

class _DynamicListViewState extends State<DynamicListView> {
  List<NotificationModel> notificationList = [
    NotificationModel(
      title: 'First Notification',
      subTitle: 'First Sub Title',
      time: '11:00 AM',
    ),
    NotificationModel(
      title: 'Second Notification',
      subTitle: 'Second Sub Title',
      time: '12:00 AM',
    ),
    NotificationModel(
      title: 'Third Notification',
      subTitle: 'Third Sub Title',
      time: '1:00 AM',
    ),
    NotificationModel(
      title: 'Third Notification',
      subTitle: 'Third Sub Title',
      time: '1:00 AM',
    ),
    NotificationModel(
      title: 'Third Notification',
      subTitle: 'Third Sub Title',
      time: '1:00 AM',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dynamic List View Demo")),
      body: ListView.builder(
        itemCount: notificationList.length,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Icon(Icons.notifications),
                title: Text(notificationList[i].title),
                subtitle: Text(notificationList[i].subTitle),
                trailing: Text(notificationList[i].time),
              ),
            ),
          );
        },
      ),
    );
  }
}
