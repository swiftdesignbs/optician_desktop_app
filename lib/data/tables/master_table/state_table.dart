// lib/data/tables/rajya_table.dart
import 'package:drift/drift.dart';

class Rajya extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get stateName => text()();
  TextColumn get createdBy => text().nullable()();
  DateTimeColumn get createdDate => dateTime().withDefault(currentDateAndTime)();
}
