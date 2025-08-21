// lib/data/tables/suppliers.dart
import 'package:drift/drift.dart';

class Suppliers extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get supplierCode => text()();
  TextColumn get supplierName => text()();
  TextColumn get email => text().nullable()();
  TextColumn get address1 => text().nullable()();
  TextColumn get address2 => text().nullable()();
  TextColumn get cstNo => text().nullable()();
  TextColumn get tinNo => text().nullable()();
  TextColumn get supplierType => text().nullable()();
  TextColumn get paymentMode => text().nullable()();
  TextColumn get state => text().nullable()();
  TextColumn get city => text().nullable()();
  TextColumn get pincode => text().nullable()();
  TextColumn get telephone => text().nullable()();
  TextColumn get fax => text().nullable()();
  TextColumn get contactPerson1 => text().nullable()();
  TextColumn get contactPerson2 => text().nullable()();
  TextColumn get createdBy => text().nullable()();
  DateTimeColumn get createdDate => dateTime().nullable()();
  TextColumn get computeProductDate => text().nullable()();
  TextColumn get computeOverallDesc => text().nullable()();
}
