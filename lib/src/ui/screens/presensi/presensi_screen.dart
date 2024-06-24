import 'package:flutter/material.dart';

import '../../../config/app_routes.dart';

class PresensiScreen extends StatefulWidget {
  static const routeName = AppRoutes.presensi;
  const PresensiScreen({Key? key}) : super(key: key);

  @override
  _PresensiScreenState createState() => _PresensiScreenState();
}



class _PresensiScreenState extends State<PresensiScreen> {
  bool isFavorite = false;
  double edge = 24;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Presensi'),
      ),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/presensi/condition.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                const SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hello, Muuri'),
                        Text('How are you feeling today?')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
