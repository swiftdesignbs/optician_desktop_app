// lib/data/app_database.dart
import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:optician_desktop_app/data/tables/categories_table.dart';
import 'package:optician_desktop_app/data/tables/customer_table.dart';
import 'package:optician_desktop_app/data/tables/fitters_table.dart';
import 'package:optician_desktop_app/data/tables/master_table/areas_table.dart';
import 'package:optician_desktop_app/data/tables/master_table/bank_table.dart';
import 'package:optician_desktop_app/data/tables/master_table/brand_table.dart';
import 'package:optician_desktop_app/data/tables/master_table/city_table.dart';
import 'package:optician_desktop_app/data/tables/master_table/customer_category_table.dart';
import 'package:optician_desktop_app/data/tables/master_table/doctor_ref._table.dart';
import 'package:optician_desktop_app/data/tables/master_table/email_book_table.dart';
import 'package:optician_desktop_app/data/tables/master_table/gender_table.dart';
import 'package:optician_desktop_app/data/tables/master_table/state_table.dart';
import 'package:optician_desktop_app/data/tables/master_table/store_table.dart';
import 'package:optician_desktop_app/data/tables/optic_products.dart';
import 'package:optician_desktop_app/data/tables/orders_table.dart';
import 'package:optician_desktop_app/data/tables/supplier_table.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import 'tables/product_master.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    ProductMaster,
    Customer,
    OpticProducts,
    Categories,
    Fitters,
    Suppliers,
    Orders,
    Rajya,
    Cities,
    Areas,
    Banks,
    Brands,
    CustomerCategory,
    DoctorReference,
    EmailBook,
    Genders,
    Stores,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 10;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        // When DB is created fresh (first time)
        onCreate: (m) async {
          await m.createAll();
        },
        // When upgrading DB version
        onUpgrade: (m, from, to) async {
          if (from == 1) {
            await m.addColumn(orders, orders.customerId);
            await m.createTable(rajya);
            await m.createTable(cities);
          }
          if (from < 3) {
            await m.createTable(areas); // <-- create Areas table in migration
          }
          if (from < 4) {
            await m.createTable(banks); // <-- create Banks table in migration
          }
          if (from < 5) {
            await m.createTable(brands); // <-- create Brands table in migration
          }
          if (from < 6) {
            await m.createTable(
                customerCategory); // <-- create CustomerCategory table in migration
          }
          if (from < 7) {
            await m.createTable(
                doctorReference); // <-- create CustomerCategory table in migration
          }
          if (from < 8) {
            await m.createTable(
                emailBook); // <-- create Email Book table in migration
          }
          if (from < 9) {
            await m.createTable(
                genders); // <-- create Email Book table in migration
          }
          if (from < 10) {
            await m.createTable(
                stores); // <-- create Email Book table in migration
          }
        },
        beforeOpen: (details) async {
          // ✅ Ensure foreign keys are enforced
          await customStatement('PRAGMA foreign_keys = ON');
        },
      );

  // -------------------------
  // PRODUCT MASTER CRUD
  // -------------------------
  Future<int> insertProduct(ProductMasterCompanion product) =>
      into(productMaster).insert(product);

  Future<List<ProductMasterData>> getAllProducts() =>
      select(productMaster).get();

  Stream<List<ProductMasterData>> watchAllProducts() =>
      select(productMaster).watch();

  Future<bool> updateProduct(ProductMasterData product) =>
      update(productMaster).replace(product);

  Future<int> deleteProduct(int id) =>
      (delete(productMaster)..where((tbl) => tbl.id.equals(id))).go();

  // -------------------------
  // CUSTOMER CRUD
  // -------------------------
  Future<int> insertCustomer(CustomerCompanion entry) =>
      into(customer).insert(entry);

  Future<List<CustomerData>> getAllCustomers() => select(customer).get();

  Future<void> updateCustomer(CustomerCompanion entry) =>
      update(customer).replace(entry);

  Future<int> deleteCustomer(int id) =>
      (delete(customer)..where((tbl) => tbl.id.equals(id))).go();

  // -------------------------
  // OPTIC PRODUCTS CRUD
  // -------------------------
  Future<int> insertOpticProduct(OpticProductsCompanion entry) =>
      into(opticProducts).insert(entry);

  Future<List<OpticProduct>> getAllOpticProducts() =>
      select(opticProducts).get();

  Future<OpticProduct?> getOpticProductById(int id) =>
      (select(opticProducts)..where((t) => t.id.equals(id))).getSingleOrNull();

  Future<bool> updateOpticProduct(OpticProduct entry) =>
      update(opticProducts).replace(entry);

  Future<int> deleteOpticProduct(int id) =>
      (delete(opticProducts)..where((t) => t.id.equals(id))).go();

  // -------------------------
  // CATEGORIES CRUD
  // -------------------------
  Future<int> insertCategory(CategoriesCompanion entry) =>
      into(categories).insert(entry);

  Future<List<Category>> getAllCategories() => select(categories).get();

  Stream<List<Category>> watchAllCategories() => select(categories).watch();

  Future<bool> updateCategory(Category entry) =>
      update(categories).replace(entry);

  Future<int> deleteCategory(int id) =>
      (delete(categories)..where((t) => t.id.equals(id))).go();

  // -------------------------
  // FITTER CRUD
  // -------------------------
  Future<int> insertFitter(FittersCompanion entry) =>
      into(fitters).insert(entry);

  Future<List<Fitter>> getAllFitters() => select(fitters).get();

  Future<bool> updateFitter(Fitter entry) => update(fitters).replace(entry);

  Future<Fitter?> getFitterById(int id) =>
      (select(fitters)..where((t) => t.id.equals(id))).getSingleOrNull();

  Future<int> deleteFitter(int id) =>
      (delete(fitters)..where((t) => t.id.equals(id))).go();

  // -------------------------
  // SUPPLIER CRUD
  // -------------------------
  Future<int> insertSupplier(SuppliersCompanion entry) =>
      into(suppliers).insert(entry);

  Future<List<Supplier>> getAllSuppliers() => select(suppliers).get();

  Future<bool> updateSupplier(Supplier entry) =>
      update(suppliers).replace(entry);

  Future<int> deleteSupplier(int id) =>
      (delete(suppliers)..where((tbl) => tbl.id.equals(id))).go();

  // -------------------------
  // RAJYA CRUD
  // -------------------------
  Future<int> insertRajya(RajyaCompanion entry) => into(rajya).insert(entry);
  Future<List<RajyaData>> getAllRajya() => select(rajya).get();
  Future<bool> updateRajya(RajyaData entry) => update(rajya).replace(entry);
  Future<int> deleteRajya(int id) =>
      (delete(rajya)..where((tbl) => tbl.id.equals(id))).go();

  // -------------------------
  // CITY CRUD
  // -------------------------
  Future<int> insertCity(CitiesCompanion entry) => into(cities).insert(entry);
  Future<List<City>> getAllCities() => select(cities).get();
  Future<List<City>> getCitiesByRajya(int rajyaId) =>
      (select(cities)..where((c) => c.stateId.equals(rajyaId))).get();
  Future<bool> updateCity(City entry) => update(cities).replace(entry);
  Future<int> deleteCity(int id) =>
      (delete(cities)..where((tbl) => tbl.id.equals(id))).go();
// -------------------------
// AREA CRUD
// -------------------------
  Future<int> insertArea(AreasCompanion entry) => into(areas).insert(entry);

  Future<List<Area>> getAllAreas() => select(areas).get();

  Future<List<Area>> getAreasByStateAndCity(int stateId, int cityId) =>
      (select(areas)
            ..where((tbl) =>
                tbl.stateId.equals(stateId) & tbl.cityId.equals(cityId)))
          .get();

  Future<bool> updateArea(Area entry) => update(areas).replace(entry);

  Future<int> deleteArea(int id) =>
      (delete(areas)..where((tbl) => tbl.id.equals(id))).go();

  // -------------------------
  // BANK CRUD
  // -------------------------
  Future<int> insertBank(BanksCompanion entry) => into(banks).insert(entry);

  Future<List<Bank>> getAllBanks() => select(banks).get();

  Stream<List<Bank>> watchAllBanks() => select(banks).watch();

  Future<bool> updateBank(Bank entry) => update(banks).replace(entry);

  Future<int> deleteBank(int id) =>
      (delete(banks)..where((tbl) => tbl.id.equals(id))).go();
  // ------------------ CRUD METHODS ------------------

  // CREATE
  Future<int> insertBrand(BrandsCompanion brand) => into(brands).insert(brand);

  // READ ALL
  Future<List<Brand>> getAllBrands() => select(brands).get();

  // READ ONE BY ID
  Future<Brand?> getBrandById(int id) =>
      (select(brands)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();

  // UPDATE
  Future<bool> updateBrandEntry(Brand brand) => update(brands).replace(brand);

  // DELETE
  Future<int> deleteBrand(int id) =>
      (delete(brands)..where((tbl) => tbl.id.equals(id))).go();

// Get all doctors
  Future<List<DoctorReferenceData>> getAllDoctors() async {
    return select(doctorReference).get();
  }

  // Insert a new doctor
  Future<int> insertDoctor(DoctorReferenceCompanion doctor) async {
    return into(doctorReference).insert(doctor);
  }

  // Update existing doctor
  Future<bool> updateDoctor(DoctorReferenceData doctor) async {
    return update(doctorReference).replace(doctor);
  }

  // Delete a doctor by ID
  Future<int> deleteDoctor(int id) async {
    return (delete(doctorReference)..where((tbl) => tbl.id.equals(id))).go();
  }

  // Get doctor by ID
  Future<DoctorReferenceData?> getDoctorById(int id) async {
    return (select(doctorReference)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

// -------------------------
// GENDER CRUD
// -------------------------

// Insert
  Future<int> insertGender(GendersCompanion gender) async {
    return into(genders).insert(gender);
  }

// Update
  Future<bool> updateGender(Gender genderData) async {
    // <-- use 'Gender' here
    return update(genders).replace(genderData);
  }

// Delete
  Future<int> deleteGender(int id) async {
    return (delete(genders)..where((tbl) => tbl.id.equals(id))).go();
  }

// Get all genders
  Future<List<Gender>> getAllGenders() async {
    // <-- use 'Gender' here
    return select(genders).get();
  }

  // -------------------------
  // CUSTOMER CATEGORY CRUD
  // -------------------------
  // CREATE
  Future<int> insertCustomerCategory(CustomerCategoryCompanion category) =>
      into(customerCategory).insert(category);

  // READ ALL
  Future<List<CustomerCategoryData>> getAllCustomerCategories() =>
      select(customerCategory).get();

  // READ ONE BY ID
  Future<CustomerCategoryData?> getCustomerCategoryById(int id) =>
      (select(customerCategory)..where((tbl) => tbl.id.equals(id)))
          .getSingleOrNull();

  // UPDATE
  Future<bool> updateCustomerCategory(CustomerCategoryData category) =>
      update(customerCategory).replace(category);

  // DELETE
  Future<int> deleteCustomerCategory(int id) =>
      (delete(customerCategory)..where((tbl) => tbl.id.equals(id))).go();

  // -------------------------
  // EMAIL BOOK CRUD
  // -------------------------

  // Insert
  Future<int> insertEmailBook(EmailBookCompanion data) =>
      into(emailBook).insert(data);

// Update
  Future<bool> updateEmailBook(EmailBookData data) =>
      update(emailBook).replace(data);

// Delete
  Future<int> deleteEmailBook(int id) =>
      (delete(emailBook)..where((tbl) => tbl.id.equals(id))).go();

// Get All
  Future<List<EmailBookData>> getAllEmailBooks() => select(emailBook).get();

  // -------------------------
  // ORDERS CRUD
  // -------------------------
  Future<int> insertOrder(OrdersCompanion entry) => into(orders).insert(entry);

  Future<List<Order>> getAllOrders() => select(orders).get();

  Future<bool> updateOrder(Order entry) => update(orders).replace(entry);

  Future<Order?> getOrderById(int id) =>
      (select(orders)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();

  Future<int> deleteOrder(int id) =>
      (delete(orders)..where((tbl) => tbl.id.equals(id))).go();

  Stream<List<Order>> watchAllOrders() => select(orders).watch();

  // -------------------------
  // STORES CRUD
  // -------------------------
// Insert
  Future<int> insertStore(StoresCompanion store) async {
    return into(stores).insert(store);
  }

// Update
  Future<bool> updateStore(Store storeData) async {
    return update(stores).replace(storeData);
  }

// Delete
  Future<int> deleteStore(int id) async {
    return (delete(stores)..where((tbl) => tbl.id.equals(id))).go();
  }

// Get all stores
  Future<List<Store>> getAllStores() async {
    return select(stores).get();
  }

  // -------------------------
  // JOIN: Customer + Orders + Products + Suppliers
  // -------------------------
  Future<List<CustomerFullInfo>> getCustomerFullInfo() async {
    final results = await (select(customer).join([
      leftOuterJoin(orders, orders.customerId.equalsExp(customer.id)),
      leftOuterJoin(
          opticProducts, opticProducts.id.equalsExp(orders.productId)),
      leftOuterJoin(
          suppliers, suppliers.id.equalsExp(opticProducts.supplierId)),
    ])).get();

    return results.map((row) {
      return CustomerFullInfo(
        customer: row.readTable(customer),
        order: row.readTableOrNull(orders),
        opticProduct: row.readTableOrNull(opticProducts),
        supplier: row.readTableOrNull(suppliers),
      );
    }).toList();
  }
}

// Helper model for join results
class CustomerFullInfo {
  final CustomerData customer;
  final Order? order;
  final OpticProduct? opticProduct;
  final Supplier? supplier;

  CustomerFullInfo({
    required this.customer,
    this.order,
    this.opticProduct,
    this.supplier,
  });
}

// -------------------------
// Open DB connection
// -------------------------
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app_database.sqlite'));

    // ✅ Delete old DB to start fresh
    // if (await file.exists()) {
    //   await file.delete();
    //   print("Old DB deleted. Fresh DB will be created.");
    // }

    print("DB path: ${file.path}");
    return NativeDatabase(file);
  });
}
