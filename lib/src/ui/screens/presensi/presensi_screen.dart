import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:level_up/src/common/color_style.dart';
import 'package:level_up/src/ui/screens/presensi/condition_screen.dart';
import 'package:level_up/src/ui/screens/presensi/history_presensi.dart';

import '../../../config/app_routes.dart';
import '../../../core/widgets/onprogress_widget.dart';

class PresensiScreen extends StatefulWidget {
  static const routeName = AppRoutes.presensi;
  const PresensiScreen({super.key});

  @override
  _PresensiScreenState createState() => _PresensiScreenState();
}

class _PresensiScreenState extends State<PresensiScreen> {
  bool isFavorite = false;
  double edge = 24;
  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Attedance'),
        centerTitle: true,
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, HistoryPresensi.routeName);
              },
              child: const Icon(Icons.history)),
          const SizedBox(
            width: 16,
          )
        ],
      ),
      body: SingleChildScrollView(
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
                      const Text(
                        'Selamat Pagi [Nama Mentee]',
                      ),
                      const Text(
                        'Let’s get to work and do your best for today!',
                      ),
                      const SizedBox(
                        height: 12,
                      ),
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
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          children: [
                                            const Text('Condition'),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Container(
                                              height: 55,
                                              width: 55,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 2, color: greyColor),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: const Center(
                                                child: Icon(Icons
                                                    .emoji_emotions_outlined),
                                              ),
                                            ),
                                            const Text('-')
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            const Text('Location'),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Container(
                                              height: 55,
                                              width: 55,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 2, color: greyColor),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: const Center(
                                                child: Icon(Icons.location_on),
                                              ),
                                            ),
                                            const Text('-')
                                          ],
                                        ),
                                      ],
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
                                    )
                                  ],
                                ),
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
                                          width: 2, color: Color(0xffDDE5E9))),
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
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, ConditionScreen.routeName);
                                },
                                style: ButtonStyle(
                                  minimumSize: WidgetStateProperty.all(
                                      const Size(double.infinity, 50)),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Check In',
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
                        height: 12,
                      ),
                      const Text('Aktivitas anda hari ini'),
                      TextFormField(
                        maxLines: 10,
                        minLines: 6,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: greyColor, width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: greyColor, width: 1)),
                        ),
                        inputFormatters: [LengthLimitingTextInputFormatter(20)],
                        buildCounter: (context,
                            {required currentLength,
                            required isFocused,
                            required maxLength}) {
                          return Row(
                            children: [
                              const Icon(Icons.error_outline),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Maksimal 255 karakter ($currentLength/20)',
                                semanticsLabel: 'character',
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
