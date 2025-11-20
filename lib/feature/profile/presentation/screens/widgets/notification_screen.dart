import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('test baskic noti fction'),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.alarm)),
            ),
          ],
        ),
      ),
    );
  }
}
