import 'package:flutter/material.dart';
import 'package:level_up/src/common/color_style.dart';
import 'package:level_up/src/ui/screens/okr/widget/add_key_result.dart';

import 'package:level_up/src/ui/screens/okr/widget/card_tasklist.dart';
import 'package:level_up/src/ui/screens/okr/widget/key_result.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../config/app_routes.dart';

class DetailSprintScreen extends StatefulWidget {
  static const routeName = AppRoutes.detailSprint;
  const DetailSprintScreen({Key? key}) : super(key: key);

  @override
  State<DetailSprintScreen> createState() => _DetailSprintScreenState();
}

class _DetailSprintScreenState extends State<DetailSprintScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Objective Key Result'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sprint #3'),
                    Text('Level Up Mobile App'),
                    Text('Periode: 10 - 21 Juni 2024')
                  ],
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: const Color(0xffEDEDED),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                    child: Icon(
                      Icons.more_horiz_rounded,
                      color: Color(0xff404040),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20), // Add space between widgets
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return KeyResult();
                },
              ),
            ),
            // Add space between ListView and AddKeyResult
            AddKeyResult(),
          ],
        ),
      ),
    );
  }
}
