import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:optician_desktop_app/data/tables/customer_table.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

// Import your table definition
import 'tables/product_master.dart';

part 'app_database.g.dart'; // generated file

@DriftDatabase(
  tables: [ProductMaster, Customers], // Add Customers here
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  // Bump this when you change table schemas
  @override
  int get schemaVersion => 1;

  // -------------------------
  // CRUD EXAMPLES PRODUCT MASTER
  // -------------------------

  // Insert a new product
  Future<int> insertProduct(ProductMasterCompanion product) =>
      into(productMaster).insert(product);

  // Get all products
  Future<List<ProductMasterData>> getAllProducts() =>
      select(productMaster).get();

  // Watch products as Stream (for UI updates)
  Stream<List<ProductMasterData>> watchAllProducts() =>
      select(productMaster).watch();

  // Update a product
  Future<bool> updateProduct(ProductMasterData product) =>
      update(productMaster).replace(product);

  // Delete a product
  Future<int> deleteProduct(int id) =>
      (delete(productMaster)..where((tbl) => tbl.id.equals(id))).go();

// -------------------------
// CRUD: Customers
// -------------------------

  Future<int> insertCustomer(CustomersCompanion customer) =>
      into(customers).insert(customer);

  Future<List<Customer>> getAllCustomers() => select(customers).get();

  Stream<List<Customer>> watchAllCustomers() => select(customers).watch();

  Future<bool> updateCustomer(Customer customer) =>
      update(customers).replace(customer);

  Future<int> deleteCustomer(int id) =>
      (delete(customers)..where((tbl) => tbl.id.equals(id))).go();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    // Put the database file into the app's documents directory
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app.db'));
    return NativeDatabase(file);
  });
}
