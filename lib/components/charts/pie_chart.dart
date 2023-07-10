import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class PieChartWidget extends StatelessWidget {
  final List<charts.Series> seriesList;

  PieChartWidget(this.seriesList);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: charts.PieChart(
            seriesList,
            animate: true,
            animationDuration: Duration(milliseconds: 500),
            defaultRenderer: charts.ArcRendererConfig(
              arcRendererDecorators: [charts.ArcLabelDecorator()],
            ),
          ),
        ),
      ],
    );
  }
}
