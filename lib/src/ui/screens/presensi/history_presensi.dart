import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:level_up/src/config/app_routes.dart';
import 'package:level_up/src/ui/screens/presensi/detail_presensi.dart';

class HistoryPresensi extends StatefulWidget {
  static const routeName = AppRoutes.history;
  const HistoryPresensi({Key? key}) : super(key: key);

  @override
  State<HistoryPresensi> createState() => _HistoryPresensiState();
}

class _HistoryPresensiState extends State<HistoryPresensi> {
  // Declare the controllers here
  TextEditingController tanggalMulaiController = TextEditingController();
  TextEditingController tanggalSelesaiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('History Attendance'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(19.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text('Selected Date'),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: const TextStyle(color: Colors.black),
                      controller: tanggalMulaiController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      readOnly: true,
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2100),
                          initialDate: DateTime.now(),
                        );
                        if (pickedDate != null) {
                          String formattedDate =
                              DateFormat('dd MMMM yyyy').format(pickedDate);
                          setState(() {
                            tanggalMulaiController.text = formattedDate;
                          });
                        }
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      style: const TextStyle(color: Colors.black),
                      controller: tanggalSelesaiController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      readOnly: true,
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2100),
                          initialDate: DateTime.now(),
                        );
                        if (pickedDate != null) {
                          String formattedDate =
                              DateFormat('dd MMMM yyyy').format(pickedDate);
                          setState(() {
                            tanggalSelesaiController.text = formattedDate;
                          });
                        }
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, DetailPresensi.routeName);
                },
                child: Container(
                  height: 70,
                  width: widthScreen,
                  decoration: const BoxDecoration(
                      color: Color(0xff6938EF),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8))),
                  child: Container(
                    margin: const EdgeInsets.only(left: 12),
                    width: widthScreen,
                    height: 70,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                      border: Border(
                        top: BorderSide(width: 1, color: Color(0xffE2E8F0)),
                        right: BorderSide(width: 1, color: Color(0xffE2E8F0)),
                        bottom: BorderSide(width: 1, color: Color(0xffE2E8F0)),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Vertically center the rows
                        crossAxisAlignment: CrossAxisAlignment
                            .stretch, // Horizontally stretch the rows to match the container's width
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Check In'),
                              Text('31 June 2024, 08.00 WIB')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Check Out'),
                              Text('31 June 2024, 08.00 WIB')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 70,
                width: widthScreen,
                decoration: const BoxDecoration(
                    color: Color(0xff6938EF),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8))),
                child: Container(
                  margin: const EdgeInsets.only(left: 12),
                  width: widthScreen,
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                    border: Border(
                      top: BorderSide(width: 1, color: Color(0xffE2E8F0)),
                      right: BorderSide(width: 1, color: Color(0xffE2E8F0)),
                      bottom: BorderSide(width: 1, color: Color(0xffE2E8F0)),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Vertically center the rows
                      crossAxisAlignment: CrossAxisAlignment
                          .stretch, // Horizontally stretch the rows to match the container's width
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Check In'),
                            Text('31 June 2024, 08.00 WIB')
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Check Out'),
                            Text('31 June 2024, 08.00 WIB')
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              // Not Dicipline
              Container(
                height: 104,
                width: widthScreen,
                decoration: const BoxDecoration(
                    color: Color(0xffEA4335),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8))),
                child: Container(
                  margin: const EdgeInsets.only(left: 12),
                  width: widthScreen,
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                    border: Border(
                      top: BorderSide(width: 1, color: Color(0xffE2E8F0)),
                      right: BorderSide(width: 1, color: Color(0xffE2E8F0)),
                      bottom: BorderSide(width: 1, color: Color(0xffE2E8F0)),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Check In'),
                            Text('31 June 2024, 08.00 WIB')
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[Text('Check Out'), Text('-')],
                        ),
                        Container(
                          width: widthScreen,
                          height: 26,
                          decoration: BoxDecoration(
                              color: const Color(0xffFFFAF0),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Row(
                            children: <Widget>[
                              Icon(
                                Icons.warning_rounded,
                                color: Colors.yellow,
                              ),
                              Text(
                                'Not Dicipline',
                                style: TextStyle(color: Color(0xffED8936)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              // Not Dicipline
              Container(
                height: 104,
                width: widthScreen,
                decoration: const BoxDecoration(
                    color: Color(0xffEA4335),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8))),
                child: Container(
                  margin: const EdgeInsets.only(left: 12),
                  width: widthScreen,
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                    border: Border(
                      top: BorderSide(width: 1, color: Color(0xffE2E8F0)),
                      right: BorderSide(width: 1, color: Color(0xffE2E8F0)),
                      bottom: BorderSide(width: 1, color: Color(0xffE2E8F0)),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[Text('Check In'), Text('-')],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[Text('Check Out'), Text('-')],
                        ),
                        Container(
                          width: widthScreen,
                          height: 26,
                          decoration: BoxDecoration(
                              color: const Color(0xffFFFAF0),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Row(
                            children: <Widget>[
                              Icon(
                                Icons.warning_rounded,
                                color: Colors.yellow,
                              ),
                              Text(
                                'Not Dicipline',
                                style: TextStyle(color: Color(0xffED8936)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose the controllers when the widget is disposed
    tanggalMulaiController.dispose();
    tanggalSelesaiController.dispose();
    super.dispose();
  }
}
