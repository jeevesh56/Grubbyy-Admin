import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:developer';

class RevenueChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    log('Rendering RevenueChart');
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Revenue Overview', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Expanded(
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: false),
                  titlesData: FlTitlesData(show: false),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 3),
                        FlSpot(1, 1),
                        FlSpot(2, 4),
                        FlSpot(3, 1.5),
                        FlSpot(4, 3.5),
                      ],
                      isCurved: true,
                      color: Colors.blue,
                      barWidth: 4,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
