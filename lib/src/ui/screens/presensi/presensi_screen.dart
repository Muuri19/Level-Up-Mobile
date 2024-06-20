import 'package:flutter/material.dart';

import '../../../config/app_routes.dart';

class PresensiScreen extends StatefulWidget {
  static const routeName = AppRoutes.presensi;
  const PresensiScreen({Key? key}) : super(key: key);

  @override
  _PresensiScreenState createState() => _PresensiScreenState();
}

class _PresensiScreenState extends State<PresensiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Presensi'),
      ),
    );
  }
}
