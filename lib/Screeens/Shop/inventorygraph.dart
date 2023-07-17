import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:pureh20/Utils/Colors.dart';

class LineChartWidget extends StatelessWidget {
  final List<data> points;
  const LineChartWidget(this.points, {super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: LineChart(LineChartData(lineBarsData: [
        (LineChartBarData(
          spots: points.map((point) => FlSpot(point.x, point.y)).toList(),
          isCurved: true,
          aboveBarData: BarAreaData(show: true, color: Colors.white),
          barWidth: 3,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                  colors: [AppColors.buttonColor, AppColors.primaryColor])),
        ))
      ])),
    );
  }
}

class data {
  final double x;
  final double y;
  data({required this.x, required this.y});
}

List<data> get datas {
  final Data = <double>[12, 4, 6, 12, 8, 2];
  return Data.mapIndexed(
      (index, element) => data(x: index.toDouble(), y: element)).toList();
}
