// lib/data/tables/email_book_table.dart
import 'package:drift/drift.dart';

class EmailBook extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get firstName => text()();
  TextColumn get lastName => text()();
  TextColumn get emailId => text()();
  TextColumn get createdBy => text().nullable()();
  DateTimeColumn get createdDate =>
      dateTime().withDefault(currentDateAndTime)();
}
