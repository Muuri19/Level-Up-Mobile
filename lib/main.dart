import 'package:flutter/material.dart';
import 'package:level_up/init_supabase.dart';
import 'package:level_up/src/config/app_routes.dart';
import 'package:level_up/src/config/app_themes.dart';
import 'package:level_up/src/ui/screens/dashboard/dashboard_screen.dart';
import 'package:level_up/src/ui/screens/layout_screen.dart';
import 'package:level_up/src/ui/screens/login_screen.dart';
import 'package:level_up/src/ui/screens/okr/okr_screen.dart';
import 'package:level_up/src/ui/screens/presensi/presensi_screen.dart';
import 'package:level_up/src/ui/screens/profile/my_profile_screen.dart';
import 'package:level_up/src/ui/screens/profile/profile_screen.dart';
import 'package:level_up/src/ui/screens/profile/setting_screen.dart';
import 'package:level_up/src/ui/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initSupabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LEVEL UP',
      theme: AppThemes.defaultThema,
      initialRoute: AppRoutes.splashScreen,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        LayoutScreen.routeName: (context) => const LayoutScreen(),
        DashboardScreen.routeName: (context) => const DashboardScreen(),
        PresensiScreen.routeName: (context) => const PresensiScreen(),
        OkrScreen.routeName: (context) => const OkrScreen(),

        //PROFILE
        ProfileScreen.routeName: (context) => const ProfileScreen(),
        MyProfileScreen.routeName: (context) => const MyProfileScreen(),
        SettingScreen.routeName: (context) => SettingScreen(),
      },
    );
  }
}
