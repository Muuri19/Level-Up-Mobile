import 'package:flutter/material.dart';
import 'package:level_up/src/common/color_style.dart';
import 'package:level_up/src/config/app_routes.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicy extends StatelessWidget {
  static const routeName = AppRoutes.privacyPolicy;
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse('https://level-up.id/privacy-policy');

     Future<void> _lauchUrlPrivacyPolicy() async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
    return Scaffold(
      backgroundColor: bgTermsService,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Privacy Policy',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Level Up dapat melakukan perubahan Kebijakan Privasi sewaktu-waktu. Oleh karena itu, kami menghimbau agar Anda terus memeriksa Kebijakan Privasi kami untuk mengetahui segala perubahan yang ada.',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Colors.transparent),
                        side: WidgetStatePropertyAll(
                            BorderSide(width: 1, color: Colors.white))),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 50,
                      child: const Center(
                        child: Text(
                          'Learn More',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    onPressed: () {
                      _lauchUrlPrivacyPolicy();
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
