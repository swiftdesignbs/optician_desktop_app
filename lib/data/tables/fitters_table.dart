// lib/data/tables/fitters.dart
import 'package:drift/drift.dart';

class Fitters extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get fitterName => text()();
  TextColumn get fitterCode => text()();
  TextColumn get address1 => text().nullable()();
  TextColumn get state => text().nullable()();
  TextColumn get city => text().nullable()();
  TextColumn get telephone => text().nullable()();
  TextColumn get landline => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get pincode => text().nullable()();
  IntColumn get days => integer().nullable()();
  RealColumn get fees => real().nullable()();
  TextColumn get createdBy => text().nullable()();
DateTimeColumn get createdDate => dateTime().nullable()();

}
