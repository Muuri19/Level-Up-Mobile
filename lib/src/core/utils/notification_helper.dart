import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class NotificationHelper {
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  NotificationHelper() {
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    initialize();
  }

  void initialize() {
    final androidInitializationSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
    final initializationSettings = InitializationSettings(
      android: androidInitializationSettings,
    );

    flutterLocalNotificationsPlugin.initialize(initializationSettings);
    tz.initializeTimeZones();
  }

  Future<void> scheduleDailyCheckInNotification() async {
    await flutterLocalNotificationsPlugin.zonedSchedule(
      0,
      'Check-In Reminder',
      'Jangan lupa untuk check-in sekarang!',
      _nextInstanceOfHour(8),
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'check_in_channel',
          'Check In Notifications',
          importance: Importance.max,
          priority: Priority.high,
        ),
      ),
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.wallClockTime,
      matchDateTimeComponents: DateTimeComponents.time,
    );
  }

  Future<void> scheduleDailyCheckOutNotification() async {
    await flutterLocalNotificationsPlugin.zonedSchedule(
      1,
      'Check-Out Reminder',
      'Jangan lupa untuk check-out sekarang!',
      _nextInstanceOfHour(17),
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'check_out_channel',
          'Check Out Notifications',
          importance: Importance.max,
          priority: Priority.high,
        ),
      ),
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.wallClockTime,
      matchDateTimeComponents: DateTimeComponents.time,
    );
  }

//   Future<void> scheduleTestNotification(String title, String body, int seconds) async {
//   await flutterLocalNotificationsPlugin.zonedSchedule(
//     0,
//     title,
//     body,
//     tz.TZDateTime.now(tz.local).add(Duration(seconds: seconds)),
//     const NotificationDetails(
//       android: AndroidNotificationDetails(
//         'test_channel',
//         'Test Notifications',
//         importance: Importance.max,
//         priority: Priority.high,
//       ),
//     ),
//     androidAllowWhileIdle: true,
//     uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.wallClockTime,
//   );
// }

  tz.TZDateTime _nextInstanceOfHour(int hour) {
    final now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduledDate = tz.TZDateTime(tz.local, now.year, now.month, now.day, hour);
    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(Duration(days: 1));
    }
    return scheduledDate;
  }
}
