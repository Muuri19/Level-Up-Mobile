import 'package:flutter/material.dart';
import 'package:level_up/src/common/color_style.dart';
import 'package:level_up/src/config/app_routes.dart';
import 'package:level_up/src/ui/screens/presensi/capture_screen.dart';

class ActivityScreen extends StatelessWidget {
  static const routeName = AppRoutes.activity;
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 47,
                      width: 125,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(width: 1, color: const Color(0xff818181)),
                          color: const Color(0xffFBFBFB)),
                      child: const Center(
                        child: Text('Activity'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('What tasks will you do today?'),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  maxLines: 20,
                  minLines: 20,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: greyColor, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: greyColor, width: 1)),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(150, 46),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xffC2C2C2)),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: const Text(
                          "Back",
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(150, 46),
                          backgroundColor: const Color(0xff4C4DDC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: const Text(
                          "Next",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, CaptureScreen.routeName);
                        }),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
