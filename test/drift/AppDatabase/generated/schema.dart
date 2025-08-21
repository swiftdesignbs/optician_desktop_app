// dart format width=80
// GENERATED CODE, DO NOT EDIT BY HAND.
// ignore_for_file: type=lint
import 'package:drift/drift.dart';
import 'package:drift/internal/migrations.dart';
import 'schema_v7.dart' as v7;
import 'schema_v8.dart' as v8;

class GeneratedHelper implements SchemaInstantiationHelper {
  @override
  GeneratedDatabase databaseForVersion(QueryExecutor db, int version) {
    switch (version) {
      case 7:
        return v7.DatabaseAtV7(db);
      case 8:
        return v8.DatabaseAtV8(db);
      default:
        throw MissingSchemaException(version, versions);
    }
  }

  static const versions = const [7, 8];
}
