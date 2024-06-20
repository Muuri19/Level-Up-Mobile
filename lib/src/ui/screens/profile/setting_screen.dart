import 'package:flutter/material.dart';

import '../../../config/app_routes.dart';

class SettingScreen extends StatefulWidget {
  static const routeName = AppRoutes.setting;
  SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool darkMode = false;

  final WidgetStateProperty<Icon?> thumbIcon =
      WidgetStateProperty.resolveWith<Icon?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return const Icon(Icons.dark_mode);
      }
      return const Icon(Icons.light_mode);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: const Text('Dark Mode'),
              trailing: Switch(
                thumbIcon: thumbIcon,
                value: darkMode,
                onChanged: (bool value) {
                  setState(() {
                    darkMode = value;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
