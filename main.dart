import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'RIT-Admin/admin_panel/screens/dashboard_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyA3PqvnKx1XQzyl5qLDyaHKXNjqZgLkTYw",
        authDomain: "rit-grubpoint.firebaseapp.com",
        projectId: "rit-grubpoint",
        storageBucket: "rit-grubpoint.firebasestorage.app",
        messagingSenderId: "572069152415",
        appId: "1:572069152415:web:63a00385d6aac30d8544aa",
        measurementId: "G-9Y1ZPDSLGD",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Panel',
      home: DashboardScreen(),
    );
  }
}
