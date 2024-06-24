import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../config/app_routes.dart';

class MyProfileScreen extends StatelessWidget {
  static const routeName = AppRoutes.myProfile;
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionTile(
              iconColor: Colors.black,
              leading: const Icon(
                Icons.contacts,
                size: 20,
              ),
              title: const Text(
                'Kontak Anda',
              ),
              children: [
                const ListTile(
                  title: Text('Nomor Handphone'),
                  subtitle: Text('08123456789'),
                  leading: Icon(
                    Icons.call,
                    size: 20,
                  ),
                ),
                const ListTile(
                  title: Text('Email'),
                  subtitle: Text('giffarikholiq@gmail.com'),
                  leading: Icon(
                    Icons.mail,
                    size: 20,
                  ),
                ),
                ListTile(
                  title: const Text('Social Media'),
                  subtitle: Row(
                    children: [
                      SvgPicture.asset('assets/profile/linkedin.svg'),
                      const SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset('assets/profile/instagram.svg'),
                    ],
                  ),
                  leading: const Icon(
                    Icons.language,
                    size: 20,
                  ),
                ),
              ],
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              leading: Icon(
                Icons.phone_in_talk,
                size: 20,
              ),
              title: Text(
                'Kontak Dosen',
              ),
              children: [
                ListTile(
                  title: Text('Nama Dosen'),
                  subtitle: Text('Fatma Sari'),
                  leading: Icon(
                    Icons.call,
                    size: 20,
                  ),
                ),
                ListTile(
                  title: Text('Email Dosen'),
                  subtitle: Text('giffarikholiq@gmail.com'),
                  leading: Icon(
                    Icons.mail,
                    size: 20,
                  ),
                ),
              ],
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              leading: Icon(
                Icons.info_sharp,
                size: 20,
              ),
              title: Text(
                'Informasi Data Pribadi',
              ),
              children: [
                ListTile(
                  title: Text('NIK'),
                  subtitle: Text('12345678912'),
                  leading: Icon(
                    Icons.mail_rounded,
                    size: 20,
                  ),
                ),
                ListTile(
                  title: Text('Jenis Kelamin'),
                  subtitle: Text('Laki-Laki'),
                  leading: Icon(
                    Icons.person,
                    size: 20,
                  ),
                ),
                ListTile(
                  title: Text('Tempat Lahir'),
                  subtitle: Text('Bandung'),
                  leading: Icon(
                    Icons.location_on,
                    size: 20,
                  ),
                ),
                ListTile(
                  title: Text('Tanggal Lahir'),
                  subtitle: Text('12 Oktober 2000'),
                  leading: Icon(
                    Icons.event,
                    size: 20,
                  ),
                ),
                // AlAMAT DOMISILI
                ListTile(
                  title: Text('Provinsi'),
                  subtitle: Text('Jawa Barat'),
                  leading: Icon(
                    Icons.public,
                    size: 20,
                  ),
                ),
                ListTile(
                  title: Text('Kota'),
                  subtitle: Text('Bandung'),
                  leading: Icon(
                    Icons.public,
                    size: 20,
                  ),
                ),
                ListTile(
                  title: Text('Detail Alamat'),
                  subtitle: Text(
                      'Lorem ipsum dolor sit amet consectetur. Leo elementum ante ullamcorper morbi.'),
                  leading: Icon(
                    Icons.location_city,
                    size: 20,
                  ),
                ),
                // AlAMAT KTP
                ListTile(
                  title: Text('Provinsi'),
                  subtitle: Text('Jawa Barat'),
                  leading: Icon(
                    Icons.public,
                    size: 20,
                  ),
                ),
                ListTile(
                  title: Text('Kota'),
                  subtitle: Text('Bandung'),
                  leading: Icon(
                    Icons.public,
                    size: 20,
                  ),
                ),
                ListTile(
                  title: Text('Detail Alamat'),
                  subtitle: Text(
                      'Lorem ipsum dolor sit amet consectetur. Leo elementum ante ullamcorper morbi.'),
                  leading: Icon(
                    Icons.location_city,
                    size: 20,
                  ),
                ),
              ],
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              leading: Icon(
                Icons.contacts,
                size: 20,
              ),
              title: Text(
                'Informasi Lainnya',
              ),
              children: [
                ListTile(
                  title: Text('Memiliki Laptop?'),
                  subtitle: Text('Ya'),
                  leading: Icon(
                    Icons.laptop,
                    size: 20,
                  ),
                ),
                ListTile(
                  title: Text('Ukuran Kaos'),
                  subtitle: Text('XL'),
                  leading: Icon(
                    Icons.person_3_outlined,
                    size: 20,
                  ),
                ),
              ],
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              leading: Icon(
                Icons.school,
                size: 20,
              ),
              title: Text(
                'Education',
              ),
              children: [
                ListTile(
                  isThreeLine: true,
                  title: Text('Nama Universitas'),
                  subtitle:
                      Text('Telkom University\nD3 RPLA\nSemester : 6, IPK : 4'),
                ),
              ],
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              leading: Icon(
                Icons.verified,
                size: 20,
              ),
              title: Text(
                'Skill',
              ),
              children: [
                ListTile(
                  title: Text('Hard Skill'),
                ),
                ListTile(
                  title: Text('Soft Skill'),
                ),
              ],
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              leading: Icon(
                Icons.assignment_turned_in,
                size: 20,
              ),
              title: Text(
                'Lincense & Certification',
              ),
              children: [
                ListTile(
                  isThreeLine: true,
                  title: Text('Mobile Developer'),
                  subtitle: Text('Level Up\nIDLEV2132135'),
                ),
              ],
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              leading: Icon(
                Icons.work_history,
                size: 20,
              ),
              title: Text(
                'Experience',
              ),
              children: [
                ListTile(
                  isThreeLine: true,
                  title: Text('Mobile Developer'),
                  subtitle: Text('Level Up\nIDLEV2132135'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
