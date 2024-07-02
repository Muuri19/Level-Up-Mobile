class AppRoutes {
  static const String splashScreen = '/splash_screen';
  static const String loginScreen = '/login_screen';
  static const String registerScreen = '/register_screen';
  static const String home = '/layout_screen';
  static const String dashboard = '/dashboard_screen';

  // PRESENSI
  static const String presensi = '/presensi_screen';
  static const String condition = 'presensi_screen/condition';
  static const String location = 'presensi_screen/condition/location';
  static const String activity = 'presensi_screen/condition/location/activity';
  static const String capture = 'presensi_screen/condition/location/activity/capture';
  static const String history = 'presensi_screen/history';
  static const String detail = 'presensi_screen/history/detail';
  

  // OKR
  static const String okr = '/okr_screen';
  static const String detailSprint = '/okr_screen/detail_sprint_screen';
  static const String addSprint = '/okr_screen/addSprint';
  static const String addTask = '/okr_screen/detail_sprint_screen/add_task';

  // PROFILE
  static const String profile = '/profile_screen';
  static const String myProfile = '/profile_screen/my_profile';
  static const String termsService = '/profile_screen/terms_service';
  static const String privacyPolicy = '/profile_screen/privacy_policy';
  static const String setting = '/profile_screen/setting';

  //TEST
  static const String test = '/test';
}
