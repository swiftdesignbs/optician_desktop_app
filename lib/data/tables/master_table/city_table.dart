import 'package:drift/drift.dart';
import 'package:optician_desktop_app/data/tables/master_table/state_table.dart';

class Cities extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get cityName => text().named('city_name')();

  // Proper foreign key reference
  IntColumn get stateId => integer().references(Rajya, #id)();

  TextColumn get createdBy => text().named('created_by').nullable()();

  DateTimeColumn get createdDate =>
      dateTime().named('created_date').withDefault(currentDateAndTime)();
}
