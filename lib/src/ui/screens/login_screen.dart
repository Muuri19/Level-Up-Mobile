import 'package:flutter/material.dart';

import '../../config/app_routes.dart';
import '../widgets/form_login.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = AppRoutes.loginScreen;
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final fullWidthContainer = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Container(
                  height: 80,
                  width: fullWidthContainer,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/login/background-levelup.png'),
                          fit: BoxFit.fill)),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome👋',
                        style: TextStyle(fontSize: 28),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Hello there, login to continue',
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      FormLoginView()
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
