import 'package:doctor_appointment/core/helper/constant.dart';
import 'package:doctor_appointment/core/routing/routes.dart';
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
    flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (NotificationResponse response) {
        final String? payload = response.payload;
        if (payload != null) {
          navigatorKey.currentState?.pushNamed(
            Routes.notificationScreen,
            arguments: payload,
          );
        }
      },
    );
  }

  static showBasicNotification() async {
    await flutterLocalNotificationsPlugin.show(
      0,
      "title",
      "body",
      payload: 'paylod',
      NotificationDetails(
        android: AndroidNotificationDetails(
          'id1',
          'basic notifiation',
          importance: Importance.max,
          priority: Priority.max,
          sound: RawResourceAndroidNotificationSound(
            'reminder.mp3'.split('.').first,
          ),
        ),
      ),
    );
  }

  // ScheduleNotification
  static showScheduleNotification({
    required String date,
    required String docName,
    required int minutesBefore,
  }) async {
    tz.initializeTimeZones();
    final TimezoneInfo currentTimeZone =
        await FlutterTimezone.getLocalTimezone();
    final DateTime dateTime = DateFormat(
      "EEEE, MMMM d, yyyy h:mm a",
    ).parse(date);
    // Check if in future
    if (dateTime.isBefore(DateTime.now())) {
      return;
    }
    tz.setLocalLocation(tz.getLocation(currentTimeZone.identifier));
    final String payload = date;
    await flutterLocalNotificationsPlugin.zonedSchedule(
      1,
      "Appointment Remnider",
      "you have apointment in $minutesBefore ",
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
          sound: RawResourceAndroidNotificationSound(
            'reminder.mp3'.split('.').first,
          ),
        ),
      ),
      payload: payload,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );
  }
}
