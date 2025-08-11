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
      
                    // // Center (Search + Dropdown)
                    // Expanded(
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       border: Border.all(color: Colors.black), // Black border
                    //       borderRadius: BorderRadius.circular(8),
                    //     ),
                    //     child: const TextField(
                    //       decoration: InputDecoration(
                    //         contentPadding:
                    //             EdgeInsets.symmetric(horizontal: 12),
                    //         hintText: 'Search...',
                    //         border: InputBorder.none, // Remove default border
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // const SizedBox(width: 10),
                    // Container(
                    //   padding: const EdgeInsets.symmetric(horizontal: 12),
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     border: Border.all(color: Colors.black), // Black border
                    //     borderRadius: BorderRadius.circular(8),
                    //   ),
                    //   child: DropdownButtonHideUnderline(
                    //     child: DropdownButton<String>(
                    //       value: 'Today',
                    //       dropdownColor: Colors.white,
                    //       iconEnabledColor: Colors.black,
                    //       items: ['Today', 'This Week', 'This Month']
                    //           .map((e) => DropdownMenuItem(
                    //                 value: e,
                    //                 child: Text(e),
                    //               ))
                    //           .toList(),
                    //       onChanged: (value) {},
                    //     ),
                    //   ),
                    // ),
      
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
      "Sales": ["Sales","POS", "Tax"],
      "Purchase": [
        "Purchase Invoice Form",
        "Purchase Invoice",
      ],
      "Accounts Invoice": [
        "Customer Delivery Slip",
        "Fitter Slip",
        "Retail Invoice Slip",
        "Retail Information",
      ],
      // "Stock": ["Stock Entry", "Stock Report"],
      "Reports": [
        "Order Status",
        "Report Module",
      ],
      //   "Petty": ["Petty Cash Entry", "Petty Cash Report"],
      // "Cash": ["Cash Book"],
      "Utility": ["Settings"],
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

                  return ExpansionTile(
                    title: Text(
                      group,
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'FontMain',
                        fontWeight: FontWeight.w600,
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
                            fontWeight: FontWeight.w600,
                            color: isSelected ? Colors.blue : Colors.black,
                          ),
                        ),
                        dense: true,
                        onTap: () => navController.selectMenu(group, subItem),
                      );
                    }).toList(),
                  );
                });
              }).toList(),
            ),
          ),

          // Footer section
       //   const Divider(),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            color: Colors.white,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Version 1.0.0',
                  style: TextStyle( fontFamily: 'FontMain',fontSize: 12, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  '© 2025 Optician App',
 style: TextStyle( fontFamily: 'FontMain',fontSize: 12, fontWeight: FontWeight.bold),                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
