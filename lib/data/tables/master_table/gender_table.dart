// lib/data/tables/gender_table.dart
import 'package:drift/drift.dart';

class Genders extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get genderName => text()();
  TextColumn get createdBy => text().nullable()();
  DateTimeColumn get createdDate =>
      dateTime().withDefault(currentDateAndTime)();
}
