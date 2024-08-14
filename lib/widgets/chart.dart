import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PerformanceChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: LineChart(
            LineChartData(
              minX: 2015,
              maxX: 2020,
              minY: 0,
              maxY: 50,
              titlesData: FlTitlesData(
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: 1,
                    getTitlesWidget: (value, meta) {
                      if (value == value.toInt()) {
                        switch (value.toInt()) {
                          case 2015:
                            return Text('2015',
                                style: TextStyle(color: Colors.blueAccent));
                          case 2016:
                            return Text('2016',
                                style: TextStyle(color: Colors.blueAccent));
                          case 2017:
                            return Text('2017',
                                style: TextStyle(color: Colors.blueAccent));
                          case 2018:
                            return Text('2018',
                                style: TextStyle(color: Colors.blueAccent));
                          case 2019:
                            return Text('2019',
                                style: TextStyle(color: Colors.blueAccent));
                          case 2020:
                            return Text('2020',
                                style: TextStyle(color: Colors.blueAccent));
                          default:
                            return Text('');
                        }
                      } else {
                        return Text('');
                      }
                    },
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: 10,
                    getTitlesWidget: (value, meta) {
                      return Text('${value.toInt()}',
                          style: TextStyle(color: Colors.blueAccent));
                    },
                  ),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                  ),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                  ),
                ),
              ),
              gridData: FlGridData(show: false),
              borderData: FlBorderData(
                show: true,
                border: Border.all(color: Colors.grey.withOpacity(0.3)),
              ),
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    FlSpot(2015, 30),
                    FlSpot(2016, 20),
                    FlSpot(2017, 10),
                    FlSpot(2018, 35),
                    FlSpot(2019, 15),
                    FlSpot(2020, 55),
                  ],
                  isCurved: true,
                  color: Colors.redAccent,
                  barWidth: 4,
                  belowBarData: BarAreaData(
                    show: true,
                    color: Colors.redAccent.withOpacity(0.1),
                  ),
                ),
                LineChartBarData(
                  spots: [
                    FlSpot(2015, 25),
                    FlSpot(2016, 20),
                    FlSpot(2017, 25),
                    FlSpot(2018, 40),
                    FlSpot(2019, 20),
                    FlSpot(2020, 35),
                  ],
                  isCurved: true,
                  color: Colors.blueAccent,
                  barWidth: 4,
                  belowBarData: BarAreaData(
                    show: true,
                    color: Colors.blueAccent.withOpacity(0.1),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
