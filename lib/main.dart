import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:optician_desktop_app/data/database.dart';
import 'package:optician_desktop_app/screens/dashboard.dart';
import 'package:optician_desktop_app/screens/login_screen.dart';
import 'package:optician_desktop_app/screens/main_screen.dart';
import 'package:optician_desktop_app/screens/reports.dart';
import 'package:optician_desktop_app/screens/settings.dart';
import 'controllers/navigation_controller.dart';

void main() {
  initializeSQLite();  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Optician Desktop App',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
