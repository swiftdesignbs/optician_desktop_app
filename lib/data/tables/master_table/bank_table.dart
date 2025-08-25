import 'package:drift/drift.dart';
import 'package:optician_desktop_app/data/tables/master_table/city_table.dart';
import 'package:optician_desktop_app/data/tables/master_table/state_table.dart';

class Banks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get bankName => text()(); //
  TextColumn get accountNo => text()(); //
  TextColumn get abbreviation => text().nullable()(); 
  TextColumn get address => text().nullable()();
  TextColumn get pincode => text().nullable()();
  IntColumn get stateId => integer().references(Rajya, #id)(); //
  IntColumn get cityId => integer().references(Cities, #id)(); //
  TextColumn get mobile => text().nullable()(); 
  TextColumn get email => text().nullable()();
  TextColumn get ifsc => text().nullable()();//
  TextColumn get swiftCode => text().nullable()(); //
  TextColumn get accountName => text()(); //
  TextColumn get createdBy => text().nullable()(); //
  DateTimeColumn get createdDate =>
      dateTime().withDefault(currentDateAndTime)();
}
