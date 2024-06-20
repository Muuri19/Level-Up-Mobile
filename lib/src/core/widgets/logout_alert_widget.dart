import 'package:flutter/material.dart';
import 'package:level_up/src/ui/screens/login_screen.dart';

class AlertLogout extends StatelessWidget {
  const AlertLogout({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      elevation: 4,
      icon: Image.asset(
        'assets/alerts/sad.png',
        height: 100,
        width: 80,
      ),
      title: const Text('Apakah kamu ingin keluar?'),
      actions: [
        TextButton(
            style: ButtonStyle(
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: const BorderSide(width: 2, color: Colors.red),
                ),
              ),
            ),
            onPressed: () async {
              Navigator.pushNamedAndRemoveUntil(
                context,
                LoginScreen.routeName,
                (Route<dynamic> route) => false,
              );
            },
            child: const Text(
              'Iya',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            )),
        TextButton(
            style: ButtonStyle(
              backgroundColor: const WidgetStatePropertyAll(Color(0xff43936C)),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Tidak',
              style: TextStyle(color: Colors.white),
            )),
      ],
    );
  }
}
