import 'dart:async';

import 'package:flutter/material.dart';
import 'package:level_up/src/config/app_routes.dart';
import 'package:level_up/src/ui/screens/layout_screen.dart';
import 'package:level_up/src/ui/screens/auth/login_screen.dart';

import '../../core/utils/constants.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = AppRoutes.splashScreen;
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _redirectCalled = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _redirect();
  }

  Future<void> _redirect() async {
    await Future.delayed(Duration.zero);
    if (_redirectCalled || !mounted) {
      return;
    }

    _redirectCalled = true;
    final session = supabase.auth.currentSession;
    if (session != null) {
      Navigator.of(context).pushReplacementNamed(LayoutScreen.routeName);
    } else {
      Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      body: const Center(
        child: CircularProgressIndicator(
          color: Colors.white,
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
