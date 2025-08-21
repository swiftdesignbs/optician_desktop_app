// lib/data/tables/optic_products_table.dart
import 'package:drift/drift.dart';
import 'package:optician_desktop_app/data/tables/supplier_table.dart';

class OpticProducts extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get productName => text()();
  TextColumn get hsnCode => text().nullable()();

  RealColumn get price => real()();
  TextColumn get description => text().nullable()();

  IntColumn get stock => integer().withDefault(const Constant(0))();

  RealColumn get igst => real().nullable()();
  RealColumn get sgst => real().nullable()();
  RealColumn get cgst => real().nullable()();
  RealColumn get gst => real().nullable()();
  RealColumn get discount => real().nullable()();

  TextColumn get unit => text().nullable()();
  TextColumn get category => text().nullable()();
  RealColumn get discountPrice => real().nullable()();

  // NEW: Link to supplier
  IntColumn get supplierId => integer().nullable().references(Suppliers, #id)();

  DateTimeColumn get createdDate => dateTime().nullable()();
}
