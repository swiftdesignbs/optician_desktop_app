import 'package:drift/drift.dart';

class Categories extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get categoryCode => text()();
  TextColumn get description => text()();
  TextColumn get commission => text().nullable()();
  TextColumn get classification => text().nullable()();
  TextColumn get allowBilling => text().nullable()();
  TextColumn get maintainSingleQty => text().nullable()();
  TextColumn get defaultPurchaseTax => text().nullable()();
  TextColumn get defaultSalesTax => text().nullable()();
  TextColumn get createdBy => text().nullable()();
DateTimeColumn get createdDate => dateTime().nullable()();

}
