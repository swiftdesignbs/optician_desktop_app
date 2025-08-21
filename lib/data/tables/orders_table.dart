// lib/data/tables/orders.dart
import 'package:drift/drift.dart';
import 'package:optician_desktop_app/data/tables/optic_products.dart';
import 'customer_table.dart';


class Orders extends Table {
  IntColumn get id => integer().autoIncrement()();

  // Link to Customer table
  IntColumn get customerId => integer().nullable().references(Customer, #id)();

  // Link to OpticProducts (if one product per order row)
  IntColumn get productId =>
      integer().nullable().references(OpticProducts, #id)();

  DateTimeColumn get orderDate => dateTime().withDefault(currentDateAndTime)();
  RealColumn get totalAmount => real().withDefault(const Constant(0.0))();
  TextColumn get status => text().withDefault(const Constant('Pending'))();

  TextColumn get shippingAddress => text().nullable()();
  TextColumn get billingAddress => text().nullable()();
  TextColumn get paymentMethod => text().nullable()();

  TextColumn get mobileNo => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get referenceNo => text().nullable()();

  // Store products as JSON array
  TextColumn get productsJson => text().nullable()();

  DateTimeColumn get createdDate => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
