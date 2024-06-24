import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:level_up/src/common/color_style.dart';

class CardTasklist extends StatefulWidget {
  const CardTasklist({super.key});

  @override
  State<CardTasklist> createState() => _CardTasklistState();
}

class _CardTasklistState extends State<CardTasklist> {
  final List<Widget> _image = [
    CircleAvatar(child: Image.asset('assets/okr/profile-1.png')),
    CircleAvatar(child: Image.asset('assets/okr/profile-2.png')),
    CircleAvatar(child: Image.asset('assets/okr/profile-3.png')),
    CircleAvatar(child: Image.asset('assets/okr/profile-4.png')),
  ];

  final List<String> items = ['Not Started', 'On Progress', 'Done'];

  final Map<String, Color> itemColors = {
    'Not Started': greyColor,
    'On Progress': const Color(0xff3267E3),
    'Done': const Color(0xff43936C),
  };

  String selectedItem = 'Not Started';

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    return Container(
      width: widthScreen,
      decoration: BoxDecoration(
          color: const Color(0xffFAF8FF),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: greyColor)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Task List 1'), Icon(Icons.more_horiz_rounded)],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 20,
                  child: Row(
                    children: [
                      Icon(Icons.calendar_month_rounded),
                      SizedBox(
                        width: 8,
                      ),
                      Text('12/08/2022  ')
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                  child: Row(
                    children: [
                      const Icon(Icons.group),
                      const SizedBox(
                        width: 8,
                      ),
                      FlutterImageStack.widgets(
                        totalCount: _image.length,
                        itemRadius: 24,
                        itemCount: 3,
                        itemBorderWidth: 1,
                        children: _image,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: DropdownButtonFormField<String>(
                      dropdownColor: const Color(0xff43936C),
                      isDense: true,
                      isExpanded: true,
                      value: selectedItem,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: itemColors[selectedItem],
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color:
                                itemColors[selectedItem] ?? Colors.transparent,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color:
                                itemColors[selectedItem] ?? Colors.transparent,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color:
                                itemColors[selectedItem] ?? Colors.transparent,
                          ),
                        ),
                      ),
                      icon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.white,
                      ),
                      iconSize: 24,
                      elevation: 16,
                      style: const TextStyle(color: Colors.white),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedItem = newValue!;
                        });
                      },
                      items: items.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(value),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: const Text(
                          "Update Progress",
                          style: TextStyle(color: Colors.blue),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
