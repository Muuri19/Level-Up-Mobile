import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:level_up/src/config/app_routes.dart';
import 'package:level_up/src/ui/widgets/success_alert.dart';

class AddTask extends StatefulWidget {
  static const routeName = AppRoutes.addTask;
  const AddTask({Key? key}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
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
        title: const Text('Task List'),
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
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Task List',
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Key Result',
                      prefixIcon: Container(
                        padding: const EdgeInsets.all(
                            10), // Adjust padding for the icon
                        child: Image.asset(
                          'assets/okr/goal.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                    ),
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
                            const Text('Assign to'),
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
                                  DateTime? pickedDate = await showDatePicker(
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
                                  DateTime? pickedDate = await showDatePicker(
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
                        "Back",
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
                        "Send",
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
