import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:level_up/src/config/app_routes.dart';
import 'package:level_up/src/ui/widgets/success_alert.dart';

class AddSprint extends StatefulWidget {
  static const routeName = AppRoutes.addSprint;
  const AddSprint({Key? key}) : super(key: key);

  @override
  _AddSprintState createState() => _AddSprintState();
}

List<String> list = <String>['A-Z', 'Tanggal', 'Ukuran', 'Katogori'];
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
final _formKey = GlobalKey<FormState>();

class _AddSprintState extends State<AddSprint> {
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
        title: const Text('Objective Key Result'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Add New Sprint'),
              const Text(
                  'Please fill in and complete the following questions to continue the process of adding a new sprint.'),
              const SizedBox(
                height: 15,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sprint',
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      DropdownButtonFormField2<String>(
                        dropdownStyleData: const DropdownStyleData(
                            maxHeight: 250,
                            decoration: BoxDecoration(color: Colors.white)),
                        isExpanded: true,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 8),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        hint: const Text(
                          'Nama Sprint Anda',
                        ),
                        items: listSprint
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                  ),
                                ))
                            .toList(),
                        validator: (value) {
                          if (value == null) {
                            return 'Please select sprint!.';
                          }
                          return null;
                        },
                        onChanged: (value) {},
                        onSaved: (value) {
                          selectedValue = value.toString();
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Start Date'),
                                const SizedBox(height: 8),
                                SizedBox(
                                  height: 40,
                                  child: TextField(
                                    controller: tanggalMulaiController,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                    ),
                                    readOnly: true,
                                    onTap: () async {
                                      DateTime? pickedDate =
                                          await showDatePicker(
                                        context: context,
                                        firstDate: DateTime(1950),
                                        lastDate: DateTime(2100),
                                        initialDate: DateTime.now(),
                                      );
                                      if (pickedDate != null) {
                                        String formattedDate =
                                            DateFormat('dd-MM-yyyy')
                                                .format(pickedDate);
                                        setState(() {
                                          tanggalMulaiController.text =
                                              formattedDate;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('End Date'),
                                const SizedBox(height: 8),
                                SizedBox(
                                  height: 40,
                                  child: TextField(
                                    controller: tanggalSelesaiController,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                    ),
                                    readOnly: true,
                                    onTap: () async {
                                      DateTime? pickedDate =
                                          await showDatePicker(
                                        context: context,
                                        firstDate: DateTime(1950),
                                        lastDate: DateTime(2100),
                                        initialDate: DateTime.now(),
                                      );
                                      if (pickedDate != null) {
                                        String formattedDate =
                                            DateFormat('dd-MM-yyyy')
                                                .format(pickedDate);
                                        setState(() {
                                          tanggalSelesaiController.text =
                                              formattedDate;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Objective',
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Type something here',
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.blue,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.green,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          contentPadding: const EdgeInsetsDirectional.fromSTEB(
                              16, 24, 16, 12),
                        ),
                        maxLines: 8,
                        minLines: 6,
                      ),
                    ],
                  )),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(100, 40),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xffC2C2C2)),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text(
                        "Kembali",
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(100, 40),
                        backgroundColor: const Color(0xff4C4DDC),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text(
                        "Kirim",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () async {
                        bool? result = await showDialog<bool>(
                          context: context,
                          builder: (context) => const SuccessAlert(),
                        );

                        if (result == true) {
                          Navigator.pop(context);
                        }
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
