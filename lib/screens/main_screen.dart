import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:optician_desktop_app/controllers/navigation_controller.dart';
import 'package:optician_desktop_app/screens/dashboard.dart';
import 'package:optician_desktop_app/screens/reports.dart';
import 'package:optician_desktop_app/screens/settings.dart';
import 'package:optician_desktop_app/widgets/content_area.dart';

class MainScreen extends StatelessWidget {
  final NavigationController navController = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Column(
          children: [
            // Full-width AppBar
            Obx(() {
              return Container(
                color: Colors.white,
                height: 60,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    // Logo (Left)
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          height: 40,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          navController.currentTitle,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: 'FontMain',
                          ),
                        ),
                      ],
                    ),

                    const Spacer(),

                    const Spacer(),

                    // Icon Buttons (Right)
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.notifications,
                              color: Colors.black),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.account_circle,
                              color: Colors.black),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),

            // Sidebar + Content
            Expanded(
              child: Row(
                children: [
                  buildSidebar(),
                  const Expanded(child: ContentArea()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSidebar() {
    final Map<String, List<String>> menuItems = {
      "Master": [
        "Dashboard",
        "Customer",
        "Product Form",
        "Category",
        "Fitter",
        "Supplier",
        "Products",
      ],
      "Sales": ["Sales", "POS", "Tax"],
      "Purchase": [
        "Purchase Invoice Form",
        "Purchase Invoice",
      ],
      "Accounts Invoice": [
        "Customer Delivery Slip",
        "Fitter Slip",
        "Retail Invoice PDF",
        "Retail Invoice Slip",
        "Retail Information",
      ],
      "Reports": [
        "Order Status",
        "Report Module",
      ],
      "Utility": ["Settings"],
    };

    // Define icons for parent menus
    final Map<String, IconData> parentIcons = {
      "Master": Icons.dashboard,
      "Sales": Icons.shopping_cart,
      "Purchase": Icons.receipt_long,
      "Accounts Invoice": Icons.description,
      "Reports": Icons.bar_chart,
      "Utility": Icons.settings,
    };

    return Container(
      width: 220,
      color: Colors.white,
      child: Column(
        children: [
          // Menu section (scrollable)
          Expanded(
            child: ListView(
              children: menuItems.entries.map((entry) {
                final group = entry.key;
                final subItems = entry.value;

                return Obx(() {
                  final isExpanded = navController.selectedGroup.value == group;

                  return Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(8)),
                      child: ExpansionTile(
                        leading: Icon(
                          parentIcons[group] ?? Icons.menu,
                          color: Colors.black,
                        ),
                        title: Text(
                          group,
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'FontMain',
                          ),
                        ),
                        initiallyExpanded: isExpanded,
                        onExpansionChanged: (expanded) {
                          if (expanded) {
                            navController.selectedGroup.value = group;
                          }
                        },
                        children: subItems.map((subItem) {
                          final isSelected =
                              navController.selectedSubItem.value == subItem;
                          return ListTile(
                            title: Text(
                              subItem,
                              style: TextStyle(
                                fontFamily: 'FontMain',
                                color: isSelected ? Colors.blue : Colors.black,
                              ),
                            ),
                            dense: true,
                            onTap: () =>
                                navController.selectMenu(group, subItem),
                          );
                        }).toList(),
                      ),
                    ),
                  );
                });
              }).toList(),
            ),
          ),

          // Footer
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            color: Colors.white,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Version 1.0.0',
                  style: TextStyle(
                      fontFamily: 'FontMain',
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  '© 2025 Optician App',
                  style: TextStyle(
                      fontFamily: 'FontMain',
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
