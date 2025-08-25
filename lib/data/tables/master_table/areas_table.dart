import 'package:drift/drift.dart';
import 'package:optician_desktop_app/data/app_database.dart';
import 'package:optician_desktop_app/data/tables/master_table/city_table.dart';
import 'package:optician_desktop_app/data/tables/master_table/state_table.dart';

class Areas extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get areaDescription => text()();
  IntColumn get stateId => integer().references(Rajya, #id)();
  IntColumn get cityId => integer().references(Cities, #id)();

  TextColumn get createdBy => text().nullable()();
  DateTimeColumn get createdDate =>
      dateTime().withDefault(currentDateAndTime)();
}
