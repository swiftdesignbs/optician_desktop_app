// lib/data/app_database.dart
import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:optician_desktop_app/data/tables/customer_table.dart';
import 'package:optician_desktop_app/data/tables/optic_products.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import 'tables/product_master.dart';

part 'app_database.g.dart'; // generated file
@DriftDatabase(
  tables: [ProductMaster, Customer, OpticProducts],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  // bump this whenever schema changes
  @override
  int get schemaVersion => 3; // update this if you change schema

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
        },
        onUpgrade: (m, from, to) async {
          if (from < 2) {
            await _safeAddColumn(m, opticProducts, opticProducts.unit);
            await _safeAddColumn(m, opticProducts, opticProducts.category);
          }
          if (from < 3) {
            await _safeAddColumn(m, opticProducts, opticProducts.discountPrice);
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
  Future<List<CustomerData>> getAllCustomers() => select(customer).get();

  Future<int> insertCustomer(CustomerCompanion entry) =>
      into(customer).insert(entry);

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
  // HELPER for safe column addition
  // -------------------------
  Future<void> _safeAddColumn(
    Migrator m,
    TableInfo<Table, dynamic> table,
    GeneratedColumn column,
  ) async {
    final existingColumns = await customSelect(
      'PRAGMA table_info(${table.actualTableName});',
      readsFrom: {table},
    ).get();

    final columnNames =
        existingColumns.map((row) => row.data['name'] as String).toList();

    if (!columnNames.contains(column.$name)) {
      await m.addColumn(table, column);
    }
  }
}

// -------------------------
// Open DB connection
// -------------------------
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app_database.sqlite'));
    return NativeDatabase(file);
  });
}
