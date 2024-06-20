import 'dart:io';
import 'package:flutter/material.dart';
import 'package:level_up/src/config/app_routes.dart';
import 'package:level_up/src/ui/screens/login_screen.dart';
import 'package:level_up/src/ui/screens/profile/my_profile_screen.dart';
import 'package:level_up/src/ui/screens/profile/setting_screen.dart';
import '../../../core/widgets/logout_alert_widget.dart';
import '../../../core/widgets/onprogress_widget.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = AppRoutes.profile;
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 66,
            ),
            SizedBox(
              height: 180,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.green,
                          backgroundImage:
                              _image != null ? FileImage(_image!) : null,
                          child: _image == null
                              ? const Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 50,
                                )
                              : null,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => const AlertFeature());
                            },
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Ikrom'),
                    const Text('Lead UI/UX Designer')
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color(0xff3085FE)),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 50,
                child: const Center(
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: SizedBox(
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, MyProfileScreen.routeName);
                      },
                      title: const Text('My Profile'),
                      leading: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: const Color(0xffD9D9D9).withOpacity(0.25),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.person_outline,
                            color: Colors.black,
                            size: 17,
                          ),
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                      ),
                    ),
                    const Divider(
                      height: 15,
                      color: Color(0xffC6C6C6),
                      indent: 15,
                      endIndent: 20,
                      thickness: 0.2,
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, SettingScreen.routeName);
                      },
                      title: const Text('Settings'),
                      leading: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: const Color(0xffD9D9D9).withOpacity(0.25),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.settings_outlined,
                            color: Colors.black,
                            size: 17,
                          ),
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                      ),
                    ),
                    const Divider(
                      height: 15,
                      color: Color(0xffC6C6C6),
                      indent: 15,
                      endIndent: 20,
                      thickness: 0.2,
                    ),
                    ListTile(
                      title: const Text('Terms & Service'),
                      leading: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: const Color(0xffD9D9D9).withOpacity(0.25),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.description_outlined,
                            color: Colors.black,
                            size: 17,
                          ),
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                      ),
                    ),
                    const Divider(
                      height: 15,
                      color: Color(0xffC6C6C6),
                      indent: 15,
                      endIndent: 20,
                      thickness: 0.2,
                    ),
                    ListTile(
                      title: const Text('Privacy Policy'),
                      leading: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: const Color(0xffD9D9D9).withOpacity(0.25),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.verified_user_outlined,
                            color: Colors.black,
                            size: 17,
                          ),
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                      ),
                    ),
                    const Divider(
                      height: 15,
                      color: Color(0xffC6C6C6),
                      indent: 15,
                      endIndent: 20,
                      thickness: 0.2,
                    ),
                    ListTile(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (_) => const AlertLogout(),
                            barrierDismissible: false);
                      },
                      title: const Text('Log out'),
                      titleTextStyle: const TextStyle(color: Colors.red),
                      leading: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: const Color(0xffEA4335).withOpacity(0.1),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.logout_rounded,
                            color: Colors.red,
                            size: 17,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  goToLogin() => Navigator.pushReplacementNamed(context, LoginScreen.routeName);
}
