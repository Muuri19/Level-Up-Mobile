import 'package:flutter/material.dart';
import 'package:level_up/src/ui/screens/okr/add_task.dart';
import 'package:level_up/src/ui/screens/okr/widget/card_tasklist.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../common/color_style.dart';

class KeyResult extends StatelessWidget {
  const KeyResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    final widthScreen = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        width: widthScreen,
        decoration: BoxDecoration(
            color: whiteColor,
            border: Border.all(width: 1, color: greyColor),
            borderRadius: BorderRadius.circular(10)),
        child: Theme(
          data: theme,
          child: ExpansionTile(
            childrenPadding: const EdgeInsets.all(8),
            iconColor: Colors.black,
            title: Row(
              children: [
                Image.asset(
                  'assets/okr/goal.png',
                  width: 20,
                  height: 20,
                ),
                const SizedBox(
                  width: 16,
                ),
                const Text(
                  'Key Result 1: Membuat Desain OKR',
                ),
              ],
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: LinearPercentIndicator(
                  backgroundColor: const Color(0xff6938EF).withOpacity(0.5),
                  animation: true,
                  lineHeight: 15,
                  animationDuration: 2000,
                  percent: 0.25,
                  center: const Text(
                    '25.0%',
                  ),
                  progressColor: const Color(0xff6938EF),
                )),
                const Icon(Icons.more_horiz_rounded)
              ],
            ),
            children: [
              const CardTasklist(),
              const SizedBox(
                height: 8.0,
              ),
              const CardTasklist(),
              const SizedBox(
                height: 8.0,
              ),
              const CardTasklist(),
              const SizedBox(
                height: 12.0,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AddTask.routeName);
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.add),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Task List')
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
