import 'package:flutter/material.dart';
import 'package:level_up/src/ui/screens/okr/add_sprint.dart';
import 'package:level_up/src/ui/screens/okr/detail_sprint_screen.dart';
import 'package:level_up/src/ui/screens/okr/widget/delete_alert.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../config/app_routes.dart';
import '../../../core/widgets/onprogress_widget.dart';

class OkrScreen extends StatefulWidget {
  static const routeName = AppRoutes.okr;
  const OkrScreen({Key? key}) : super(key: key);

  @override
  _OkrScreenState createState() => _OkrScreenState();
}

List<String> list = <String>[
  'Newest to oldest',
  'Oldest to newest',
  'A to Z',
  'Z to A'
];
final List<String> listSprint = [
  'Sprint #1',
  'Sprint #2',
  'Sprint #3',
  'Sprint #4',
  'Sprint #5',
  'Sprint #6',
  'Sprint #7',
  'Sprint #8',
  'Sprint #9',
  'Sprint #10',
  'Sprint #11',
  'Sprint #12',
  'Sprint #13',
  'Sprint #14',
  'Sprint #15',
  'Sprint #16',
  'Sprint #17',
  'Sprint #18',
  'Sprint #19',
  'Sprint #20',
];

String? selectedValue;

class _OkrScreenState extends State<OkrScreen> {
  String dropdownValue = list.first;
  TextEditingController tanggalMulaiController = TextEditingController();
  TextEditingController tanggalSelesaiController = TextEditingController();

  @override
  void initState() {
    tanggalMulaiController.text = "";
    tanggalSelesaiController.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OKR'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: const Color(0xffF5F5F5),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Objective Key Result',
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/okr/profile.png')),
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Ikrom'),
                            Text('Lead UI/UX Designer'),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.mail,
                            size: 18,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'ikromaulia@gmail.com',
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.call,
                            size: 18,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            '082280229022',
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '- SPRINT',
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, AddSprint.routeName);
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'New Sprint',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, DetailSprintScreen.routeName);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: const Color(0xffC2C2C2))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 10,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.amber),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        'SPRINT #8',
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          showDialog(
                                              context: context,
                                              builder: (context) =>
                                                  const AlertFeature());
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: const Color(0xff0074AB)),
                                          child: const Center(
                                            child: Icon(
                                              Icons.edit_square,
                                              color: Colors.white,
                                              size: 22,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showDialog(
                                              context: context,
                                              builder: (context) =>
                                                  const DeleteAlert());
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: const Color(0xffCB3A31)),
                                          child: const Center(
                                            child: Icon(
                                              Icons.delete_outline_rounded,
                                              color: Colors.white,
                                              size: 22,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_today,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text('01/08/2022 - 12/08/2022')
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              LinearPercentIndicator(
                                backgroundColor:
                                    const Color(0xff6938EF).withOpacity(0.5),
                                animation: true,
                                lineHeight: 15,
                                animationDuration: 2000,
                                percent: 0.25,
                                center: const Text(
                                  '25.0%',
                                ),
                                progressColor: const Color(0xff6938EF),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: const Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Upcoming Sprint',
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              height: 2,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: const Color(0xffC2C2C2))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.amber),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'SPRINT #8',
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: const Color(0xff0074AB)),
                                      child: const Center(
                                        child: Icon(
                                          Icons.edit_square,
                                          color: Colors.white,
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: const Color(0xffCB3A31)),
                                      child: const Center(
                                        child: Icon(
                                          Icons.delete_outline_rounded,
                                          color: Colors.white,
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text('01/08/2022 - 12/08/2022')
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            LinearPercentIndicator(
                              backgroundColor:
                                  const Color(0xff6938EF).withOpacity(0.5),
                              animation: true,
                              lineHeight: 15,
                              animationDuration: 2000,
                              percent: 0.5,
                              center: const Text(
                                '50.0%',
                              ),
                              progressColor: const Color(0xff6938EF),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: const Color(0xffC2C2C2))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.amber),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'SPRINT #8',
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: const Color(0xff0074AB)),
                                      child: const Center(
                                        child: Icon(
                                          Icons.edit_square,
                                          color: Colors.white,
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: const Color(0xffCB3A31)),
                                      child: const Center(
                                        child: Icon(
                                          Icons.delete_outline_rounded,
                                          color: Colors.white,
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text('01/08/2022 - 12/08/2022')
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            LinearPercentIndicator(
                              backgroundColor:
                                  const Color(0xff6938EF).withOpacity(0.5),
                              animation: true,
                              lineHeight: 15,
                              animationDuration: 2000,
                              percent: 0.8,
                              center: const Text(
                                '80.0%',
                              ),
                              progressColor: const Color(0xff6938EF),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('HISTORY SPRINT'),
                              const Text(
                                  'Semua informasi terkait Tambah, Edit dan Hapus Sprint.'),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: DropdownButtonFormField<String>(
                                      focusColor: const Color(0xffC2C2C2),
                                      value: dropdownValue,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.0)),
                                          borderSide: BorderSide(
                                              color: Color(
                                                  0xffC2C2C2)), // Warna merah saat tidak di-select
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.0)),
                                          borderSide: BorderSide(
                                              color: Color(
                                                  0xffC2C2C2)), // Warna merah saat tidak di-select
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.0)),
                                          borderSide: BorderSide(
                                              color: Color(
                                                  0xffC2C2C2)), // Warna merah saat di-select
                                        ),
                                      ),
                                      icon: const Icon(
                                          Icons.arrow_drop_down_rounded),
                                      iconSize: 24,
                                      style:
                                          const TextStyle(color: Colors.black),
                                      dropdownColor: Colors.white,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownValue = newValue!;
                                        });
                                      },
                                      items: list.map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(value),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                  const Spacer()
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: const Color(0xffC2C2C2))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.amber),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          'SPRINT #8',
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: const Color(0xffCB3A31)),
                                      child: const Center(
                                        child: Icon(
                                          Icons.delete_outline_rounded,
                                          color: Colors.white,
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_today,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text('01/08/2022 - 12/08/2022')
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                LinearPercentIndicator(
                                  backgroundColor:
                                      const Color(0xff6938EF).withOpacity(0.5),
                                  animation: true,
                                  lineHeight: 15,
                                  animationDuration: 2000,
                                  percent: 0.25,
                                  center: const Text(
                                    '25.0%',
                                  ),
                                  progressColor: const Color(0xff6938EF),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: const Color(0xffC2C2C2))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.amber),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          'SPRINT #8',
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: const Color(0xffCB3A31)),
                                      child: const Center(
                                        child: Icon(
                                          Icons.delete_outline_rounded,
                                          color: Colors.white,
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_today,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text('01/08/2022 - 12/08/2022')
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                LinearPercentIndicator(
                                  backgroundColor:
                                      const Color(0xff6938EF).withOpacity(0.5),
                                  animation: true,
                                  lineHeight: 15,
                                  animationDuration: 2000,
                                  percent: 0.25,
                                  center: const Text(
                                    '25.0%',
                                  ),
                                  progressColor: const Color(0xff6938EF),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: const Color(0xffC2C2C2))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.amber),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          'SPRINT #8',
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: const Color(0xffCB3A31)),
                                      child: const Center(
                                        child: Icon(
                                          Icons.delete_outline_rounded,
                                          color: Colors.white,
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_today,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text('01/08/2022 - 12/08/2022')
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                LinearPercentIndicator(
                                  backgroundColor:
                                      const Color(0xff6938EF).withOpacity(0.5),
                                  animation: true,
                                  lineHeight: 15,
                                  animationDuration: 2000,
                                  percent: 0.25,
                                  center: const Text(
                                    '25.0%',
                                  ),
                                  progressColor: const Color(0xff6938EF),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'HISTORY SPRINT',
                              ),
                              Text(
                                'Seluruh riwayat aktivitas OKR Anda akan tersimpan disini.',
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: const Row(
                                  children: [
                                    Expanded(
                                      child: Divider(
                                        height: 2,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        'Upcoming Sprint',
                                      ),
                                    ),
                                    Expanded(
                                      child: Divider(
                                        height: 2,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 16.0,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1,
                                        color: const Color(0xffC2C2C2))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      child: Image.asset('assets/okr/pp.png'),
                                    ),
                                    title: Text(
                                      'Menambahkan [Nama Mentee] sebagai assignee pada KR “Revisi Maskot”',
                                    ),
                                    subtitle: Text(
                                      '17:00 WIB by Yani Maria',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1,
                                        color: const Color(0xffC2C2C2))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      child: Image.asset('assets/okr/pp.png'),
                                    ),
                                    title: Text(
                                      'Menambahkan [Nama Mentee] sebagai assignee pada KR “Revisi Maskot”',
                                    ),
                                    subtitle: Text(
                                      '17:00 WIB by Yani Maria',
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
