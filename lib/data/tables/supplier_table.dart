import 'package:drift/drift.dart';

class Suppliers extends Table {
  IntColumn get id => integer().autoIncrement()();         // Primary key
  TextColumn get supplierCode => text()();                 // Supplier Code
  TextColumn get supplierName => text()();                 // Supplier Name
  TextColumn get email => text().nullable()();             // Email
  TextColumn get address1 => text().nullable()();          // Address1
  TextColumn get address2 => text().nullable()();          // Address2
  TextColumn get cstNo => text().nullable()();             // CST No
  TextColumn get tinNo => text().nullable()();             // TIN No
  TextColumn get supplierType => text().nullable()();      // Supplier Type (Dropdown id)
  TextColumn get paymentMode => text().nullable()();       // Payment Mode (Dropdown id)
  TextColumn get state => text().nullable()();             // State (Dropdown id)
  TextColumn get city => text().nullable()();              // City (Dropdown id)
  TextColumn get pincode => text().nullable()();           // Pincode
  TextColumn get telephone => text().nullable()();         // Telephone
  TextColumn get fax => text().nullable()();               // Fax
  TextColumn get contactPerson1 => text().nullable()();    // Contact Person 1
  TextColumn get contactPerson2 => text().nullable()();    // Contact Person 2
  TextColumn get createdBy => text().nullable()();         // Created By
  DateTimeColumn get createdDate => dateTime().nullable()(); // Created Date
  TextColumn get computeProductDate => text().nullable()();   // Dropdown selection
  TextColumn get computeOverallDesc => text().nullable()();   // Dropdown selection
}
