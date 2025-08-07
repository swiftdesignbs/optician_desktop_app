// tables/customer_table.dart
import 'package:drift/drift.dart';

class Customers extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get firstName => text().withLength(min: 1, max: 50)();
  TextColumn get middleName => text().nullable().withLength(min: 0, max: 50)();
  TextColumn get lastName => text().withLength(min: 1, max: 50)();
  TextColumn get mobileNumber => text().withLength(min: 10, max: 15)();
  TextColumn get email => text().nullable().withLength(min: 0, max: 100)();
  TextColumn get address => text().nullable().named('address')();
  TextColumn get city => text().nullable()();
  TextColumn get state => text().nullable()();
  TextColumn get pincode => text().nullable()();
  DateTimeColumn get createdDate => dateTime().nullable()();
}
