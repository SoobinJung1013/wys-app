import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class BarChartWidget extends StatelessWidget {
  final List<BarChartData> data = [
    BarChartData('Category 1', 30),
    BarChartData('Category 2', 20),
    BarChartData('Category 3', 50),
  ];

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartData, String>> series = [
      charts.Series(
        id: 'Bar Chart',
        data: data,
        domainFn: (BarChartData sales, _) => sales.category,
        measureFn: (BarChartData sales, _) => sales.value,
      ),
    ];

    return charts.BarChart(
      series,
      animate: true,
    );
  }
}

class BarChartData {
  final String category;
  final int value;

  BarChartData(this.category, this.value);
}
