import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../common/const/colors.dart';
import '../../data/test_range_data.dart';

class RangeAnnotationWidget extends StatefulWidget {
  @override
  State<RangeAnnotationWidget> createState() => _RangeAnnotationWidgetState();
}

class _RangeAnnotationWidgetState extends State<RangeAnnotationWidget> {
  // range annotation line chart data
  final List<TimeSeriesSales> data = generateData();
  final List<charts.RangeAnnotationSegment<DateTime>> annotations =
      generateAnnotations();

  @override
  Widget build(BuildContext context) {
    // range line data
    final seriesList = [
      charts.Series<TimeSeriesSales, DateTime>(
        id: 'Sales',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(PRIMARY_COLOR),
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: data,
      ),
    ];

    return Column(
      children: [
        SizedBox(
          height: 200,
          child: charts.TimeSeriesChart(
            seriesList,
            animate: true,
            dateTimeFactory: const charts.LocalDateTimeFactory(),
            behaviors: [
              charts.RangeAnnotation<DateTime>(
                annotations,
                defaultColor: charts.MaterialPalette.gray.shade300,
                defaultLabelAnchor: charts.AnnotationLabelAnchor.end,
                defaultLabelDirection: charts.AnnotationLabelDirection.vertical,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TimeSeriesSales {
  final DateTime time;
  final int sales;

  TimeSeriesSales(this.time, this.sales);
}
