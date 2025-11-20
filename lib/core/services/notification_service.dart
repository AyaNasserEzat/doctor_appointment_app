import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:intl/intl.dart';
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

  // ScheduleNotification
  static showScheduleNotification({
    required String date,
    required int minutesBefore,
  }) async {
    tz.initializeTimeZones();
    final TimezoneInfo currentTimeZone =
        await FlutterTimezone.getLocalTimezone();
    final DateTime dateTime = DateFormat(
      "EEEE, MMMM d, yyyy h:mm a",
    ).parse(date);

    tz.setLocalLocation(tz.getLocation(currentTimeZone.identifier));
    await flutterLocalNotificationsPlugin.zonedSchedule(
      1,
      "Appointment Remnider",
      "you have apointment at ${dateTime.month} ${dateTime.day} ${dateTime.hour}",
      tz.TZDateTime.from(
        dateTime,
        tz.local,
      ).subtract(Duration(minutes: minutesBefore)),
      NotificationDetails(
        android: AndroidNotificationDetails(
          'id1',
          'basic notifiation',
          importance: Importance.max,
          priority: Priority.high,
        ),
      ),
      payload: 'payload',
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );
  }
}
