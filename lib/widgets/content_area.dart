import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:optician_desktop_app/controllers/navigation_controller.dart';
import 'package:optician_desktop_app/screens/category_screen.dart';
import 'package:optician_desktop_app/screens/create_customer.dart';
import 'package:optician_desktop_app/screens/customer_list.dart';
import 'package:optician_desktop_app/screens/customer_segment.dart';
import 'package:optician_desktop_app/screens/dashboard.dart';
import 'package:optician_desktop_app/screens/delivery_slip.dart';
import 'package:optician_desktop_app/screens/fitter.dart';
import 'package:optician_desktop_app/screens/fitter_slip.dart';
import 'package:optician_desktop_app/screens/master_screen/area_screen.dart';
import 'package:optician_desktop_app/screens/master_screen/bank_screen.dart';
import 'package:optician_desktop_app/screens/master_screen/brands_screen.dart';
import 'package:optician_desktop_app/screens/master_screen/city_screen.dart';
import 'package:optician_desktop_app/screens/master_screen/customer_category_screen.dart';
import 'package:optician_desktop_app/screens/master_screen/doctor_reference_screen.dart';
import 'package:optician_desktop_app/screens/master_screen/email_book_screen.dart';
import 'package:optician_desktop_app/screens/master_screen/gender_screen.dart';
import 'package:optician_desktop_app/screens/master_screen/state_screen.dart';
import 'package:optician_desktop_app/screens/master_screen/stores_screen.dart';
import 'package:optician_desktop_app/screens/order_status.dart';
import 'package:optician_desktop_app/screens/pos_printing.dart';
import 'package:optician_desktop_app/screens/pos_screen.dart';
import 'package:optician_desktop_app/screens/product_form.dart';
import 'package:optician_desktop_app/screens/product_screen.dart';
import 'package:optician_desktop_app/screens/purchase_invoice_print.dart';
import 'package:optician_desktop_app/screens/puurchase_invoice.dart';
import 'package:optician_desktop_app/screens/reports.dart';
import 'package:optician_desktop_app/screens/retail_info.dart';
import 'package:optician_desktop_app/screens/retail_invoice.dart';

import 'package:optician_desktop_app/screens/sales_module.dart';
import 'package:optician_desktop_app/screens/settings.dart';
import 'package:optician_desktop_app/screens/supplier_screen.dart';
import 'package:optician_desktop_app/screens/tax_screen.dart';

class ContentArea extends StatelessWidget {
  const ContentArea({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController navController = Get.find<NavigationController>();

    return Obx(() {
      Widget screen;

      switch (navController.selectedSubItem.value) {
        case "Dashboard":
          screen = DashboardScreen();
          break;
        case "Customer":
          screen = const CustomerListScreen();
          break;
        case "Product Form":
          screen = const ProductFormScreen();
          break;
        case "Supplier":
          screen = const SupplierScreen();
        case "POS":
          screen = PosScreen();
        case "Order Status":
          screen = const OrderStatus();
        case "Products":
          screen = const ProductsScreen();
        case "Fitter":
          screen = const FitterScreen();
        case "Settings":
          screen = SettingsScreen();
          break;
        case "Purchase Invoice":
          screen = const PurchaseInvoicePage();
          break;
        case "Purchase Invoice Form":
          screen = const PurchaseInvoices();
          break;
        case "Tax":
          screen = const TaxScreen();
          break;
        case "Customer Delivery Slip":
          screen = const CustomerDeliverySlip();
          break;
        case "Fitter Slip":
          screen = const FitterSlip();
          break;
        case "Retail Information":
          screen = const RetailPage();
          break;
        case "State":
          screen = const RajyaScreen();
          break;
        case "City":
          screen = const CityScreen();
          break;
        case "Area":
          screen = const AreaScreen();
          break;
        case "Bank":
          screen = const BankScreen();
          break;
        case "Brands":
          screen = const BrandsScreen();
          break;
        case "Customer Category":
          screen = const CustomerCategoryScreen();
          break;
        case "Doctor Reference":
          screen = const DoctorReferenceScreen();
          break;
        case "Email Book":
          screen = const EmailBookScreen();
          break;

        case "Retail Invoice Slip":
          screen = RetailInvoicePage();
          break;
        case "Retail Invoice PDF":
          screen = const PosPrintingScreen();
          break;
        case "Category":
          screen = const CategoryScreen();
          break;
        case "Gender":
          screen = const GenderScreen();
          break;
        case "Stores":
          screen = const StoreScreen();
          break;
        case "Sales":
          screen = const SalesScreen();
          break;
        case "Reports":
        case "Daily Report":
        case "Report Module":
          screen = const ReportModule();
          break;
        default:
          screen = Center(
            child: Text(
              "Currently viewing: ${navController.currentTitle}",
              style: const TextStyle(fontSize: 24),
            ),
          );
      }

      return Container(
        // color: Colors.grey,
        padding: const EdgeInsets.all(24),
        child: screen,
      );
    });
  }
}
