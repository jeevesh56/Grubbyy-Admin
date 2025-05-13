import 'package:flutter/material.dart';
import 'dart:developer';

class RecentOrdersTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    log('Rendering RecentOrdersTable');
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Recent Orders', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Order #1234'),
                    subtitle: Text('Customer: John Doe'),
                    trailing: Text('Pending'),
                  ),
                  ListTile(
                    title: Text('Order #1235'),
                    subtitle: Text('Customer: Jane Smith'),
                    trailing: Text('Completed'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
