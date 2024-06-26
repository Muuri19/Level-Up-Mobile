import 'package:flutter/material.dart';
import 'package:level_up/src/config/app_routes.dart';
import 'package:level_up/src/core/utils/received_notification.dart';

class Test extends StatelessWidget {
  static const routeName = AppRoutes.test;
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ReceivedNotification arg =
        ModalRoute.of(context)?.settings.arguments as ReceivedNotification;
    return Scaffold(
      appBar: AppBar(
        title: Text('Title: ${arg.payload}'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
