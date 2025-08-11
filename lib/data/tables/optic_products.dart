// lib/data/tables/optic_products_table.dart
import 'package:drift/drift.dart';

class OpticProducts extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get productName => text()();
  
  // Make HSN optional if you sometimes don't have it
  TextColumn get hsnCode => text().nullable()();
  
  RealColumn get price => real()();
  TextColumn get description => text().nullable()();
  
  // Default stock to 0 to avoid null issues
  IntColumn get stock => integer().withDefault(const Constant(0))();

  // Taxes & discounts
  RealColumn get igst => real().nullable()();
  RealColumn get sgst => real().nullable()();
  RealColumn get cgst => real().nullable()();
  RealColumn get discount => real().nullable()();

  // Unit & category
  TextColumn get unit => text().nullable()();
  TextColumn get category => text().nullable()();

  // New: Discount Price
  RealColumn get discountPrice => real().nullable()();
}
