import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:level_up/src/common/color_style.dart';
import 'package:level_up/src/config/app_routes.dart';
import 'package:level_up/src/core/utils/notification_helper.dart';
import 'package:level_up/src/core/widgets/platform_widget.dart';
import 'package:level_up/src/ui/screens/dashboard/dashboard_screen.dart';
import 'package:level_up/src/ui/screens/okr/okr_screen.dart';
import 'package:level_up/src/ui/screens/penilaian_360/ratings_screen.dart';
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
    const RatingsScreen(),
    const ProfileScreen()
  ];

  final List<BottomNavigationBarItem> _bottomNavBarItems = [
    BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/navigation/inactive/home.svg'),
        activeIcon: SvgPicture.asset('assets/navigation/active/home.svg'),
        label: 'Home',
        backgroundColor: Colors.white),
    BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/navigation/inactive/presensi.svg'),
        activeIcon: SvgPicture.asset('assets/navigation/active/presensi.svg'),
        label: 'Presensi',
        backgroundColor: Colors.white),
    BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/navigation/inactive/okr.svg'),
        activeIcon: SvgPicture.asset('assets/navigation/active/okr.svg'),
        label: 'Okr',
        backgroundColor: Colors.white),
    BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/navigation/inactive/ratings.svg'),
        activeIcon: SvgPicture.asset('assets/navigation/active/ratings.svg'),
        label: 'Rating',
        backgroundColor: Colors.white),
    BottomNavigationBarItem(
        icon: CircleAvatar(
          radius: 12.5,
          child: Text('M'),
        ),
        activeIcon: CircleAvatar(
          radius: 12.5,
          child: Text('S'),
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
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: primaryColor,
            unselectedItemColor: blackColor,
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
