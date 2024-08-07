import 'package:flutter/material.dart';

import '../../../config/app_routes.dart';

class DashboardScreen extends StatefulWidget {
  static const routeName = AppRoutes.dashboard;
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true ,
      ),
    );
  }
}
