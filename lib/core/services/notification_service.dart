import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest_all.dart' as tz;

class NotificationService {
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static Future init() async {
    AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
    );
    flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  static showBasicNotification() async {
    await flutterLocalNotificationsPlugin.show(
      0,
      "title",
      "body",
      NotificationDetails(
        android: AndroidNotificationDetails('id1', 'basic notifiation'),
      ),
    );
  }

  //
  static showScheduleNotification() async {
    tz.initializeTimeZones();
    await flutterLocalNotificationsPlugin.zonedSchedule(
      1,
      "title",
      "body",
      // tz.TZDateTime.now(tz.local).add(Duration(seconds: 10)),
      tz.TZDateTime(tz.getLocation('Africa/Cairo'), 2025, 11, 20, 1, 57),
      NotificationDetails(
        android: AndroidNotificationDetails(
          'id1',
          'basic notifiation',
          importance: Importance.max,
          priority: Priority.high,
        ),
      ),
      payload: 'paload',
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );
  }
}
