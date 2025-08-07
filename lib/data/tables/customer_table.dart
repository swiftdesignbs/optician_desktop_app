// lib/tables/customer_table.dart
import 'package:drift/drift.dart';

class Customer extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get firstName => text().withLength(min: 1, max: 50)();
  TextColumn get middleName => text().nullable()();
  TextColumn get lastName => text().nullable()();

  TextColumn get mobile => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get address => text().nullable()();

  TextColumn get city => text().nullable()();
  TextColumn get state => text().nullable()();
  TextColumn get country => text().nullable()();
  TextColumn get pincode => text().nullable()();

  TextColumn get createdBy => text().nullable()();
  DateTimeColumn get createdDate => dateTime().nullable()();
}
