import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../common/const/colors.dart';
import '../../data/test_bar_data.dart';

class GroupedBarChartWidget extends StatefulWidget {

  @override
  State<GroupedBarChartWidget> createState() => _GroupedBarChartWidgetState();
}

class _GroupedBarChartWidgetState extends State<GroupedBarChartWidget> {
  @override
  Widget build(BuildContext context) {
    final List<charts.Series<dynamic, String>> barSeriesList = [
      charts.Series<dynamic, String>(
        id: 'Sales',
        domainFn: (dynamic sales, _) => sales.year,
        measureFn: (dynamic sales, _) => sales.sales,
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(PRIMARY_COLOR),
        data: generateSalesData(), // create data
      ),
      charts.Series<dynamic, String>(
        id: 'Expenses',
        domainFn: (dynamic expenses, _) => expenses.year,
        measureFn: (dynamic expenses, _) => expenses.expenses,
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(SECOND_COLOR),
        data: generateExpensesData(), // create data
      ),
    ];

    return Column(
      children: [
        SizedBox(
          height: 200,
          child: charts.BarChart(
            barSeriesList,
            animate: true,
            vertical: false,
            barGroupingType: charts.BarGroupingType.grouped,
            behaviors: [
              charts.SeriesLegend(),
            ],
          ),
        ),
      ],
    );
  }
}
