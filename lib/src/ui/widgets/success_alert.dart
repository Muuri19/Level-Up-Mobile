import 'package:flutter/material.dart';

class SuccessAlert extends StatelessWidget {
  const SuccessAlert({super.key});

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
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/okr/success.png',
              width: 75,
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Saved successfully!!',
              style: TextStyle(color: Color(0xff43936C), fontSize: 24),
            ),
            const Text(
              'Your Personal Data & Profile has been successfully edited.',
              style: TextStyle(color: Color(0xff616161), fontSize: 12),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff43936C)),
                onPressed: () {
                  Navigator.pop(context, true);
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
