import 'package:flutter/material.dart';

import '../../common/const/colors.dart';
import '../../components/bottomsheet/basic_bottom_sheet.dart';
import '../../components/calendar/calendar.dart';
import '../../components/charts/simple_line_chart.dart';

class CheckUpChart extends StatefulWidget {
  const CheckUpChart({super.key});

  @override
  State<CheckUpChart> createState() => _CheckUpChartState();
}

class _CheckUpChartState extends State<CheckUpChart> {
  // pie chart data
  // List<charts.Series<ChartData, String>> pieSeriesList = [];
  //
  // void _generatePieData() {
  //   final data = [
  //     ChartData('A', 30),
  //     ChartData('B', 40),
  //     ChartData('C', 15),
  //     ChartData('D', 10),
  //     ChartData('E', 5),
  //   ];
  //
  //   pieSeriesList = [
  //     charts.Series<ChartData, String>(
  //       id: 'chartData',
  //       domainFn: (ChartData data, _) => data.category,
  //       measureFn: (ChartData data, _) => data.value,
  //       data: data,
  //       labelAccessorFn: (ChartData row, _) => '${row.category}: ${row.value}',
  //     )
  //   ];
  // }
  //
  // @override
  // void initState() {
  //   _generatePieData();
  //   super.initState();
  // }

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
            // Container(
            //   margin: EdgeInsets.all(16.0),
            //   padding: EdgeInsets.all(16.0),
            //   decoration: BoxDecoration(
            //     color: Colors.white, // 배경색
            //     borderRadius: BorderRadius.circular(30.0), // 모서리 둥글게 설정
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey.withOpacity(0.5),
            //         spreadRadius: 2,
            //         blurRadius: 5,
            //         offset: Offset(0, 3),
            //       ),
            //     ],
            //   ),
            //   child: PieChartWidget(pieSeriesList),
            // ),
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

class ChartData {
  final String category;
  final int value;

  ChartData(this.category, this.value);
}
