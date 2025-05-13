import 'package:flutter/material.dart';
import 'dart:developer';

class OrderSummaryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    log('Rendering OrderSummaryCard');
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Order Summary', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Total Orders: 120'),
            Text('Pending Orders: 30'),
            Text('Completed Orders: 90'),
          ],
        ),
      ),
    );
  }
}
