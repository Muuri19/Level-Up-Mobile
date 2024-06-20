import 'package:flutter/material.dart';

class AlertFeature extends StatelessWidget {
  const AlertFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/alerts/onprogress.png',
              width: 75,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Oops!',
              style: TextStyle(
                  color: Colors.yellow[900],
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'Sorry, this feature is not yet available. We are working hard to release it soon.',
              style: TextStyle(color: Color(0xff616161), fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[900]),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Oke',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
