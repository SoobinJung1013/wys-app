import 'package:charts_flutter/flutter.dart' as charts;

import '../components/charts/range_annotation_line_chart.dart';

List<TimeSeriesSales> generateData() {
  return [
    TimeSeriesSales(DateTime(2022, 1, 1), 5),
    TimeSeriesSales(DateTime(2022, 2, 1), 25),
    TimeSeriesSales(DateTime(2022, 3, 1), 100),
    TimeSeriesSales(DateTime(2022, 4, 1), 75),
  ];
}


List<charts.RangeAnnotationSegment<DateTime>> generateAnnotations() {
  return [
    charts.RangeAnnotationSegment<DateTime>(
      DateTime(2022, 2, 15),
      DateTime(2022, 3, 15),
      charts.RangeAnnotationAxisType.domain,
      color: charts.MaterialPalette.red.shadeDefault.lighter,
    ),
  ];
}