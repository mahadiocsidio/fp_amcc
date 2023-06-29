import 'package:amibike/pages/home_pages.dart';
import 'package:amibike/theme.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor1,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: backgroundColor2.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Profile',
                    style: whiteTextStyle.copyWith(
                      fontSize: 30,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(width: 30),
                  Image.asset('assets/profileUser.png', width: 120),
                  SizedBox(
                    width: 13,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sugeng Berkah ',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: whiteTextStyle.copyWith(
                              fontSize: 20, fontWeight: semiBold),
                        ),
                        Text('081234575999',
                            style: whiteTextStyle.copyWith(fontSize: 14)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
                width: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePages(),
                    ),
                  );
                },
                child: Text(
                  'Edit Profile',
                  style: whiteTextStyle2.copyWith(
                      fontSize: 17, fontWeight: semiBold),
                ),
                style: ElevatedButton.styleFrom(
                  primary: backgroundColor4,
                  minimumSize: Size(144, 44),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      menuItem(text: 'Email', icon: Icons.email),
                      menuItem(text: 'Riwayat Parkir', icon: Icons.history),
                      menuItem(text: 'Ulasan', icon: Icons.feedback),
                      menuItem(text: 'Pengaturan', icon: Icons.settings),
                      menuItem(text: 'Pusat Bantuan', icon: Icons.help),
                      menuItem(text: 'Hapus Akun', icon: Icons.delete),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class menuItem extends StatelessWidget {
  String text;
  IconData icon;
  menuItem({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: textColor1,
            width: 1,
          ),
        ),
      ),
      margin: EdgeInsets.only(top: 20),
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(width: 30),
                Icon(
                  icon,
                  color: textColor4,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  text,
                  style: whiteTextStyle.copyWith(fontSize: 18),
                ),
              ],
            ),
            Icon(
              Icons.chevron_right,
              color: textColor4,
            ),
          ],
        ),
      ),
    );
  }
}
