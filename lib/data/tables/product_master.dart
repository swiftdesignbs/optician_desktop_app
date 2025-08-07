import 'package:drift/drift.dart';

class ProductMaster extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get productCode => text().withLength(min: 1, max: 50)();
  TextColumn get productName => text().withLength(min: 1, max: 100)();

  TextColumn get category => text().nullable()();
  TextColumn get material => text().nullable()();
  TextColumn get brand => text().nullable()();
  TextColumn get subBrand => text().nullable()();
  TextColumn get size => text().nullable()();
  TextColumn get colors => text().nullable()();
  TextColumn get lensType1 => text().nullable()();
  TextColumn get lensType2 => text().nullable()();

  TextColumn get shape => text().nullable()();
  TextColumn get gender => text().nullable()();
  BoolColumn get allowNegativeStock => boolean().withDefault(const Constant(false))();

  TextColumn get boxPack => text().nullable()();
  TextColumn get rack => text().nullable()();
  TextColumn get modelNo => text().nullable()();

  TextColumn get createdBy => text().nullable()();
  DateTimeColumn get createdDate => dateTime().nullable()();
}


