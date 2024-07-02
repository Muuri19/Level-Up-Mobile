import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:level_up/src/common/color_style.dart';


import '../../../config/app_routes.dart';

class CaptureScreen extends StatefulWidget {
  static const routeName = AppRoutes.capture;
  const CaptureScreen({super.key});

  @override
  _CaptureScreenState createState() => _CaptureScreenState();
}

class _CaptureScreenState extends State<CaptureScreen> {
  void _showSuccessDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Successful Check Out!'),
            content: const Text('Your Check Out data has been successfully saved.'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: const Text('Ok'))
            ],
          );
        });
  }

  bool isFavorite = false;
  double edge = 24;
  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: widthScreen,
                  color: whiteColor,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: widthScreen,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: const Color(0xffDDE5E9)),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Container(
                                width: widthScreen,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        width: 2, color: Color(0xffDDE5E9)),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: widthScreen,
                                      height: 380,
                                      color: const Color(0xffD9D9D9),
                                      child: const Center(
                                        child: Icon(
                                          Icons.camera_alt_outlined,
                                          color: Color(0xffB0B0B0),
                                          size: 66,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    const Text(
                                      'Hari ini, 21 Juli 2023',
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    const Text(
                                      'SHIFT (08:00 - 17:00 WIB)',
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: widthScreen,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        width: 2, color: Color(0xffDDE5E9)),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        leading: Image.asset(
                                          'assets/presensi/checkin.png',
                                          width: 25,
                                          height: 25,
                                          fit: BoxFit.cover,
                                        ),
                                        title: const Text('Check in'),
                                        subtitle: const Text('--:-- WIB'),
                                        subtitleTextStyle:
                                            const TextStyle(color: Colors.green),
                                      ),
                                    ),
                                    const SizedBox(
                                        height: 50,
                                        child: VerticalDivider(
                                            width: 2,
                                            color: Color(0xffDDE5E9))),
                                    Expanded(
                                      child: ListTile(
                                        leading: Image.asset(
                                          'assets/presensi/checkout.png',
                                          width: 25,
                                          height: 25,
                                          fit: BoxFit.cover,
                                        ),
                                        title: const Text('Check Out'),
                                        subtitle: const Text('--:-- WIB'),
                                        subtitleTextStyle:
                                            const TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 16),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    minimumSize: WidgetStateProperty.all(
                                        const Size(double.infinity, 50)),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Ambil Gambar',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
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
                                  "Check In",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () => _showSuccessDialog(context)),
                          ],
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
