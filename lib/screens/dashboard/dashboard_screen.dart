import 'package:flutter/material.dart';
import 'package:wys_app/common/const/colors.dart';
import 'package:wys_app/screens/dashboard/blood_subscreen.dart';
import 'package:wys_app/screens/dashboard/checkup_subscreen.dart';

import '../../components/appbar/app_bar_drawer.dart';
import '../../components/appbar/my_app_bar.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SECOND_COLOR,
      appBar: MyAppBar(
        title: 'Chart',
      ),
      drawer: AppDrawer(),
      // floatingActionButton: renderFloatingActionButton(context),
      body: DefaultTabController(
        length: 2, // 탭의 개수
        child: Column(
          children: [
            Container(
              color: SECOND_COLOR,
              // color: FOURTH_COLOR,// 배경색
              child: TabBar(
                labelColor: Colors.white, // 글자색
                labelStyle: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                ), // 글자 크기// 글자 크기
                unselectedLabelColor: Colors.white70,
                unselectedLabelStyle: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                ),// 선택되지 않은 글자색
                indicatorColor: Colors.white, // 언더바 색상
                indicatorWeight: 2.0, // 언더바 두께
                tabs: [
                  Tab(text: '혈당 차트'),
                  Tab(text: '검진 차트'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    child: BloodChart(),
                  ),
                  Container(
                    child: CheckUpChart(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
