import 'package:flutter/material.dart';
import 'package:level_up/src/config/app_routes.dart';

class DetailPresensi extends StatelessWidget {
  static const routeName = AppRoutes.detail;
  const DetailPresensi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Attendance'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text('Attendance'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text('Date: 31 June 2024'),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Check In'),
                            Text(
                              '08.00.00 WIB',
                              style: TextStyle(color: Color(0xff008F46)),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Check In'),
                            Text(
                              '17.00.00 WIB',
                              style: TextStyle(color: Color(0xffEB1D31)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Total:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('09.00.00'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Condition:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Healthy'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Location:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('WFO'),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    ' Jl. Sinar Jaya, Kec. Tegalsari, Semarang, Jawa Tengah, 31211',
                    style: TextStyle(color: Color(0xff6938EF)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Activity:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                      'Ipsum ad est ullamco culpa nulla duis excepteur nisi dolor esse do eu quis laboris. Commodo sunt ad qui magna occaecat. Fugiat adipisicing anim tempor magna aliquip culpa aliqua. Magna tempor incididunt anim voluptate exercitation eu do do nulla nostrud qui. Aliquip occaecat enim labore sit duis in sit duis cupidatat commodo adipisicing ea nulla esse. Quis tempor proident fugiat est laboris fugiat pariatur occaecat aliqua ad proident labore. Velit Lorem mollit voluptate non.')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
