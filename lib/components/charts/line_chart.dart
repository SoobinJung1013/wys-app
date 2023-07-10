import 'dart:math';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:wys_app/common/const/colors.dart';

class LineChartWidget extends StatefulWidget {
  @override
  _LineChartWidgetState createState() => _LineChartWidgetState();
}

class _LineChartWidgetState extends State<LineChartWidget> {
  List<charts.Series<TimeSeriesData, DateTime>>? seriesList;
  bool? animate;

  @override
  void initState() {
    super.initState();
    seriesList = _createSampleData();
    animate = true;
  }

  List<charts.Series<TimeSeriesData, DateTime>> _createSampleData() {
    final now = DateTime.now();
    final random = Random();

    final data = [
      TimeSeriesData(
          now.subtract(Duration(seconds: 10)), random.nextDouble() * 100),
      TimeSeriesData(
          now.subtract(Duration(seconds: 9)), random.nextDouble() * 100),
      TimeSeriesData(
          now.subtract(Duration(seconds: 8)), random.nextDouble() * 100),
      TimeSeriesData(
          now.subtract(Duration(seconds: 7)), random.nextDouble() * 100),
      TimeSeriesData(
          now.subtract(Duration(seconds: 6)), random.nextDouble() * 100),
      TimeSeriesData(
          now.subtract(Duration(seconds: 5)), random.nextDouble() * 100),
      TimeSeriesData(
          now.subtract(Duration(seconds: 4)), random.nextDouble() * 100),
      TimeSeriesData(
          now.subtract(Duration(seconds: 3)), random.nextDouble() * 100),
      TimeSeriesData(
          now.subtract(Duration(seconds: 2)), random.nextDouble() * 100),
      TimeSeriesData(
          now.subtract(Duration(seconds: 1)), random.nextDouble() * 100),
    ];

    return [
      charts.Series<TimeSeriesData, DateTime>(
        id: 'Series 1',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(PRIMARY_COLOR),
        domainFn: (TimeSeriesData data, _) => data.time,
        measureFn: (TimeSeriesData data, _) => data.value,
        data: data,
        // colorFn: (_, __) => charts.ColorUtil.fromDartColor(PRIMARY_COLOR),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: charts.TimeSeriesChart(
            seriesList!,
            animate: animate,
            defaultRenderer:
                charts.LineRendererConfig(includeArea: true, stacked: false),
          ),
        ),
      ],
    );
  }
}

class TimeSeriesData {
  final DateTime time;
  final double value;

  TimeSeriesData(this.time, this.value);
}
