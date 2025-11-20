import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:flutter_timezone/flutter_timezone.dart';

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
    final TimezoneInfo currentTimeZone =
        await FlutterTimezone.getLocalTimezone();
    tz.setLocalLocation(tz.getLocation(currentTimeZone.identifier));
    await flutterLocalNotificationsPlugin.zonedSchedule(
      1,
      "title",
      "body",
      // tz.TZDateTime.now(tz.local).add(Duration(seconds: 10)),
      tz.TZDateTime(tz.local, 2025, 11, 20, 2, 18),
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
