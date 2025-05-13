import 'package:flutter/material.dart';
import 'dart:developer';
import 'widgets/order_summary_card.dart';
import 'widgets/revenue_chart.dart';
import 'widgets/recent_orders_table.dart';
import 'widgets/food_orders_table.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    log('Rendering DashboardScreen');
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to the Admin Dashboard',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  OrderSummaryCard(),
                  RevenueChart(),
                  RecentOrdersTable(),
                  FoodOrdersTable(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}