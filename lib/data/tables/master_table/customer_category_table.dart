// lib/data/tables/rajya_table.dart
import 'package:drift/drift.dart';

class CustomerCategory extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get customerCatName => text()();
  TextColumn get createdBy => text().nullable()();
  DateTimeColumn get createdDate => dateTime().withDefault(currentDateAndTime)();
}
