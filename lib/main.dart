import 'package:flutter/material.dart';
import 'package:level_up/init_supabase.dart';
import 'package:level_up/src/config/app_routes.dart';
import 'package:level_up/src/config/app_themes.dart';
import 'package:level_up/src/ui/screens/dashboard/dashboard_screen.dart';
import 'package:level_up/src/ui/screens/layout_screen.dart';
import 'package:level_up/src/ui/screens/auth/login_screen.dart';
import 'package:level_up/src/ui/screens/okr/add_task.dart';
import 'package:level_up/src/ui/screens/okr/detail_sprint_screen.dart';
import 'package:level_up/src/ui/screens/okr/okr_screen.dart';
import 'package:level_up/src/ui/screens/presensi/presensi_screen.dart';
import 'package:level_up/src/ui/screens/profile/my_profile_screen.dart';
import 'package:level_up/src/ui/screens/profile/privacy_policy.dart';
import 'package:level_up/src/ui/screens/profile/profile_screen.dart';
import 'package:level_up/src/ui/screens/profile/setting_screen.dart';
import 'package:level_up/src/ui/screens/profile/terms_and_service.dart';
import 'package:level_up/src/ui/screens/auth/register_screen.dart';
import 'package:level_up/src/ui/screens/splash_screen.dart';

import 'src/ui/screens/okr/add_sprint.dart';

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
        RegisterScreen.routeName: (context) => const RegisterScreen(),

        // MAIN
        LayoutScreen.routeName: (context) => const LayoutScreen(),
        DashboardScreen.routeName: (context) => const DashboardScreen(),
        PresensiScreen.routeName: (context) => const PresensiScreen(),

        // OKR
        OkrScreen.routeName: (context) => const OkrScreen(),
        DetailSprintScreen.routeName: (context) => const DetailSprintScreen(),
        AddSprint.routeName: (context) => const AddSprint(),
        AddTask.routeName:  (context) => const AddTask(),

        // PROFILE
        ProfileScreen.routeName: (context) => const ProfileScreen(),
        MyProfileScreen.routeName: (context) => const MyProfileScreen(),
        TermsAndService.routeName: (context) => const TermsAndService(),
        PrivacyPolicy.routeName: (context) => const PrivacyPolicy(),
        SettingScreen.routeName: (context) => SettingScreen(),
      },
    );
  }
}
