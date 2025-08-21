// lib/data/app_database.dart
import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:optician_desktop_app/data/tables/categories_table.dart';
import 'package:optician_desktop_app/data/tables/customer_table.dart';
import 'package:optician_desktop_app/data/tables/fitters_table.dart';
import 'package:optician_desktop_app/data/tables/optic_products.dart';
import 'package:optician_desktop_app/data/tables/orders_table.dart';
import 'package:optician_desktop_app/data/tables/supplier_table.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import 'tables/product_master.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    ProductMaster,
    Customer,
    OpticProducts,
    Categories,
    Fitters,
    Suppliers,
    Orders,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 2; // increment version

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onUpgrade: (m, from, to) async {
          if (from == 1) {
            await m.addColumn(orders, orders.customerId);
          }
        },
      );

  // -------------------------
  // PRODUCT MASTER CRUD
  // -------------------------
  Future<int> insertProduct(ProductMasterCompanion product) =>
      into(productMaster).insert(product);

  Future<List<ProductMasterData>> getAllProducts() =>
      select(productMaster).get();

  Stream<List<ProductMasterData>> watchAllProducts() =>
      select(productMaster).watch();

  Future<bool> updateProduct(ProductMasterData product) =>
      update(productMaster).replace(product);

  Future<int> deleteProduct(int id) =>
      (delete(productMaster)..where((tbl) => tbl.id.equals(id))).go();

  // -------------------------
  // CUSTOMER CRUD
  // -------------------------
  Future<int> insertCustomer(CustomerCompanion entry) =>
      into(customer).insert(entry);

  Future<List<CustomerData>> getAllCustomers() => select(customer).get();

  Future<void> updateCustomer(CustomerCompanion entry) =>
      update(customer).replace(entry);

  Future<int> deleteCustomer(int id) =>
      (delete(customer)..where((tbl) => tbl.id.equals(id))).go();

  // -------------------------
  // OPTIC PRODUCTS CRUD
  // -------------------------
  Future<int> insertOpticProduct(OpticProductsCompanion entry) =>
      into(opticProducts).insert(entry);

  Future<List<OpticProduct>> getAllOpticProducts() =>
      select(opticProducts).get();

  Future<OpticProduct?> getOpticProductById(int id) =>
      (select(opticProducts)..where((t) => t.id.equals(id))).getSingleOrNull();

  Future<bool> updateOpticProduct(OpticProduct entry) =>
      update(opticProducts).replace(entry);

  Future<int> deleteOpticProduct(int id) =>
      (delete(opticProducts)..where((t) => t.id.equals(id))).go();

  // -------------------------
  // CATEGORIES CRUD
  // -------------------------
  Future<int> insertCategory(CategoriesCompanion entry) =>
      into(categories).insert(entry);

  Future<List<Category>> getAllCategories() => select(categories).get();

  Stream<List<Category>> watchAllCategories() => select(categories).watch();

  Future<bool> updateCategory(Category entry) =>
      update(categories).replace(entry);

  Future<int> deleteCategory(int id) =>
      (delete(categories)..where((t) => t.id.equals(id))).go();

  // -------------------------
  // FITTER CRUD
  // -------------------------
  Future<int> insertFitter(FittersCompanion entry) =>
      into(fitters).insert(entry);

  Future<List<Fitter>> getAllFitters() => select(fitters).get();

  Future<bool> updateFitter(Fitter entry) => update(fitters).replace(entry);

  Future<Fitter?> getFitterById(int id) =>
      (select(fitters)..where((t) => t.id.equals(id))).getSingleOrNull();

  Future<int> deleteFitter(int id) =>
      (delete(fitters)..where((t) => t.id.equals(id))).go();

  // -------------------------
  // SUPPLIER CRUD
  // -------------------------
  Future<int> insertSupplier(SuppliersCompanion entry) =>
      into(suppliers).insert(entry);

  Future<List<Supplier>> getAllSuppliers() => select(suppliers).get();

  Future<bool> updateSupplier(Supplier entry) =>
      update(suppliers).replace(entry);

  Future<int> deleteSupplier(int id) =>
      (delete(suppliers)..where((tbl) => tbl.id.equals(id))).go();

  // -------------------------
  // ORDERS CRUD
  // -------------------------
  Future<int> insertOrder(OrdersCompanion entry) => into(orders).insert(entry);

  Future<List<Order>> getAllOrders() => select(orders).get();

  Future<bool> updateOrder(Order entry) => update(orders).replace(entry);

  Future<Order?> getOrderById(int id) =>
      (select(orders)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();

  Future<int> deleteOrder(int id) =>
      (delete(orders)..where((tbl) => tbl.id.equals(id))).go();

  Stream<List<Order>> watchAllOrders() => select(orders).watch();

  // -------------------------
  // JOIN: Customer + Orders + Products + Suppliers
  // -------------------------

  Future<List<CustomerFullInfo>> getCustomerFullInfo() async {
    final results = await (select(customer).join([
      leftOuterJoin(
        orders,
        orders.customerId.equalsExp(customer.id),
      ),
      leftOuterJoin(
        opticProducts,
        opticProducts.id.equalsExp(orders.productId),
      ),
      leftOuterJoin(
        suppliers,
        suppliers.id.equalsExp(opticProducts.supplierId),
      ),
    ])).get();

    return results.map((row) {
      return CustomerFullInfo(
        customer: row.readTable(customer),
        order: row.readTableOrNull(orders),
        opticProduct: row.readTableOrNull(opticProducts),
        supplier: row.readTableOrNull(suppliers),
      );
    }).toList();
  }
}

// Helper model for join results
class CustomerFullInfo {
  final CustomerData customer;
  final Order? order;
  final OpticProduct? opticProduct;
  final Supplier? supplier;

  CustomerFullInfo({
    required this.customer,
    this.order,
    this.opticProduct,
    this.supplier,
  });
}

// -------------------------
// Open DB connection
// -------------------------
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app_database.sqlite'));
    print("The path of DB: ${file.path}");
// Delete old DB if exists
    // if (await file.exists()) {
    //   await file.delete();
    //   print("Old database deleted, creating new one.");
    // }
    return NativeDatabase(file);
  });
}
