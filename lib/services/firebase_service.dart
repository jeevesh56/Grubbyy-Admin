import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot> getOrders() {
    return _firestore.collection('orders').snapshots();
  }

  Future<void> updateOrderStatus(String orderId, String status) async {
    await _firestore.collection('orders').doc(orderId).update({'status': status});
  }

  Stream<QuerySnapshot> getFoodOrders() {
    return _firestore.collection('orders').snapshots();
  }
}
