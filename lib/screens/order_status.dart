import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:optician_desktop_app/controllers/navigation_controller.dart';
import 'package:optician_desktop_app/data/app_database.dart';

class OrderStatus extends StatefulWidget {
  const OrderStatus({super.key});

  @override
  State<OrderStatus> createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  final AppDatabase db = AppDatabase();
  List<Order> orders = [];

  @override
  void initState() {
    super.initState();
    _loadOrders();
  }

  Future<void> _loadOrders() async {
    final dbOrders = await db.getAllOrders();
    setState(() {
      orders = dbOrders;
    });
  }
final NavigationController navController = Get.find<NavigationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(() => Text(
      "${navController.selectedGroup.value} > ${navController.selectedSubItem.value}",
      style: const TextStyle(
        fontSize: 16,
        fontFamily: 'FontMain',
        fontWeight: FontWeight.w600,
        color: Colors.grey,
      ),
    )),
    const SizedBox(height: 8),
    const Text(
      'Orders',
      style: TextStyle(
        fontSize: 22,
        fontFamily: 'FontMain',
        fontWeight: FontWeight.bold,
      ),
    ),
                    const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: DataTable(
                  border: TableBorder.all(width: 0.1),
                  columnSpacing: 20,
                  columns: _getColumns(),
                  rows: _getRows(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<DataColumn> _getColumns() {
    return const [
      DataColumn(label: Text("Delete", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'FontMain'))),
      DataColumn(label: Text("View", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'FontMain'))),
      DataColumn(label: Text("Order No", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'FontMain'))),
      DataColumn(label: Text("Order Date", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'FontMain'))),
      DataColumn(label: Text("Amount", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'FontMain'))),
      DataColumn(label: Text("Telephone", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'FontMain'))),
      DataColumn(label: Text("Email", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'FontMain'))),
    ];
  }

  List<DataRow> _getRows() {
    return orders.map((order) {
      return DataRow(
        cells: [
          DataCell(
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () async {
                await db.deleteOrder(order.id);
                _loadOrders();
              },
            ),
          ),
          DataCell(
            IconButton(
              icon: const Icon(Icons.visibility, color: Colors.green),
              onPressed: () => _viewOrderDialog(order),
            ),
          ),
          DataCell(Text(order.id.toString(), style: const TextStyle(fontWeight: FontWeight.bold, fontFamily: 'FontMain'))),
          DataCell(Text(DateFormat('dd/MM/yyyy').format(order.orderDate), style: const TextStyle(fontWeight: FontWeight.bold, fontFamily: 'FontMain'))),
          DataCell(Text(order.totalAmount?.toString() ?? '', style: const TextStyle(fontWeight: FontWeight.bold, fontFamily: 'FontMain'))),
          DataCell(Text(order.mobileNo ?? '', style: const TextStyle(fontWeight: FontWeight.bold, fontFamily: 'FontMain'))),
          DataCell(Text(order.email ?? '', style: const TextStyle(fontWeight: FontWeight.bold, fontFamily: 'FontMain'))),
        ],
      );
    }).toList();
  }

  void _viewOrderDialog(Order order) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: Colors.white,
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(3)),
        title: const Text("Order Details", style: TextStyle(fontFamily: 'FontMain', fontWeight: FontWeight.bold)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Order No: ${order.id}", style: const TextStyle(fontFamily: 'FontMain', fontWeight: FontWeight.bold)),
            Text("Date: ${DateFormat('dd/MM/yyyy').format(order.orderDate)}", style: const TextStyle(fontFamily: 'FontMain', fontWeight: FontWeight.bold)),
            Text("Amount: ${order.totalAmount}", style: const TextStyle(fontFamily: 'FontMain', fontWeight: FontWeight.bold)),
            Text("Customer Phone: ${order.mobileNo ?? ''}", style: const TextStyle(fontFamily: 'FontMain', fontWeight: FontWeight.bold)),
            Text("Email: ${order.email ?? ''}", style: const TextStyle(fontFamily: 'FontMain', fontWeight: FontWeight.bold)),
            Text("Payment Mode : ${order.paymentMethod ?? ''}", style: const TextStyle(fontFamily: 'FontMain', fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text("Products:", style: TextStyle(fontWeight: FontWeight.bold)),
            const Divider(),
            ..._getProductList(order.productsJson),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Close", style: TextStyle(fontFamily: 'FontMain', fontWeight: FontWeight.bold, color: Colors.black)),
          )
        ],
      ),
    );
  }

  List<Widget> _getProductList(String? productsJson) {
    if (productsJson == null || productsJson.isEmpty) return [];
    final List products = jsonDecode(productsJson);

    return products.map((p) {
      return ListTile(
        leading: Image.network(
          'https://t4.ftcdn.net/jpg/01/85/66/11/360_F_185661189_vSiGMpAvWWw85S63k7kQbN0rzJOBemvQ.jpg',
          fit: BoxFit.contain,
          width: 40,
          height: 40,
        ),
        contentPadding: EdgeInsets.zero,
        title: Text(
          p['name'] ?? '',
          style: const TextStyle(fontFamily: 'FontMain', fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "Qty: ${p['qty']}   Total: ${p['total']}",
          style: const TextStyle(fontFamily: 'FontMain', fontSize: 12, fontWeight: FontWeight.bold),
        ),
      );
    }).toList();
  }
}
