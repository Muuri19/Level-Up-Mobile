import 'package:flutter/material.dart';
import 'package:level_up/src/ui/screens/auth/login_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/utils/constants.dart';

class AlertLogout extends StatelessWidget {
  const AlertLogout({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      backgroundColor: Colors.white,
      elevation: 4,
      title: const Center(
        child: Text(
          'Konfirmasi?',
        ),
      ),
      titleTextStyle: const TextStyle(
          color: Color(0xff3085FE), fontWeight: FontWeight.bold, fontSize: 20),
      content: const Text(
        'Apakah Anda yakin ingin keluar dari aplikasi ini?',
        textAlign: TextAlign.center,
      ),
      contentTextStyle: const TextStyle(
        color: Colors.black,
      ),
      actions: [
        SizedBox(
          width: double.infinity,
          child: TextButton(
              style: ButtonStyle(
                backgroundColor: const WidgetStatePropertyAll(Color(0xff3085FE)),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              onPressed: () async {
                final navigator = Navigator.of(context);
                try {
                  await supabase.auth.signOut();
                  navigator.pushNamedAndRemoveUntil(
                      LoginScreen.routeName, (Route<dynamic> route) => false);
                } on AuthException catch (error) {
                  context.showErrorSnackBar(message: error.message);
                } catch (error) {
                  context.showErrorSnackBar(
                      message: 'Unexpected error occurred');
                }
              },
              child: const Text(
                'Ya',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
        ),
        SizedBox(
          width: double.infinity,
          child: TextButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xff3085FE)),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Tidak',
                style: TextStyle(color: Color(0xff3085FE)),
              )),
        ),
      ],
    );
  }
}
