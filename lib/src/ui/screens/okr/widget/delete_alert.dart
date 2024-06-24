import 'package:flutter/material.dart';
import 'package:level_up/src/common/color_style.dart';

class DeleteAlert extends StatelessWidget {
  const DeleteAlert({super.key});

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
              'assets/okr/failed.png',
              width: 75,
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Are you sure?',
              style: TextStyle(color: Color(0xffD92D20), fontSize: 24),
            ),
            const Text(
              'Because you cannot recover deleted data after this',
              style: TextStyle(color: Color(0xff616161), fontSize: 12),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 40),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: greyColor),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text(
                      "Kembali",
                      style: TextStyle(color: greyColor),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 40),
                      backgroundColor: redColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text(
                      "Delete",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
