import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:developer';
import '../services/firebase_service.dart';

class FoodOrdersTable extends StatelessWidget {
  final FirebaseService _firebaseService = FirebaseService();

  @override
  Widget build(BuildContext context) {
    log('Rendering FoodOrdersTable');
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Food Orders', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: _firebaseService.getFoodOrders(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return Center(child: Text('No orders found'));
                  }
                  final orders = snapshot.data!.docs;
                  return ListView.builder(
                    itemCount: orders.length,
                    itemBuilder: (context, index) {
                      final order = orders[index].data() as Map<String, dynamic>;
                      return ListTile(
                        title: Text(order['itemName'] ?? 'Unknown Item'),
                        subtitle: Text('Quantity: ${order['quantity'] ?? 0}'),
                        trailing: Text(order['status'] ?? 'Pending'),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
