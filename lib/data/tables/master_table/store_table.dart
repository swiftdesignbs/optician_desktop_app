import 'package:drift/drift.dart';
import 'package:optician_desktop_app/data/app_database.dart';
import 'package:optician_desktop_app/data/tables/master_table/city_table.dart';
import 'package:optician_desktop_app/data/tables/master_table/state_table.dart';

class Stores extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get siteName => text()();
  TextColumn get email => text().nullable()();
  TextColumn get address => text().nullable()();
  TextColumn get dlNumber => text().nullable()();
  TextColumn get cstNumber => text().nullable()();
  TextColumn get tinNumber => text().nullable()();
  IntColumn get stateId => integer().references(Rajya, #id)(); //
  IntColumn get cityId => integer().references(Cities, #id)(); //
  TextColumn get gstin => text().nullable()();
  TextColumn get pincode => text().nullable()();
  TextColumn get mobile => text().nullable()();
  TextColumn get additionalInfo => text().nullable()();
  BlobColumn get image => blob().nullable()(); // store image as bytes
  TextColumn get createdBy => text().nullable()();
  DateTimeColumn get createdDate =>
      dateTime().withDefault(currentDateAndTime)();
}
