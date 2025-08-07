import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:optician_desktop_app/screens/product_screen.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/outline_btn.dart';

class DashboardScreen extends StatelessWidget {
  final List<Map<String, dynamic>> objects = [
    {'name': 'Order Status', "icon": FontAwesomeIcons.fileLines, 'id': 1},
    {'name': 'Optical Order', "icon": FontAwesomeIcons.chalkboardUser, 'id': 2},
    {'name': 'Sales Bill', "icon": FontAwesomeIcons.weightScale, 'id': 3},
    {'name': 'Purchase Invoice', "icon": FontAwesomeIcons.fileInvoice, 'id': 4},
    {'name': 'Barcode', "icon": FontAwesomeIcons.barcode, 'id': 5},
    {'name': 'Print Political Bills', "icon": FontAwesomeIcons.print, 'id': 6},
    {'name': 'Add Product', "icon": FontAwesomeIcons.cartPlus, 'id': 7},
    {'name': 'Add Users', "icon": FontAwesomeIcons.userPlus, 'id': 8},
    {'name': 'Add Bank', "icon": FontAwesomeIcons.vault, 'id': 9},
    {'name': 'Payments', "icon": FontAwesomeIcons.moneyBill1, 'id': 10},
    {'name': 'Receipts', "icon": FontAwesomeIcons.receipt, 'id': 11},
    {'name': 'Reports', "icon": FontAwesomeIcons.circleNodes, 'id': 12},
    {'name': 'Analytics', "icon": FontAwesomeIcons.chartLine, 'id': 13},
    {'name': 'Stock Reports', "icon": FontAwesomeIcons.arrowTrendUp, 'id': 14},
    {
      'name': 'Customer Balance Request',
      "icon": FontAwesomeIcons.filePowerpoint,
      'id': 15
    },
    {
      'name': 'Daily Sales Report',
      "icon": FontAwesomeIcons.clipboard,
      'id': 16
    },
    {
      'name': 'Only Sales Request',
      "icon": FontAwesomeIcons.fileInvoiceDollar,
      'id': 17
    },
    {'name': 'Accounts', "icon": FontAwesomeIcons.rectangleList, 'id': 18},
    {'name': 'Send SMS', "icon": FontAwesomeIcons.comment, 'id': 19},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome Mr. Stark",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontFamily: 'FontMain',
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 4),
          Text(
            "Let's check your today's stats!",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.grey[600],
                  fontFamily: 'FontMain',
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 20),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: objects.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.6,
              crossAxisCount: 5,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
            ),
            itemBuilder: (context, index) {
              final item = objects[index];
              return GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        blurRadius: 8,
                        offset: const Offset(2, 2),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        item['icon'],
                        size: 28,
                        color: const Color(
                          0xff1F3F7A,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        item['name'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 13,
                          fontFamily: 'FontMain',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
