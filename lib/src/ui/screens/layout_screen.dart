import 'package:flutter/material.dart';
import 'package:level_up/src/common/color_style.dart';
import 'package:level_up/src/config/app_routes.dart';
import 'package:level_up/src/core/widgets/platform_widget.dart';
import 'package:level_up/src/ui/screens/dashboard/dashboard_screen.dart';
import 'package:level_up/src/ui/screens/okr/okr_screen.dart';
import 'package:level_up/src/ui/screens/presensi/presensi_screen.dart';
import 'package:level_up/src/ui/screens/profile/profile_screen.dart';

class LayoutScreen extends StatefulWidget {
  static const routeName = AppRoutes.home;
  const LayoutScreen({super.key});

  @override
  _LayoutScreenState createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _bottomNavIndex = 0;

  final List<Widget> _listWidget = [
    const DashboardScreen(),
    const PresensiScreen(),
    const OkrScreen(),
    const ProfileScreen()
  ];

  final List<BottomNavigationBarItem> _bottomNavBarItems = [
    BottomNavigationBarItem(
        icon: const Icon(
          Icons.home_outlined,
          color: Colors.black,
        ),
        activeIcon: Icon(
          Icons.home_rounded,
          color: primaryColor,
        ),
        label: 'Dashboard',
        backgroundColor: Colors.white),
    BottomNavigationBarItem(
        icon: const Icon(
          Icons.insert_chart_outlined_rounded,
          color: Colors.black,
        ),
        activeIcon: Icon(
          Icons.insert_chart_rounded,
          color: primaryColor,
        ),
        label: 'Presensi',
        backgroundColor: Colors.white),
    BottomNavigationBarItem(
        icon: const Icon(
          Icons.calendar_month_outlined,
          color: Colors.black,
        ),
        activeIcon: Icon(
          Icons.calendar_month_rounded,
          color: primaryColor,
        ),
        label: 'Okr',
        backgroundColor: Colors.white),
    BottomNavigationBarItem(
        icon: const Icon(
          Icons.person_outline,
          color: Colors.black,
        ),
        activeIcon: Icon(
          Icons.person,
          color: primaryColor,
        ),
        label: 'Profile',
        backgroundColor: Colors.white),
  ];

  void _onBottomNavTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      body: _listWidget[_bottomNavIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Colors.white,
            currentIndex: _bottomNavIndex,
            items: _bottomNavBarItems,
            onTap: _onBottomNavTapped,
          ),
        ),
      ),
    );
  }

  // Widget _buildIos(BuildContext context) {
  //   return CupertinoTabScaffold(
  //     tabBar: CupertinoTabBar(
  //       items: _bottomNavBarItems,
  //     ),
  //     tabBuilder: (context, index) {
  //       return _listWidget[index];
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(androidBuilder: _buildAndroid);
  }
}
