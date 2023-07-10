import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class PieChartWidget extends StatelessWidget {
  final List<PieChartData> data = [
    PieChartData('Category 1', 30),
    PieChartData('Category 2', 20),
    PieChartData('Category 3', 50),
  ];

  @override
  Widget build(BuildContext context) {
    List<charts.Series<PieChartData, String>> series = [
      charts.Series(
        id: 'Pie Chart',
        data: data,
        domainFn: (PieChartData sales, _) => sales.category,
        measureFn: (PieChartData sales, _) => sales.value,
        labelAccessorFn: (PieChartData sales, _) => '${sales.category}: ${sales.value}%',
      ),
    ];

    return charts.PieChart(
      series,
      animate: true,
      defaultRenderer: charts.ArcRendererConfig(
        arcRendererDecorators: [charts.ArcLabelDecorator()],
      ),
    );
  }
}

class PieChartData {
  final String category;
  final double value;

  PieChartData(this.category, this.value);
}
