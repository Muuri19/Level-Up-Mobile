import 'package:flutter/material.dart';
import 'package:level_up/src/common/color_style.dart';
import 'package:level_up/src/config/app_routes.dart';
import 'package:level_up/src/data/enum/condition_enum.dart';
import 'package:level_up/src/ui/screens/presensi/activity_screen.dart';

class LocationScreen extends StatefulWidget {
  static const routeName = AppRoutes.location;
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  ConditionEnum? _condition = ConditionEnum.healthy;

  @override
  Widget build(BuildContext context) {
    final widhtScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/presensi/map.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 16, // Ubah nilai ini sesuai kebutuhan Anda
              left: (MediaQuery.of(context).size.width / 2) -
                  62.5, // Menyesuaikan posisi horizontal ke tengah
              child: Container(
                height: 47,
                width: 125,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: const Color(0xff818181)),
                    color: const Color(0xffFBFBFB)),
                child: const Center(
                  child: Text('Location'),
                ),
              ),
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
                        const Text(
                            'Jl. Sukabirus, No.13, Setiabudi, Kota Jakarta Selatan, DKI Jakarta, 31214'),
                        const SizedBox(
                          height: 15.0,
                        ),
                        const Text('Where is your current location?'),
                        const SizedBox(
                          height: 14,
                        ),
                        Container(
                          width: widhtScreen,
                          height: 56,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: greyColor),
                              borderRadius: BorderRadius.circular(10)),
                          child: RadioListTile(
                              title: const Text('WFO'),
                              value: ConditionEnum.healthy,
                              groupValue: _condition,
                              secondary: Image.asset(
                                'assets/presensi/wfo.png',
                                width: 30,
                                height: 30,
                              ),
                              onChanged: (ConditionEnum? value) {
                                setState(() {
                                  _condition = value;
                                });
                              }),
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Container(
                          width: widhtScreen,
                          height: 56,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: greyColor),
                              borderRadius: BorderRadius.circular(10)),
                          child: RadioListTile(
                              title: const Text('WFH'),
                              value: ConditionEnum.unwell,
                              groupValue: _condition,
                              secondary: Image.asset(
                                'assets/presensi/wfh.png',
                                width: 30,
                                height: 30,
                              ),
                              onChanged: (ConditionEnum? value) {
                                setState(() {
                                  _condition = value;
                                });
                              }),
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Container(
                          width: widhtScreen,
                          height: 56,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: greyColor),
                              borderRadius: BorderRadius.circular(10)),
                          child: RadioListTile(
                              title: const Text('WFA'),
                              value: ConditionEnum.sick,
                              groupValue: _condition,
                              secondary: Image.asset(
                                'assets/presensi/wfa.png',
                                width: 30,
                                height: 30,
                              ),
                              onChanged: (ConditionEnum? value) {
                                setState(() {
                                  _condition = value;
                                });
                              }),
                        ),
                        const SizedBox(
                          height: 34,
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
                                  Navigator.pushNamed(
                                      context, ActivityScreen.routeName);
                                }),
                          ],
                        )
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
