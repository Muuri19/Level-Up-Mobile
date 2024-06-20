import 'package:flutter/material.dart';

import '../../../config/app_routes.dart';

class OkrScreen extends StatefulWidget {
  static const routeName = AppRoutes.okr;
  const OkrScreen({ Key? key }) : super(key: key);

  @override
  _OkrScreenState createState() => _OkrScreenState();
}

class _OkrScreenState extends State<OkrScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OKR'),
      ),
    );
  }
}