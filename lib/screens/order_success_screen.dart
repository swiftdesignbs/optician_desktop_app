import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:optician_desktop_app/controllers/navigation_controller.dart';
import 'package:optician_desktop_app/screens/dashboard.dart';
import 'package:optician_desktop_app/screens/main_screen.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController navController = Get.find<NavigationController>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.check_circle, color: Colors.green, size: 80),
            const SizedBox(height: 20),
            const Text(
              "Order Successfully Placed!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'FontMain',
              ),
            ),
            const SizedBox(height: 20),
            Buttons(
                onPressed: () {
                  // Navigate to MainScreen if not already there
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => MainScreen()),
                    (route) => false,
                  );

                  // Set Dashboard as the selected menu
                  navController.selectMenu("Master", "Dashboard");
                },
                ddName: "Back to Home",
                height: 50,
                width: 150,
                colors: const Color(0xff5793CE))
          ],
        ),
      ),
    );
  }
}
