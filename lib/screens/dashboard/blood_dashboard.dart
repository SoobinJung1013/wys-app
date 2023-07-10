import 'package:flutter/material.dart';
import 'package:wys_app/common/const/colors.dart';
import 'package:wys_app/components/calendar/calendar.dart';
import 'package:wys_app/components/charts/line_chart.dart';

import '../../components/bottomsheet/basic_bottom_sheet.dart';

class BloodChart extends StatelessWidget {
  const BloodChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SECOND_COLOR,
      floatingActionButton: renderFloatingActionButton(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 12.0),
              child: CalendarWidget(),
            ),

            Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white, // 배경색
                borderRadius: BorderRadius.circular(30.0), // 모서리 둥글게 설정
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: LineChartWidget(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 12.0,
                left: 20.0,
              ),
              child: Text(
                '평균 혈당 그래프',
                style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white, // 배경색
                borderRadius: BorderRadius.circular(30.0), // 모서리 둥글게 설정
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: LineChartWidget(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 12.0,
                left: 20.0,
              ),
              child: Text(
                '구간 혈당 그래프',
                style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white, // 배경색
                borderRadius: BorderRadius.circular(30.0), // 모서리 둥글게 설정
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: LineChartWidget(),
            ),
          ],
        ),
      ),
    );
  }

  FloatingActionButton renderFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (_) {
              return BasicBottomSheet();
            });
      },
      backgroundColor: Colors.white,
      child: Icon(
        Icons.chat_bubble_outline,
        color: Colors.black,
      ),
    );
  }
}
