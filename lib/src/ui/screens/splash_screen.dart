import 'dart:async';

import 'package:flutter/material.dart';
import 'package:level_up/src/config/app_routes.dart';
import 'package:level_up/src/ui/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = AppRoutes.splashScreen;
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startSplashScreen() async {
    Duration duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    });
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(
                  'assets/dev.png',
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: LinearProgressIndicator(
                color: Colors.white,
                backgroundColor: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
