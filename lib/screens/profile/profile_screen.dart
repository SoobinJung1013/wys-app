import 'package:flutter/material.dart';

import '../../components/appbar/app_bar_drawer.dart';
import '../../common/const/colors.dart';
import '../../components/appbar/my_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: SECOND_COLOR,
        appBar: MyAppBar(title: 'Profile',),
        drawer: AppDrawer(),
        // floatingActionButton: renderFloatingActionButton(context),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/doctor.png'),
                ),
                SizedBox(height: 20),
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text('johndoe@example.com'),
                Text('123-456-7890'),
                Text('123 Main Street, City, Country'),
                Text('January 1, 1990'),
                Text('남성'),
                SizedBox(height: 20),
                Text('안녕하세요! 반갑습니다.'),
              ],
            ),
          ),
        ),
    );
  }
}
