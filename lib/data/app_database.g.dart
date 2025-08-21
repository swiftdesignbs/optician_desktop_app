// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ProductMasterTable extends ProductMaster
    with TableInfo<$ProductMasterTable, ProductMasterData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductMasterTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _productCodeMeta =
      const VerificationMeta('productCode');
  @override
  late final GeneratedColumn<String> productCode = GeneratedColumn<String>(
      'product_code', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _productNameMeta =
      const VerificationMeta('productName');
  @override
  late final GeneratedColumn<String> productName = GeneratedColumn<String>(
      'product_name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _materialMeta =
      const VerificationMeta('material');
  @override
  late final GeneratedColumn<String> material = GeneratedColumn<String>(
      'material', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _brandMeta = const VerificationMeta('brand');
  @override
  late final GeneratedColumn<String> brand = GeneratedColumn<String>(
      'brand', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _subBrandMeta =
      const VerificationMeta('subBrand');
  @override
  late final GeneratedColumn<String> subBrand = GeneratedColumn<String>(
      'sub_brand', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _sizeMeta = const VerificationMeta('size');
  @override
  late final GeneratedColumn<String> size = GeneratedColumn<String>(
      'size', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _colorsMeta = const VerificationMeta('colors');
  @override
  late final GeneratedColumn<String> colors = GeneratedColumn<String>(
      'colors', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lensType1Meta =
      const VerificationMeta('lensType1');
  @override
  late final GeneratedColumn<String> lensType1 = GeneratedColumn<String>(
      'lens_type1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lensType2Meta =
      const VerificationMeta('lensType2');
  @override
  late final GeneratedColumn<String> lensType2 = GeneratedColumn<String>(
      'lens_type2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _shapeMeta = const VerificationMeta('shape');
  @override
  late final GeneratedColumn<String> shape = GeneratedColumn<String>(
      'shape', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
      'gender', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _allowNegativeStockMeta =
      const VerificationMeta('allowNegativeStock');
  @override
  late final GeneratedColumn<bool> allowNegativeStock = GeneratedColumn<bool>(
      'allow_negative_stock', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("allow_negative_stock" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _boxPackMeta =
      const VerificationMeta('boxPack');
  @override
  late final GeneratedColumn<String> boxPack = GeneratedColumn<String>(
      'box_pack', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _rackMeta = const VerificationMeta('rack');
  @override
  late final GeneratedColumn<String> rack = GeneratedColumn<String>(
      'rack', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _modelNoMeta =
      const VerificationMeta('modelNo');
  @override
  late final GeneratedColumn<String> modelNo = GeneratedColumn<String>(
      'model_no', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdByMeta =
      const VerificationMeta('createdBy');
  @override
  late final GeneratedColumn<String> createdBy = GeneratedColumn<String>(
      'created_by', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        productCode,
        productName,
        category,
        material,
        brand,
        subBrand,
        size,
        colors,
        lensType1,
        lensType2,
        shape,
        gender,
        allowNegativeStock,
        boxPack,
        rack,
        modelNo,
        createdBy,
        createdDate
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product_master';
  @override
  VerificationContext validateIntegrity(Insertable<ProductMasterData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('product_code')) {
      context.handle(
          _productCodeMeta,
          productCode.isAcceptableOrUnknown(
              data['product_code']!, _productCodeMeta));
    } else if (isInserting) {
      context.missing(_productCodeMeta);
    }
    if (data.containsKey('product_name')) {
      context.handle(
          _productNameMeta,
          productName.isAcceptableOrUnknown(
              data['product_name']!, _productNameMeta));
    } else if (isInserting) {
      context.missing(_productNameMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    }
    if (data.containsKey('material')) {
      context.handle(_materialMeta,
          material.isAcceptableOrUnknown(data['material']!, _materialMeta));
    }
    if (data.containsKey('brand')) {
      context.handle(
          _brandMeta, brand.isAcceptableOrUnknown(data['brand']!, _brandMeta));
    }
    if (data.containsKey('sub_brand')) {
      context.handle(_subBrandMeta,
          subBrand.isAcceptableOrUnknown(data['sub_brand']!, _subBrandMeta));
    }
    if (data.containsKey('size')) {
      context.handle(
          _sizeMeta, size.isAcceptableOrUnknown(data['size']!, _sizeMeta));
    }
    if (data.containsKey('colors')) {
      context.handle(_colorsMeta,
          colors.isAcceptableOrUnknown(data['colors']!, _colorsMeta));
    }
    if (data.containsKey('lens_type1')) {
      context.handle(_lensType1Meta,
          lensType1.isAcceptableOrUnknown(data['lens_type1']!, _lensType1Meta));
    }
    if (data.containsKey('lens_type2')) {
      context.handle(_lensType2Meta,
          lensType2.isAcceptableOrUnknown(data['lens_type2']!, _lensType2Meta));
    }
    if (data.containsKey('shape')) {
      context.handle(
          _shapeMeta, shape.isAcceptableOrUnknown(data['shape']!, _shapeMeta));
    }
    if (data.containsKey('gender')) {
      context.handle(_genderMeta,
          gender.isAcceptableOrUnknown(data['gender']!, _genderMeta));
    }
    if (data.containsKey('allow_negative_stock')) {
      context.handle(
          _allowNegativeStockMeta,
          allowNegativeStock.isAcceptableOrUnknown(
              data['allow_negative_stock']!, _allowNegativeStockMeta));
    }
    if (data.containsKey('box_pack')) {
      context.handle(_boxPackMeta,
          boxPack.isAcceptableOrUnknown(data['box_pack']!, _boxPackMeta));
    }
    if (data.containsKey('rack')) {
      context.handle(
          _rackMeta, rack.isAcceptableOrUnknown(data['rack']!, _rackMeta));
    }
    if (data.containsKey('model_no')) {
      context.handle(_modelNoMeta,
          modelNo.isAcceptableOrUnknown(data['model_no']!, _modelNoMeta));
    }
    if (data.containsKey('created_by')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductMasterData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductMasterData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      productCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_code'])!,
      productName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_name'])!,
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category']),
      material: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}material']),
      brand: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}brand']),
      subBrand: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sub_brand']),
      size: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}size']),
      colors: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}colors']),
      lensType1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lens_type1']),
      lensType2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lens_type2']),
      shape: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}shape']),
      gender: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gender']),
      allowNegativeStock: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}allow_negative_stock'])!,
      boxPack: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}box_pack']),
      rack: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}rack']),
      modelNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}model_no']),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_by']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
    );
  }

  @override
  $ProductMasterTable createAlias(String alias) {
    return $ProductMasterTable(attachedDatabase, alias);
  }
}

class ProductMasterData extends DataClass
    implements Insertable<ProductMasterData> {
  final int id;
  final String productCode;
  final String productName;
  final String? category;
  final String? material;
  final String? brand;
  final String? subBrand;
  final String? size;
  final String? colors;
  final String? lensType1;
  final String? lensType2;
  final String? shape;
  final String? gender;
  final bool allowNegativeStock;
  final String? boxPack;
  final String? rack;
  final String? modelNo;
  final String? createdBy;
  final DateTime? createdDate;
  const ProductMasterData(
      {required this.id,
      required this.productCode,
      required this.productName,
      this.category,
      this.material,
      this.brand,
      this.subBrand,
      this.size,
      this.colors,
      this.lensType1,
      this.lensType2,
      this.shape,
      this.gender,
      required this.allowNegativeStock,
      this.boxPack,
      this.rack,
      this.modelNo,
      this.createdBy,
      this.createdDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['product_code'] = Variable<String>(productCode);
    map['product_name'] = Variable<String>(productName);
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<String>(category);
    }
    if (!nullToAbsent || material != null) {
      map['material'] = Variable<String>(material);
    }
    if (!nullToAbsent || brand != null) {
      map['brand'] = Variable<String>(brand);
    }
    if (!nullToAbsent || subBrand != null) {
      map['sub_brand'] = Variable<String>(subBrand);
    }
    if (!nullToAbsent || size != null) {
      map['size'] = Variable<String>(size);
    }
    if (!nullToAbsent || colors != null) {
      map['colors'] = Variable<String>(colors);
    }
    if (!nullToAbsent || lensType1 != null) {
      map['lens_type1'] = Variable<String>(lensType1);
    }
    if (!nullToAbsent || lensType2 != null) {
      map['lens_type2'] = Variable<String>(lensType2);
    }
    if (!nullToAbsent || shape != null) {
      map['shape'] = Variable<String>(shape);
    }
    if (!nullToAbsent || gender != null) {
      map['gender'] = Variable<String>(gender);
    }
    map['allow_negative_stock'] = Variable<bool>(allowNegativeStock);
    if (!nullToAbsent || boxPack != null) {
      map['box_pack'] = Variable<String>(boxPack);
    }
    if (!nullToAbsent || rack != null) {
      map['rack'] = Variable<String>(rack);
    }
    if (!nullToAbsent || modelNo != null) {
      map['model_no'] = Variable<String>(modelNo);
    }
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<String>(createdBy);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    return map;
  }

  ProductMasterCompanion toCompanion(bool nullToAbsent) {
    return ProductMasterCompanion(
      id: Value(id),
      productCode: Value(productCode),
      productName: Value(productName),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      material: material == null && nullToAbsent
          ? const Value.absent()
          : Value(material),
      brand:
          brand == null && nullToAbsent ? const Value.absent() : Value(brand),
      subBrand: subBrand == null && nullToAbsent
          ? const Value.absent()
          : Value(subBrand),
      size: size == null && nullToAbsent ? const Value.absent() : Value(size),
      colors:
          colors == null && nullToAbsent ? const Value.absent() : Value(colors),
      lensType1: lensType1 == null && nullToAbsent
          ? const Value.absent()
          : Value(lensType1),
      lensType2: lensType2 == null && nullToAbsent
          ? const Value.absent()
          : Value(lensType2),
      shape:
          shape == null && nullToAbsent ? const Value.absent() : Value(shape),
      gender:
          gender == null && nullToAbsent ? const Value.absent() : Value(gender),
      allowNegativeStock: Value(allowNegativeStock),
      boxPack: boxPack == null && nullToAbsent
          ? const Value.absent()
          : Value(boxPack),
      rack: rack == null && nullToAbsent ? const Value.absent() : Value(rack),
      modelNo: modelNo == null && nullToAbsent
          ? const Value.absent()
          : Value(modelNo),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
    );
  }

  factory ProductMasterData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductMasterData(
      id: serializer.fromJson<int>(json['id']),
      productCode: serializer.fromJson<String>(json['productCode']),
      productName: serializer.fromJson<String>(json['productName']),
      category: serializer.fromJson<String?>(json['category']),
      material: serializer.fromJson<String?>(json['material']),
      brand: serializer.fromJson<String?>(json['brand']),
      subBrand: serializer.fromJson<String?>(json['subBrand']),
      size: serializer.fromJson<String?>(json['size']),
      colors: serializer.fromJson<String?>(json['colors']),
      lensType1: serializer.fromJson<String?>(json['lensType1']),
      lensType2: serializer.fromJson<String?>(json['lensType2']),
      shape: serializer.fromJson<String?>(json['shape']),
      gender: serializer.fromJson<String?>(json['gender']),
      allowNegativeStock: serializer.fromJson<bool>(json['allowNegativeStock']),
      boxPack: serializer.fromJson<String?>(json['boxPack']),
      rack: serializer.fromJson<String?>(json['rack']),
      modelNo: serializer.fromJson<String?>(json['modelNo']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'productCode': serializer.toJson<String>(productCode),
      'productName': serializer.toJson<String>(productName),
      'category': serializer.toJson<String?>(category),
      'material': serializer.toJson<String?>(material),
      'brand': serializer.toJson<String?>(brand),
      'subBrand': serializer.toJson<String?>(subBrand),
      'size': serializer.toJson<String?>(size),
      'colors': serializer.toJson<String?>(colors),
      'lensType1': serializer.toJson<String?>(lensType1),
      'lensType2': serializer.toJson<String?>(lensType2),
      'shape': serializer.toJson<String?>(shape),
      'gender': serializer.toJson<String?>(gender),
      'allowNegativeStock': serializer.toJson<bool>(allowNegativeStock),
      'boxPack': serializer.toJson<String?>(boxPack),
      'rack': serializer.toJson<String?>(rack),
      'modelNo': serializer.toJson<String?>(modelNo),
      'createdBy': serializer.toJson<String?>(createdBy),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
    };
  }

  ProductMasterData copyWith(
          {int? id,
          String? productCode,
          String? productName,
          Value<String?> category = const Value.absent(),
          Value<String?> material = const Value.absent(),
          Value<String?> brand = const Value.absent(),
          Value<String?> subBrand = const Value.absent(),
          Value<String?> size = const Value.absent(),
          Value<String?> colors = const Value.absent(),
          Value<String?> lensType1 = const Value.absent(),
          Value<String?> lensType2 = const Value.absent(),
          Value<String?> shape = const Value.absent(),
          Value<String?> gender = const Value.absent(),
          bool? allowNegativeStock,
          Value<String?> boxPack = const Value.absent(),
          Value<String?> rack = const Value.absent(),
          Value<String?> modelNo = const Value.absent(),
          Value<String?> createdBy = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent()}) =>
      ProductMasterData(
        id: id ?? this.id,
        productCode: productCode ?? this.productCode,
        productName: productName ?? this.productName,
        category: category.present ? category.value : this.category,
        material: material.present ? material.value : this.material,
        brand: brand.present ? brand.value : this.brand,
        subBrand: subBrand.present ? subBrand.value : this.subBrand,
        size: size.present ? size.value : this.size,
        colors: colors.present ? colors.value : this.colors,
        lensType1: lensType1.present ? lensType1.value : this.lensType1,
        lensType2: lensType2.present ? lensType2.value : this.lensType2,
        shape: shape.present ? shape.value : this.shape,
        gender: gender.present ? gender.value : this.gender,
        allowNegativeStock: allowNegativeStock ?? this.allowNegativeStock,
        boxPack: boxPack.present ? boxPack.value : this.boxPack,
        rack: rack.present ? rack.value : this.rack,
        modelNo: modelNo.present ? modelNo.value : this.modelNo,
        createdBy: createdBy.present ? createdBy.value : this.createdBy,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
      );
  ProductMasterData copyWithCompanion(ProductMasterCompanion data) {
    return ProductMasterData(
      id: data.id.present ? data.id.value : this.id,
      productCode:
          data.productCode.present ? data.productCode.value : this.productCode,
      productName:
          data.productName.present ? data.productName.value : this.productName,
      category: data.category.present ? data.category.value : this.category,
      material: data.material.present ? data.material.value : this.material,
      brand: data.brand.present ? data.brand.value : this.brand,
      subBrand: data.subBrand.present ? data.subBrand.value : this.subBrand,
      size: data.size.present ? data.size.value : this.size,
      colors: data.colors.present ? data.colors.value : this.colors,
      lensType1: data.lensType1.present ? data.lensType1.value : this.lensType1,
      lensType2: data.lensType2.present ? data.lensType2.value : this.lensType2,
      shape: data.shape.present ? data.shape.value : this.shape,
      gender: data.gender.present ? data.gender.value : this.gender,
      allowNegativeStock: data.allowNegativeStock.present
          ? data.allowNegativeStock.value
          : this.allowNegativeStock,
      boxPack: data.boxPack.present ? data.boxPack.value : this.boxPack,
      rack: data.rack.present ? data.rack.value : this.rack,
      modelNo: data.modelNo.present ? data.modelNo.value : this.modelNo,
      createdBy: data.createdBy.present ? data.createdBy.value : this.createdBy,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductMasterData(')
          ..write('id: $id, ')
          ..write('productCode: $productCode, ')
          ..write('productName: $productName, ')
          ..write('category: $category, ')
          ..write('material: $material, ')
          ..write('brand: $brand, ')
          ..write('subBrand: $subBrand, ')
          ..write('size: $size, ')
          ..write('colors: $colors, ')
          ..write('lensType1: $lensType1, ')
          ..write('lensType2: $lensType2, ')
          ..write('shape: $shape, ')
          ..write('gender: $gender, ')
          ..write('allowNegativeStock: $allowNegativeStock, ')
          ..write('boxPack: $boxPack, ')
          ..write('rack: $rack, ')
          ..write('modelNo: $modelNo, ')
          ..write('createdBy: $createdBy, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      productCode,
      productName,
      category,
      material,
      brand,
      subBrand,
      size,
      colors,
      lensType1,
      lensType2,
      shape,
      gender,
      allowNegativeStock,
      boxPack,
      rack,
      modelNo,
      createdBy,
      createdDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductMasterData &&
          other.id == this.id &&
          other.productCode == this.productCode &&
          other.productName == this.productName &&
          other.category == this.category &&
          other.material == this.material &&
          other.brand == this.brand &&
          other.subBrand == this.subBrand &&
          other.size == this.size &&
          other.colors == this.colors &&
          other.lensType1 == this.lensType1 &&
          other.lensType2 == this.lensType2 &&
          other.shape == this.shape &&
          other.gender == this.gender &&
          other.allowNegativeStock == this.allowNegativeStock &&
          other.boxPack == this.boxPack &&
          other.rack == this.rack &&
          other.modelNo == this.modelNo &&
          other.createdBy == this.createdBy &&
          other.createdDate == this.createdDate);
}

class ProductMasterCompanion extends UpdateCompanion<ProductMasterData> {
  final Value<int> id;
  final Value<String> productCode;
  final Value<String> productName;
  final Value<String?> category;
  final Value<String?> material;
  final Value<String?> brand;
  final Value<String?> subBrand;
  final Value<String?> size;
  final Value<String?> colors;
  final Value<String?> lensType1;
  final Value<String?> lensType2;
  final Value<String?> shape;
  final Value<String?> gender;
  final Value<bool> allowNegativeStock;
  final Value<String?> boxPack;
  final Value<String?> rack;
  final Value<String?> modelNo;
  final Value<String?> createdBy;
  final Value<DateTime?> createdDate;
  const ProductMasterCompanion({
    this.id = const Value.absent(),
    this.productCode = const Value.absent(),
    this.productName = const Value.absent(),
    this.category = const Value.absent(),
    this.material = const Value.absent(),
    this.brand = const Value.absent(),
    this.subBrand = const Value.absent(),
    this.size = const Value.absent(),
    this.colors = const Value.absent(),
    this.lensType1 = const Value.absent(),
    this.lensType2 = const Value.absent(),
    this.shape = const Value.absent(),
    this.gender = const Value.absent(),
    this.allowNegativeStock = const Value.absent(),
    this.boxPack = const Value.absent(),
    this.rack = const Value.absent(),
    this.modelNo = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.createdDate = const Value.absent(),
  });
  ProductMasterCompanion.insert({
    this.id = const Value.absent(),
    required String productCode,
    required String productName,
    this.category = const Value.absent(),
    this.material = const Value.absent(),
    this.brand = const Value.absent(),
    this.subBrand = const Value.absent(),
    this.size = const Value.absent(),
    this.colors = const Value.absent(),
    this.lensType1 = const Value.absent(),
    this.lensType2 = const Value.absent(),
    this.shape = const Value.absent(),
    this.gender = const Value.absent(),
    this.allowNegativeStock = const Value.absent(),
    this.boxPack = const Value.absent(),
    this.rack = const Value.absent(),
    this.modelNo = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.createdDate = const Value.absent(),
  })  : productCode = Value(productCode),
        productName = Value(productName);
  static Insertable<ProductMasterData> custom({
    Expression<int>? id,
    Expression<String>? productCode,
    Expression<String>? productName,
    Expression<String>? category,
    Expression<String>? material,
    Expression<String>? brand,
    Expression<String>? subBrand,
    Expression<String>? size,
    Expression<String>? colors,
    Expression<String>? lensType1,
    Expression<String>? lensType2,
    Expression<String>? shape,
    Expression<String>? gender,
    Expression<bool>? allowNegativeStock,
    Expression<String>? boxPack,
    Expression<String>? rack,
    Expression<String>? modelNo,
    Expression<String>? createdBy,
    Expression<DateTime>? createdDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (productCode != null) 'product_code': productCode,
      if (productName != null) 'product_name': productName,
      if (category != null) 'category': category,
      if (material != null) 'material': material,
      if (brand != null) 'brand': brand,
      if (subBrand != null) 'sub_brand': subBrand,
      if (size != null) 'size': size,
      if (colors != null) 'colors': colors,
      if (lensType1 != null) 'lens_type1': lensType1,
      if (lensType2 != null) 'lens_type2': lensType2,
      if (shape != null) 'shape': shape,
      if (gender != null) 'gender': gender,
      if (allowNegativeStock != null)
        'allow_negative_stock': allowNegativeStock,
      if (boxPack != null) 'box_pack': boxPack,
      if (rack != null) 'rack': rack,
      if (modelNo != null) 'model_no': modelNo,
      if (createdBy != null) 'created_by': createdBy,
      if (createdDate != null) 'created_date': createdDate,
    });
  }

  ProductMasterCompanion copyWith(
      {Value<int>? id,
      Value<String>? productCode,
      Value<String>? productName,
      Value<String?>? category,
      Value<String?>? material,
      Value<String?>? brand,
      Value<String?>? subBrand,
      Value<String?>? size,
      Value<String?>? colors,
      Value<String?>? lensType1,
      Value<String?>? lensType2,
      Value<String?>? shape,
      Value<String?>? gender,
      Value<bool>? allowNegativeStock,
      Value<String?>? boxPack,
      Value<String?>? rack,
      Value<String?>? modelNo,
      Value<String?>? createdBy,
      Value<DateTime?>? createdDate}) {
    return ProductMasterCompanion(
      id: id ?? this.id,
      productCode: productCode ?? this.productCode,
      productName: productName ?? this.productName,
      category: category ?? this.category,
      material: material ?? this.material,
      brand: brand ?? this.brand,
      subBrand: subBrand ?? this.subBrand,
      size: size ?? this.size,
      colors: colors ?? this.colors,
      lensType1: lensType1 ?? this.lensType1,
      lensType2: lensType2 ?? this.lensType2,
      shape: shape ?? this.shape,
      gender: gender ?? this.gender,
      allowNegativeStock: allowNegativeStock ?? this.allowNegativeStock,
      boxPack: boxPack ?? this.boxPack,
      rack: rack ?? this.rack,
      modelNo: modelNo ?? this.modelNo,
      createdBy: createdBy ?? this.createdBy,
      createdDate: createdDate ?? this.createdDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (productCode.present) {
      map['product_code'] = Variable<String>(productCode.value);
    }
    if (productName.present) {
      map['product_name'] = Variable<String>(productName.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (material.present) {
      map['material'] = Variable<String>(material.value);
    }
    if (brand.present) {
      map['brand'] = Variable<String>(brand.value);
    }
    if (subBrand.present) {
      map['sub_brand'] = Variable<String>(subBrand.value);
    }
    if (size.present) {
      map['size'] = Variable<String>(size.value);
    }
    if (colors.present) {
      map['colors'] = Variable<String>(colors.value);
    }
    if (lensType1.present) {
      map['lens_type1'] = Variable<String>(lensType1.value);
    }
    if (lensType2.present) {
      map['lens_type2'] = Variable<String>(lensType2.value);
    }
    if (shape.present) {
      map['shape'] = Variable<String>(shape.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (allowNegativeStock.present) {
      map['allow_negative_stock'] = Variable<bool>(allowNegativeStock.value);
    }
    if (boxPack.present) {
      map['box_pack'] = Variable<String>(boxPack.value);
    }
    if (rack.present) {
      map['rack'] = Variable<String>(rack.value);
    }
    if (modelNo.present) {
      map['model_no'] = Variable<String>(modelNo.value);
    }
    if (createdBy.present) {
      map['created_by'] = Variable<String>(createdBy.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductMasterCompanion(')
          ..write('id: $id, ')
          ..write('productCode: $productCode, ')
          ..write('productName: $productName, ')
          ..write('category: $category, ')
          ..write('material: $material, ')
          ..write('brand: $brand, ')
          ..write('subBrand: $subBrand, ')
          ..write('size: $size, ')
          ..write('colors: $colors, ')
          ..write('lensType1: $lensType1, ')
          ..write('lensType2: $lensType2, ')
          ..write('shape: $shape, ')
          ..write('gender: $gender, ')
          ..write('allowNegativeStock: $allowNegativeStock, ')
          ..write('boxPack: $boxPack, ')
          ..write('rack: $rack, ')
          ..write('modelNo: $modelNo, ')
          ..write('createdBy: $createdBy, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }
}

class $CustomerTable extends Customer
    with TableInfo<$CustomerTable, CustomerData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _firstNameMeta =
      const VerificationMeta('firstName');
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
      'first_name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _middleNameMeta =
      const VerificationMeta('middleName');
  @override
  late final GeneratedColumn<String> middleName = GeneratedColumn<String>(
      'middle_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lastNameMeta =
      const VerificationMeta('lastName');
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
      'last_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _mobileMeta = const VerificationMeta('mobile');
  @override
  late final GeneratedColumn<String> mobile = GeneratedColumn<String>(
      'mobile', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
      'gender', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _customerTypeMeta =
      const VerificationMeta('customerType');
  @override
  late final GeneratedColumn<String> customerType = GeneratedColumn<String>(
      'customer_type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'city', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _stateMeta = const VerificationMeta('state');
  @override
  late final GeneratedColumn<String> state = GeneratedColumn<String>(
      'state', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _countryMeta =
      const VerificationMeta('country');
  @override
  late final GeneratedColumn<String> country = GeneratedColumn<String>(
      'country', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _pincodeMeta =
      const VerificationMeta('pincode');
  @override
  late final GeneratedColumn<String> pincode = GeneratedColumn<String>(
      'pincode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdByMeta =
      const VerificationMeta('createdBy');
  @override
  late final GeneratedColumn<String> createdBy = GeneratedColumn<String>(
      'created_by', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        firstName,
        middleName,
        lastName,
        mobile,
        email,
        address,
        gender,
        customerType,
        city,
        state,
        country,
        pincode,
        createdBy,
        createdDate
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'customer';
  @override
  VerificationContext validateIntegrity(Insertable<CustomerData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('first_name')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta));
    } else if (isInserting) {
      context.missing(_firstNameMeta);
    }
    if (data.containsKey('middle_name')) {
      context.handle(
          _middleNameMeta,
          middleName.isAcceptableOrUnknown(
              data['middle_name']!, _middleNameMeta));
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta));
    }
    if (data.containsKey('mobile')) {
      context.handle(_mobileMeta,
          mobile.isAcceptableOrUnknown(data['mobile']!, _mobileMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    }
    if (data.containsKey('gender')) {
      context.handle(_genderMeta,
          gender.isAcceptableOrUnknown(data['gender']!, _genderMeta));
    }
    if (data.containsKey('customer_type')) {
      context.handle(
          _customerTypeMeta,
          customerType.isAcceptableOrUnknown(
              data['customer_type']!, _customerTypeMeta));
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    }
    if (data.containsKey('state')) {
      context.handle(
          _stateMeta, state.isAcceptableOrUnknown(data['state']!, _stateMeta));
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['country']!, _countryMeta));
    }
    if (data.containsKey('pincode')) {
      context.handle(_pincodeMeta,
          pincode.isAcceptableOrUnknown(data['pincode']!, _pincodeMeta));
    }
    if (data.containsKey('created_by')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CustomerData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      firstName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}first_name'])!,
      middleName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}middle_name']),
      lastName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_name']),
      mobile: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mobile']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address']),
      gender: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gender']),
      customerType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}customer_type']),
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}city']),
      state: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}state']),
      country: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}country']),
      pincode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pincode']),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_by']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
    );
  }

  @override
  $CustomerTable createAlias(String alias) {
    return $CustomerTable(attachedDatabase, alias);
  }
}

class CustomerData extends DataClass implements Insertable<CustomerData> {
  final int id;
  final String firstName;
  final String? middleName;
  final String? lastName;
  final String? mobile;
  final String? email;
  final String? address;
  final String? gender;
  final String? customerType;
  final String? city;
  final String? state;
  final String? country;
  final String? pincode;
  final String? createdBy;
  final DateTime? createdDate;
  const CustomerData(
      {required this.id,
      required this.firstName,
      this.middleName,
      this.lastName,
      this.mobile,
      this.email,
      this.address,
      this.gender,
      this.customerType,
      this.city,
      this.state,
      this.country,
      this.pincode,
      this.createdBy,
      this.createdDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['first_name'] = Variable<String>(firstName);
    if (!nullToAbsent || middleName != null) {
      map['middle_name'] = Variable<String>(middleName);
    }
    if (!nullToAbsent || lastName != null) {
      map['last_name'] = Variable<String>(lastName);
    }
    if (!nullToAbsent || mobile != null) {
      map['mobile'] = Variable<String>(mobile);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    if (!nullToAbsent || gender != null) {
      map['gender'] = Variable<String>(gender);
    }
    if (!nullToAbsent || customerType != null) {
      map['customer_type'] = Variable<String>(customerType);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String>(city);
    }
    if (!nullToAbsent || state != null) {
      map['state'] = Variable<String>(state);
    }
    if (!nullToAbsent || country != null) {
      map['country'] = Variable<String>(country);
    }
    if (!nullToAbsent || pincode != null) {
      map['pincode'] = Variable<String>(pincode);
    }
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<String>(createdBy);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    return map;
  }

  CustomerCompanion toCompanion(bool nullToAbsent) {
    return CustomerCompanion(
      id: Value(id),
      firstName: Value(firstName),
      middleName: middleName == null && nullToAbsent
          ? const Value.absent()
          : Value(middleName),
      lastName: lastName == null && nullToAbsent
          ? const Value.absent()
          : Value(lastName),
      mobile:
          mobile == null && nullToAbsent ? const Value.absent() : Value(mobile),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      gender:
          gender == null && nullToAbsent ? const Value.absent() : Value(gender),
      customerType: customerType == null && nullToAbsent
          ? const Value.absent()
          : Value(customerType),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      state:
          state == null && nullToAbsent ? const Value.absent() : Value(state),
      country: country == null && nullToAbsent
          ? const Value.absent()
          : Value(country),
      pincode: pincode == null && nullToAbsent
          ? const Value.absent()
          : Value(pincode),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
    );
  }

  factory CustomerData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CustomerData(
      id: serializer.fromJson<int>(json['id']),
      firstName: serializer.fromJson<String>(json['firstName']),
      middleName: serializer.fromJson<String?>(json['middleName']),
      lastName: serializer.fromJson<String?>(json['lastName']),
      mobile: serializer.fromJson<String?>(json['mobile']),
      email: serializer.fromJson<String?>(json['email']),
      address: serializer.fromJson<String?>(json['address']),
      gender: serializer.fromJson<String?>(json['gender']),
      customerType: serializer.fromJson<String?>(json['customerType']),
      city: serializer.fromJson<String?>(json['city']),
      state: serializer.fromJson<String?>(json['state']),
      country: serializer.fromJson<String?>(json['country']),
      pincode: serializer.fromJson<String?>(json['pincode']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'firstName': serializer.toJson<String>(firstName),
      'middleName': serializer.toJson<String?>(middleName),
      'lastName': serializer.toJson<String?>(lastName),
      'mobile': serializer.toJson<String?>(mobile),
      'email': serializer.toJson<String?>(email),
      'address': serializer.toJson<String?>(address),
      'gender': serializer.toJson<String?>(gender),
      'customerType': serializer.toJson<String?>(customerType),
      'city': serializer.toJson<String?>(city),
      'state': serializer.toJson<String?>(state),
      'country': serializer.toJson<String?>(country),
      'pincode': serializer.toJson<String?>(pincode),
      'createdBy': serializer.toJson<String?>(createdBy),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
    };
  }

  CustomerData copyWith(
          {int? id,
          String? firstName,
          Value<String?> middleName = const Value.absent(),
          Value<String?> lastName = const Value.absent(),
          Value<String?> mobile = const Value.absent(),
          Value<String?> email = const Value.absent(),
          Value<String?> address = const Value.absent(),
          Value<String?> gender = const Value.absent(),
          Value<String?> customerType = const Value.absent(),
          Value<String?> city = const Value.absent(),
          Value<String?> state = const Value.absent(),
          Value<String?> country = const Value.absent(),
          Value<String?> pincode = const Value.absent(),
          Value<String?> createdBy = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent()}) =>
      CustomerData(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        middleName: middleName.present ? middleName.value : this.middleName,
        lastName: lastName.present ? lastName.value : this.lastName,
        mobile: mobile.present ? mobile.value : this.mobile,
        email: email.present ? email.value : this.email,
        address: address.present ? address.value : this.address,
        gender: gender.present ? gender.value : this.gender,
        customerType:
            customerType.present ? customerType.value : this.customerType,
        city: city.present ? city.value : this.city,
        state: state.present ? state.value : this.state,
        country: country.present ? country.value : this.country,
        pincode: pincode.present ? pincode.value : this.pincode,
        createdBy: createdBy.present ? createdBy.value : this.createdBy,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
      );
  CustomerData copyWithCompanion(CustomerCompanion data) {
    return CustomerData(
      id: data.id.present ? data.id.value : this.id,
      firstName: data.firstName.present ? data.firstName.value : this.firstName,
      middleName:
          data.middleName.present ? data.middleName.value : this.middleName,
      lastName: data.lastName.present ? data.lastName.value : this.lastName,
      mobile: data.mobile.present ? data.mobile.value : this.mobile,
      email: data.email.present ? data.email.value : this.email,
      address: data.address.present ? data.address.value : this.address,
      gender: data.gender.present ? data.gender.value : this.gender,
      customerType: data.customerType.present
          ? data.customerType.value
          : this.customerType,
      city: data.city.present ? data.city.value : this.city,
      state: data.state.present ? data.state.value : this.state,
      country: data.country.present ? data.country.value : this.country,
      pincode: data.pincode.present ? data.pincode.value : this.pincode,
      createdBy: data.createdBy.present ? data.createdBy.value : this.createdBy,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CustomerData(')
          ..write('id: $id, ')
          ..write('firstName: $firstName, ')
          ..write('middleName: $middleName, ')
          ..write('lastName: $lastName, ')
          ..write('mobile: $mobile, ')
          ..write('email: $email, ')
          ..write('address: $address, ')
          ..write('gender: $gender, ')
          ..write('customerType: $customerType, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('country: $country, ')
          ..write('pincode: $pincode, ')
          ..write('createdBy: $createdBy, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      firstName,
      middleName,
      lastName,
      mobile,
      email,
      address,
      gender,
      customerType,
      city,
      state,
      country,
      pincode,
      createdBy,
      createdDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CustomerData &&
          other.id == this.id &&
          other.firstName == this.firstName &&
          other.middleName == this.middleName &&
          other.lastName == this.lastName &&
          other.mobile == this.mobile &&
          other.email == this.email &&
          other.address == this.address &&
          other.gender == this.gender &&
          other.customerType == this.customerType &&
          other.city == this.city &&
          other.state == this.state &&
          other.country == this.country &&
          other.pincode == this.pincode &&
          other.createdBy == this.createdBy &&
          other.createdDate == this.createdDate);
}

class CustomerCompanion extends UpdateCompanion<CustomerData> {
  final Value<int> id;
  final Value<String> firstName;
  final Value<String?> middleName;
  final Value<String?> lastName;
  final Value<String?> mobile;
  final Value<String?> email;
  final Value<String?> address;
  final Value<String?> gender;
  final Value<String?> customerType;
  final Value<String?> city;
  final Value<String?> state;
  final Value<String?> country;
  final Value<String?> pincode;
  final Value<String?> createdBy;
  final Value<DateTime?> createdDate;
  const CustomerCompanion({
    this.id = const Value.absent(),
    this.firstName = const Value.absent(),
    this.middleName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.mobile = const Value.absent(),
    this.email = const Value.absent(),
    this.address = const Value.absent(),
    this.gender = const Value.absent(),
    this.customerType = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.country = const Value.absent(),
    this.pincode = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.createdDate = const Value.absent(),
  });
  CustomerCompanion.insert({
    this.id = const Value.absent(),
    required String firstName,
    this.middleName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.mobile = const Value.absent(),
    this.email = const Value.absent(),
    this.address = const Value.absent(),
    this.gender = const Value.absent(),
    this.customerType = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.country = const Value.absent(),
    this.pincode = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.createdDate = const Value.absent(),
  }) : firstName = Value(firstName);
  static Insertable<CustomerData> custom({
    Expression<int>? id,
    Expression<String>? firstName,
    Expression<String>? middleName,
    Expression<String>? lastName,
    Expression<String>? mobile,
    Expression<String>? email,
    Expression<String>? address,
    Expression<String>? gender,
    Expression<String>? customerType,
    Expression<String>? city,
    Expression<String>? state,
    Expression<String>? country,
    Expression<String>? pincode,
    Expression<String>? createdBy,
    Expression<DateTime>? createdDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (firstName != null) 'first_name': firstName,
      if (middleName != null) 'middle_name': middleName,
      if (lastName != null) 'last_name': lastName,
      if (mobile != null) 'mobile': mobile,
      if (email != null) 'email': email,
      if (address != null) 'address': address,
      if (gender != null) 'gender': gender,
      if (customerType != null) 'customer_type': customerType,
      if (city != null) 'city': city,
      if (state != null) 'state': state,
      if (country != null) 'country': country,
      if (pincode != null) 'pincode': pincode,
      if (createdBy != null) 'created_by': createdBy,
      if (createdDate != null) 'created_date': createdDate,
    });
  }

  CustomerCompanion copyWith(
      {Value<int>? id,
      Value<String>? firstName,
      Value<String?>? middleName,
      Value<String?>? lastName,
      Value<String?>? mobile,
      Value<String?>? email,
      Value<String?>? address,
      Value<String?>? gender,
      Value<String?>? customerType,
      Value<String?>? city,
      Value<String?>? state,
      Value<String?>? country,
      Value<String?>? pincode,
      Value<String?>? createdBy,
      Value<DateTime?>? createdDate}) {
    return CustomerCompanion(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      middleName: middleName ?? this.middleName,
      lastName: lastName ?? this.lastName,
      mobile: mobile ?? this.mobile,
      email: email ?? this.email,
      address: address ?? this.address,
      gender: gender ?? this.gender,
      customerType: customerType ?? this.customerType,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      pincode: pincode ?? this.pincode,
      createdBy: createdBy ?? this.createdBy,
      createdDate: createdDate ?? this.createdDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (middleName.present) {
      map['middle_name'] = Variable<String>(middleName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (mobile.present) {
      map['mobile'] = Variable<String>(mobile.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (customerType.present) {
      map['customer_type'] = Variable<String>(customerType.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (state.present) {
      map['state'] = Variable<String>(state.value);
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (pincode.present) {
      map['pincode'] = Variable<String>(pincode.value);
    }
    if (createdBy.present) {
      map['created_by'] = Variable<String>(createdBy.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerCompanion(')
          ..write('id: $id, ')
          ..write('firstName: $firstName, ')
          ..write('middleName: $middleName, ')
          ..write('lastName: $lastName, ')
          ..write('mobile: $mobile, ')
          ..write('email: $email, ')
          ..write('address: $address, ')
          ..write('gender: $gender, ')
          ..write('customerType: $customerType, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('country: $country, ')
          ..write('pincode: $pincode, ')
          ..write('createdBy: $createdBy, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }
}

class $SuppliersTable extends Suppliers
    with TableInfo<$SuppliersTable, Supplier> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SuppliersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _supplierCodeMeta =
      const VerificationMeta('supplierCode');
  @override
  late final GeneratedColumn<String> supplierCode = GeneratedColumn<String>(
      'supplier_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _supplierNameMeta =
      const VerificationMeta('supplierName');
  @override
  late final GeneratedColumn<String> supplierName = GeneratedColumn<String>(
      'supplier_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _address1Meta =
      const VerificationMeta('address1');
  @override
  late final GeneratedColumn<String> address1 = GeneratedColumn<String>(
      'address1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _address2Meta =
      const VerificationMeta('address2');
  @override
  late final GeneratedColumn<String> address2 = GeneratedColumn<String>(
      'address2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cstNoMeta = const VerificationMeta('cstNo');
  @override
  late final GeneratedColumn<String> cstNo = GeneratedColumn<String>(
      'cst_no', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tinNoMeta = const VerificationMeta('tinNo');
  @override
  late final GeneratedColumn<String> tinNo = GeneratedColumn<String>(
      'tin_no', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _supplierTypeMeta =
      const VerificationMeta('supplierType');
  @override
  late final GeneratedColumn<String> supplierType = GeneratedColumn<String>(
      'supplier_type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _paymentModeMeta =
      const VerificationMeta('paymentMode');
  @override
  late final GeneratedColumn<String> paymentMode = GeneratedColumn<String>(
      'payment_mode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _stateMeta = const VerificationMeta('state');
  @override
  late final GeneratedColumn<String> state = GeneratedColumn<String>(
      'state', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'city', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _pincodeMeta =
      const VerificationMeta('pincode');
  @override
  late final GeneratedColumn<String> pincode = GeneratedColumn<String>(
      'pincode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _telephoneMeta =
      const VerificationMeta('telephone');
  @override
  late final GeneratedColumn<String> telephone = GeneratedColumn<String>(
      'telephone', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _faxMeta = const VerificationMeta('fax');
  @override
  late final GeneratedColumn<String> fax = GeneratedColumn<String>(
      'fax', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _contactPerson1Meta =
      const VerificationMeta('contactPerson1');
  @override
  late final GeneratedColumn<String> contactPerson1 = GeneratedColumn<String>(
      'contact_person1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _contactPerson2Meta =
      const VerificationMeta('contactPerson2');
  @override
  late final GeneratedColumn<String> contactPerson2 = GeneratedColumn<String>(
      'contact_person2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdByMeta =
      const VerificationMeta('createdBy');
  @override
  late final GeneratedColumn<String> createdBy = GeneratedColumn<String>(
      'created_by', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _computeProductDateMeta =
      const VerificationMeta('computeProductDate');
  @override
  late final GeneratedColumn<String> computeProductDate =
      GeneratedColumn<String>('compute_product_date', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _computeOverallDescMeta =
      const VerificationMeta('computeOverallDesc');
  @override
  late final GeneratedColumn<String> computeOverallDesc =
      GeneratedColumn<String>('compute_overall_desc', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        supplierCode,
        supplierName,
        email,
        address1,
        address2,
        cstNo,
        tinNo,
        supplierType,
        paymentMode,
        state,
        city,
        pincode,
        telephone,
        fax,
        contactPerson1,
        contactPerson2,
        createdBy,
        createdDate,
        computeProductDate,
        computeOverallDesc
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'suppliers';
  @override
  VerificationContext validateIntegrity(Insertable<Supplier> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('supplier_code')) {
      context.handle(
          _supplierCodeMeta,
          supplierCode.isAcceptableOrUnknown(
              data['supplier_code']!, _supplierCodeMeta));
    } else if (isInserting) {
      context.missing(_supplierCodeMeta);
    }
    if (data.containsKey('supplier_name')) {
      context.handle(
          _supplierNameMeta,
          supplierName.isAcceptableOrUnknown(
              data['supplier_name']!, _supplierNameMeta));
    } else if (isInserting) {
      context.missing(_supplierNameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('address1')) {
      context.handle(_address1Meta,
          address1.isAcceptableOrUnknown(data['address1']!, _address1Meta));
    }
    if (data.containsKey('address2')) {
      context.handle(_address2Meta,
          address2.isAcceptableOrUnknown(data['address2']!, _address2Meta));
    }
    if (data.containsKey('cst_no')) {
      context.handle(
          _cstNoMeta, cstNo.isAcceptableOrUnknown(data['cst_no']!, _cstNoMeta));
    }
    if (data.containsKey('tin_no')) {
      context.handle(
          _tinNoMeta, tinNo.isAcceptableOrUnknown(data['tin_no']!, _tinNoMeta));
    }
    if (data.containsKey('supplier_type')) {
      context.handle(
          _supplierTypeMeta,
          supplierType.isAcceptableOrUnknown(
              data['supplier_type']!, _supplierTypeMeta));
    }
    if (data.containsKey('payment_mode')) {
      context.handle(
          _paymentModeMeta,
          paymentMode.isAcceptableOrUnknown(
              data['payment_mode']!, _paymentModeMeta));
    }
    if (data.containsKey('state')) {
      context.handle(
          _stateMeta, state.isAcceptableOrUnknown(data['state']!, _stateMeta));
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    }
    if (data.containsKey('pincode')) {
      context.handle(_pincodeMeta,
          pincode.isAcceptableOrUnknown(data['pincode']!, _pincodeMeta));
    }
    if (data.containsKey('telephone')) {
      context.handle(_telephoneMeta,
          telephone.isAcceptableOrUnknown(data['telephone']!, _telephoneMeta));
    }
    if (data.containsKey('fax')) {
      context.handle(
          _faxMeta, fax.isAcceptableOrUnknown(data['fax']!, _faxMeta));
    }
    if (data.containsKey('contact_person1')) {
      context.handle(
          _contactPerson1Meta,
          contactPerson1.isAcceptableOrUnknown(
              data['contact_person1']!, _contactPerson1Meta));
    }
    if (data.containsKey('contact_person2')) {
      context.handle(
          _contactPerson2Meta,
          contactPerson2.isAcceptableOrUnknown(
              data['contact_person2']!, _contactPerson2Meta));
    }
    if (data.containsKey('created_by')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    if (data.containsKey('compute_product_date')) {
      context.handle(
          _computeProductDateMeta,
          computeProductDate.isAcceptableOrUnknown(
              data['compute_product_date']!, _computeProductDateMeta));
    }
    if (data.containsKey('compute_overall_desc')) {
      context.handle(
          _computeOverallDescMeta,
          computeOverallDesc.isAcceptableOrUnknown(
              data['compute_overall_desc']!, _computeOverallDescMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Supplier map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Supplier(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      supplierCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}supplier_code'])!,
      supplierName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}supplier_name'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      address1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address1']),
      address2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address2']),
      cstNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cst_no']),
      tinNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tin_no']),
      supplierType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}supplier_type']),
      paymentMode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}payment_mode']),
      state: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}state']),
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}city']),
      pincode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pincode']),
      telephone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}telephone']),
      fax: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}fax']),
      contactPerson1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}contact_person1']),
      contactPerson2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}contact_person2']),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_by']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      computeProductDate: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}compute_product_date']),
      computeOverallDesc: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}compute_overall_desc']),
    );
  }

  @override
  $SuppliersTable createAlias(String alias) {
    return $SuppliersTable(attachedDatabase, alias);
  }
}

class Supplier extends DataClass implements Insertable<Supplier> {
  final int id;
  final String supplierCode;
  final String supplierName;
  final String? email;
  final String? address1;
  final String? address2;
  final String? cstNo;
  final String? tinNo;
  final String? supplierType;
  final String? paymentMode;
  final String? state;
  final String? city;
  final String? pincode;
  final String? telephone;
  final String? fax;
  final String? contactPerson1;
  final String? contactPerson2;
  final String? createdBy;
  final DateTime? createdDate;
  final String? computeProductDate;
  final String? computeOverallDesc;
  const Supplier(
      {required this.id,
      required this.supplierCode,
      required this.supplierName,
      this.email,
      this.address1,
      this.address2,
      this.cstNo,
      this.tinNo,
      this.supplierType,
      this.paymentMode,
      this.state,
      this.city,
      this.pincode,
      this.telephone,
      this.fax,
      this.contactPerson1,
      this.contactPerson2,
      this.createdBy,
      this.createdDate,
      this.computeProductDate,
      this.computeOverallDesc});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['supplier_code'] = Variable<String>(supplierCode);
    map['supplier_name'] = Variable<String>(supplierName);
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || address1 != null) {
      map['address1'] = Variable<String>(address1);
    }
    if (!nullToAbsent || address2 != null) {
      map['address2'] = Variable<String>(address2);
    }
    if (!nullToAbsent || cstNo != null) {
      map['cst_no'] = Variable<String>(cstNo);
    }
    if (!nullToAbsent || tinNo != null) {
      map['tin_no'] = Variable<String>(tinNo);
    }
    if (!nullToAbsent || supplierType != null) {
      map['supplier_type'] = Variable<String>(supplierType);
    }
    if (!nullToAbsent || paymentMode != null) {
      map['payment_mode'] = Variable<String>(paymentMode);
    }
    if (!nullToAbsent || state != null) {
      map['state'] = Variable<String>(state);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String>(city);
    }
    if (!nullToAbsent || pincode != null) {
      map['pincode'] = Variable<String>(pincode);
    }
    if (!nullToAbsent || telephone != null) {
      map['telephone'] = Variable<String>(telephone);
    }
    if (!nullToAbsent || fax != null) {
      map['fax'] = Variable<String>(fax);
    }
    if (!nullToAbsent || contactPerson1 != null) {
      map['contact_person1'] = Variable<String>(contactPerson1);
    }
    if (!nullToAbsent || contactPerson2 != null) {
      map['contact_person2'] = Variable<String>(contactPerson2);
    }
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<String>(createdBy);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    if (!nullToAbsent || computeProductDate != null) {
      map['compute_product_date'] = Variable<String>(computeProductDate);
    }
    if (!nullToAbsent || computeOverallDesc != null) {
      map['compute_overall_desc'] = Variable<String>(computeOverallDesc);
    }
    return map;
  }

  SuppliersCompanion toCompanion(bool nullToAbsent) {
    return SuppliersCompanion(
      id: Value(id),
      supplierCode: Value(supplierCode),
      supplierName: Value(supplierName),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      address1: address1 == null && nullToAbsent
          ? const Value.absent()
          : Value(address1),
      address2: address2 == null && nullToAbsent
          ? const Value.absent()
          : Value(address2),
      cstNo:
          cstNo == null && nullToAbsent ? const Value.absent() : Value(cstNo),
      tinNo:
          tinNo == null && nullToAbsent ? const Value.absent() : Value(tinNo),
      supplierType: supplierType == null && nullToAbsent
          ? const Value.absent()
          : Value(supplierType),
      paymentMode: paymentMode == null && nullToAbsent
          ? const Value.absent()
          : Value(paymentMode),
      state:
          state == null && nullToAbsent ? const Value.absent() : Value(state),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      pincode: pincode == null && nullToAbsent
          ? const Value.absent()
          : Value(pincode),
      telephone: telephone == null && nullToAbsent
          ? const Value.absent()
          : Value(telephone),
      fax: fax == null && nullToAbsent ? const Value.absent() : Value(fax),
      contactPerson1: contactPerson1 == null && nullToAbsent
          ? const Value.absent()
          : Value(contactPerson1),
      contactPerson2: contactPerson2 == null && nullToAbsent
          ? const Value.absent()
          : Value(contactPerson2),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      computeProductDate: computeProductDate == null && nullToAbsent
          ? const Value.absent()
          : Value(computeProductDate),
      computeOverallDesc: computeOverallDesc == null && nullToAbsent
          ? const Value.absent()
          : Value(computeOverallDesc),
    );
  }

  factory Supplier.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Supplier(
      id: serializer.fromJson<int>(json['id']),
      supplierCode: serializer.fromJson<String>(json['supplierCode']),
      supplierName: serializer.fromJson<String>(json['supplierName']),
      email: serializer.fromJson<String?>(json['email']),
      address1: serializer.fromJson<String?>(json['address1']),
      address2: serializer.fromJson<String?>(json['address2']),
      cstNo: serializer.fromJson<String?>(json['cstNo']),
      tinNo: serializer.fromJson<String?>(json['tinNo']),
      supplierType: serializer.fromJson<String?>(json['supplierType']),
      paymentMode: serializer.fromJson<String?>(json['paymentMode']),
      state: serializer.fromJson<String?>(json['state']),
      city: serializer.fromJson<String?>(json['city']),
      pincode: serializer.fromJson<String?>(json['pincode']),
      telephone: serializer.fromJson<String?>(json['telephone']),
      fax: serializer.fromJson<String?>(json['fax']),
      contactPerson1: serializer.fromJson<String?>(json['contactPerson1']),
      contactPerson2: serializer.fromJson<String?>(json['contactPerson2']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      computeProductDate:
          serializer.fromJson<String?>(json['computeProductDate']),
      computeOverallDesc:
          serializer.fromJson<String?>(json['computeOverallDesc']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'supplierCode': serializer.toJson<String>(supplierCode),
      'supplierName': serializer.toJson<String>(supplierName),
      'email': serializer.toJson<String?>(email),
      'address1': serializer.toJson<String?>(address1),
      'address2': serializer.toJson<String?>(address2),
      'cstNo': serializer.toJson<String?>(cstNo),
      'tinNo': serializer.toJson<String?>(tinNo),
      'supplierType': serializer.toJson<String?>(supplierType),
      'paymentMode': serializer.toJson<String?>(paymentMode),
      'state': serializer.toJson<String?>(state),
      'city': serializer.toJson<String?>(city),
      'pincode': serializer.toJson<String?>(pincode),
      'telephone': serializer.toJson<String?>(telephone),
      'fax': serializer.toJson<String?>(fax),
      'contactPerson1': serializer.toJson<String?>(contactPerson1),
      'contactPerson2': serializer.toJson<String?>(contactPerson2),
      'createdBy': serializer.toJson<String?>(createdBy),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'computeProductDate': serializer.toJson<String?>(computeProductDate),
      'computeOverallDesc': serializer.toJson<String?>(computeOverallDesc),
    };
  }

  Supplier copyWith(
          {int? id,
          String? supplierCode,
          String? supplierName,
          Value<String?> email = const Value.absent(),
          Value<String?> address1 = const Value.absent(),
          Value<String?> address2 = const Value.absent(),
          Value<String?> cstNo = const Value.absent(),
          Value<String?> tinNo = const Value.absent(),
          Value<String?> supplierType = const Value.absent(),
          Value<String?> paymentMode = const Value.absent(),
          Value<String?> state = const Value.absent(),
          Value<String?> city = const Value.absent(),
          Value<String?> pincode = const Value.absent(),
          Value<String?> telephone = const Value.absent(),
          Value<String?> fax = const Value.absent(),
          Value<String?> contactPerson1 = const Value.absent(),
          Value<String?> contactPerson2 = const Value.absent(),
          Value<String?> createdBy = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          Value<String?> computeProductDate = const Value.absent(),
          Value<String?> computeOverallDesc = const Value.absent()}) =>
      Supplier(
        id: id ?? this.id,
        supplierCode: supplierCode ?? this.supplierCode,
        supplierName: supplierName ?? this.supplierName,
        email: email.present ? email.value : this.email,
        address1: address1.present ? address1.value : this.address1,
        address2: address2.present ? address2.value : this.address2,
        cstNo: cstNo.present ? cstNo.value : this.cstNo,
        tinNo: tinNo.present ? tinNo.value : this.tinNo,
        supplierType:
            supplierType.present ? supplierType.value : this.supplierType,
        paymentMode: paymentMode.present ? paymentMode.value : this.paymentMode,
        state: state.present ? state.value : this.state,
        city: city.present ? city.value : this.city,
        pincode: pincode.present ? pincode.value : this.pincode,
        telephone: telephone.present ? telephone.value : this.telephone,
        fax: fax.present ? fax.value : this.fax,
        contactPerson1:
            contactPerson1.present ? contactPerson1.value : this.contactPerson1,
        contactPerson2:
            contactPerson2.present ? contactPerson2.value : this.contactPerson2,
        createdBy: createdBy.present ? createdBy.value : this.createdBy,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        computeProductDate: computeProductDate.present
            ? computeProductDate.value
            : this.computeProductDate,
        computeOverallDesc: computeOverallDesc.present
            ? computeOverallDesc.value
            : this.computeOverallDesc,
      );
  Supplier copyWithCompanion(SuppliersCompanion data) {
    return Supplier(
      id: data.id.present ? data.id.value : this.id,
      supplierCode: data.supplierCode.present
          ? data.supplierCode.value
          : this.supplierCode,
      supplierName: data.supplierName.present
          ? data.supplierName.value
          : this.supplierName,
      email: data.email.present ? data.email.value : this.email,
      address1: data.address1.present ? data.address1.value : this.address1,
      address2: data.address2.present ? data.address2.value : this.address2,
      cstNo: data.cstNo.present ? data.cstNo.value : this.cstNo,
      tinNo: data.tinNo.present ? data.tinNo.value : this.tinNo,
      supplierType: data.supplierType.present
          ? data.supplierType.value
          : this.supplierType,
      paymentMode:
          data.paymentMode.present ? data.paymentMode.value : this.paymentMode,
      state: data.state.present ? data.state.value : this.state,
      city: data.city.present ? data.city.value : this.city,
      pincode: data.pincode.present ? data.pincode.value : this.pincode,
      telephone: data.telephone.present ? data.telephone.value : this.telephone,
      fax: data.fax.present ? data.fax.value : this.fax,
      contactPerson1: data.contactPerson1.present
          ? data.contactPerson1.value
          : this.contactPerson1,
      contactPerson2: data.contactPerson2.present
          ? data.contactPerson2.value
          : this.contactPerson2,
      createdBy: data.createdBy.present ? data.createdBy.value : this.createdBy,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      computeProductDate: data.computeProductDate.present
          ? data.computeProductDate.value
          : this.computeProductDate,
      computeOverallDesc: data.computeOverallDesc.present
          ? data.computeOverallDesc.value
          : this.computeOverallDesc,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Supplier(')
          ..write('id: $id, ')
          ..write('supplierCode: $supplierCode, ')
          ..write('supplierName: $supplierName, ')
          ..write('email: $email, ')
          ..write('address1: $address1, ')
          ..write('address2: $address2, ')
          ..write('cstNo: $cstNo, ')
          ..write('tinNo: $tinNo, ')
          ..write('supplierType: $supplierType, ')
          ..write('paymentMode: $paymentMode, ')
          ..write('state: $state, ')
          ..write('city: $city, ')
          ..write('pincode: $pincode, ')
          ..write('telephone: $telephone, ')
          ..write('fax: $fax, ')
          ..write('contactPerson1: $contactPerson1, ')
          ..write('contactPerson2: $contactPerson2, ')
          ..write('createdBy: $createdBy, ')
          ..write('createdDate: $createdDate, ')
          ..write('computeProductDate: $computeProductDate, ')
          ..write('computeOverallDesc: $computeOverallDesc')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        supplierCode,
        supplierName,
        email,
        address1,
        address2,
        cstNo,
        tinNo,
        supplierType,
        paymentMode,
        state,
        city,
        pincode,
        telephone,
        fax,
        contactPerson1,
        contactPerson2,
        createdBy,
        createdDate,
        computeProductDate,
        computeOverallDesc
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Supplier &&
          other.id == this.id &&
          other.supplierCode == this.supplierCode &&
          other.supplierName == this.supplierName &&
          other.email == this.email &&
          other.address1 == this.address1 &&
          other.address2 == this.address2 &&
          other.cstNo == this.cstNo &&
          other.tinNo == this.tinNo &&
          other.supplierType == this.supplierType &&
          other.paymentMode == this.paymentMode &&
          other.state == this.state &&
          other.city == this.city &&
          other.pincode == this.pincode &&
          other.telephone == this.telephone &&
          other.fax == this.fax &&
          other.contactPerson1 == this.contactPerson1 &&
          other.contactPerson2 == this.contactPerson2 &&
          other.createdBy == this.createdBy &&
          other.createdDate == this.createdDate &&
          other.computeProductDate == this.computeProductDate &&
          other.computeOverallDesc == this.computeOverallDesc);
}

class SuppliersCompanion extends UpdateCompanion<Supplier> {
  final Value<int> id;
  final Value<String> supplierCode;
  final Value<String> supplierName;
  final Value<String?> email;
  final Value<String?> address1;
  final Value<String?> address2;
  final Value<String?> cstNo;
  final Value<String?> tinNo;
  final Value<String?> supplierType;
  final Value<String?> paymentMode;
  final Value<String?> state;
  final Value<String?> city;
  final Value<String?> pincode;
  final Value<String?> telephone;
  final Value<String?> fax;
  final Value<String?> contactPerson1;
  final Value<String?> contactPerson2;
  final Value<String?> createdBy;
  final Value<DateTime?> createdDate;
  final Value<String?> computeProductDate;
  final Value<String?> computeOverallDesc;
  const SuppliersCompanion({
    this.id = const Value.absent(),
    this.supplierCode = const Value.absent(),
    this.supplierName = const Value.absent(),
    this.email = const Value.absent(),
    this.address1 = const Value.absent(),
    this.address2 = const Value.absent(),
    this.cstNo = const Value.absent(),
    this.tinNo = const Value.absent(),
    this.supplierType = const Value.absent(),
    this.paymentMode = const Value.absent(),
    this.state = const Value.absent(),
    this.city = const Value.absent(),
    this.pincode = const Value.absent(),
    this.telephone = const Value.absent(),
    this.fax = const Value.absent(),
    this.contactPerson1 = const Value.absent(),
    this.contactPerson2 = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.computeProductDate = const Value.absent(),
    this.computeOverallDesc = const Value.absent(),
  });
  SuppliersCompanion.insert({
    this.id = const Value.absent(),
    required String supplierCode,
    required String supplierName,
    this.email = const Value.absent(),
    this.address1 = const Value.absent(),
    this.address2 = const Value.absent(),
    this.cstNo = const Value.absent(),
    this.tinNo = const Value.absent(),
    this.supplierType = const Value.absent(),
    this.paymentMode = const Value.absent(),
    this.state = const Value.absent(),
    this.city = const Value.absent(),
    this.pincode = const Value.absent(),
    this.telephone = const Value.absent(),
    this.fax = const Value.absent(),
    this.contactPerson1 = const Value.absent(),
    this.contactPerson2 = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.computeProductDate = const Value.absent(),
    this.computeOverallDesc = const Value.absent(),
  })  : supplierCode = Value(supplierCode),
        supplierName = Value(supplierName);
  static Insertable<Supplier> custom({
    Expression<int>? id,
    Expression<String>? supplierCode,
    Expression<String>? supplierName,
    Expression<String>? email,
    Expression<String>? address1,
    Expression<String>? address2,
    Expression<String>? cstNo,
    Expression<String>? tinNo,
    Expression<String>? supplierType,
    Expression<String>? paymentMode,
    Expression<String>? state,
    Expression<String>? city,
    Expression<String>? pincode,
    Expression<String>? telephone,
    Expression<String>? fax,
    Expression<String>? contactPerson1,
    Expression<String>? contactPerson2,
    Expression<String>? createdBy,
    Expression<DateTime>? createdDate,
    Expression<String>? computeProductDate,
    Expression<String>? computeOverallDesc,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (supplierCode != null) 'supplier_code': supplierCode,
      if (supplierName != null) 'supplier_name': supplierName,
      if (email != null) 'email': email,
      if (address1 != null) 'address1': address1,
      if (address2 != null) 'address2': address2,
      if (cstNo != null) 'cst_no': cstNo,
      if (tinNo != null) 'tin_no': tinNo,
      if (supplierType != null) 'supplier_type': supplierType,
      if (paymentMode != null) 'payment_mode': paymentMode,
      if (state != null) 'state': state,
      if (city != null) 'city': city,
      if (pincode != null) 'pincode': pincode,
      if (telephone != null) 'telephone': telephone,
      if (fax != null) 'fax': fax,
      if (contactPerson1 != null) 'contact_person1': contactPerson1,
      if (contactPerson2 != null) 'contact_person2': contactPerson2,
      if (createdBy != null) 'created_by': createdBy,
      if (createdDate != null) 'created_date': createdDate,
      if (computeProductDate != null)
        'compute_product_date': computeProductDate,
      if (computeOverallDesc != null)
        'compute_overall_desc': computeOverallDesc,
    });
  }

  SuppliersCompanion copyWith(
      {Value<int>? id,
      Value<String>? supplierCode,
      Value<String>? supplierName,
      Value<String?>? email,
      Value<String?>? address1,
      Value<String?>? address2,
      Value<String?>? cstNo,
      Value<String?>? tinNo,
      Value<String?>? supplierType,
      Value<String?>? paymentMode,
      Value<String?>? state,
      Value<String?>? city,
      Value<String?>? pincode,
      Value<String?>? telephone,
      Value<String?>? fax,
      Value<String?>? contactPerson1,
      Value<String?>? contactPerson2,
      Value<String?>? createdBy,
      Value<DateTime?>? createdDate,
      Value<String?>? computeProductDate,
      Value<String?>? computeOverallDesc}) {
    return SuppliersCompanion(
      id: id ?? this.id,
      supplierCode: supplierCode ?? this.supplierCode,
      supplierName: supplierName ?? this.supplierName,
      email: email ?? this.email,
      address1: address1 ?? this.address1,
      address2: address2 ?? this.address2,
      cstNo: cstNo ?? this.cstNo,
      tinNo: tinNo ?? this.tinNo,
      supplierType: supplierType ?? this.supplierType,
      paymentMode: paymentMode ?? this.paymentMode,
      state: state ?? this.state,
      city: city ?? this.city,
      pincode: pincode ?? this.pincode,
      telephone: telephone ?? this.telephone,
      fax: fax ?? this.fax,
      contactPerson1: contactPerson1 ?? this.contactPerson1,
      contactPerson2: contactPerson2 ?? this.contactPerson2,
      createdBy: createdBy ?? this.createdBy,
      createdDate: createdDate ?? this.createdDate,
      computeProductDate: computeProductDate ?? this.computeProductDate,
      computeOverallDesc: computeOverallDesc ?? this.computeOverallDesc,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (supplierCode.present) {
      map['supplier_code'] = Variable<String>(supplierCode.value);
    }
    if (supplierName.present) {
      map['supplier_name'] = Variable<String>(supplierName.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (address1.present) {
      map['address1'] = Variable<String>(address1.value);
    }
    if (address2.present) {
      map['address2'] = Variable<String>(address2.value);
    }
    if (cstNo.present) {
      map['cst_no'] = Variable<String>(cstNo.value);
    }
    if (tinNo.present) {
      map['tin_no'] = Variable<String>(tinNo.value);
    }
    if (supplierType.present) {
      map['supplier_type'] = Variable<String>(supplierType.value);
    }
    if (paymentMode.present) {
      map['payment_mode'] = Variable<String>(paymentMode.value);
    }
    if (state.present) {
      map['state'] = Variable<String>(state.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (pincode.present) {
      map['pincode'] = Variable<String>(pincode.value);
    }
    if (telephone.present) {
      map['telephone'] = Variable<String>(telephone.value);
    }
    if (fax.present) {
      map['fax'] = Variable<String>(fax.value);
    }
    if (contactPerson1.present) {
      map['contact_person1'] = Variable<String>(contactPerson1.value);
    }
    if (contactPerson2.present) {
      map['contact_person2'] = Variable<String>(contactPerson2.value);
    }
    if (createdBy.present) {
      map['created_by'] = Variable<String>(createdBy.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (computeProductDate.present) {
      map['compute_product_date'] = Variable<String>(computeProductDate.value);
    }
    if (computeOverallDesc.present) {
      map['compute_overall_desc'] = Variable<String>(computeOverallDesc.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SuppliersCompanion(')
          ..write('id: $id, ')
          ..write('supplierCode: $supplierCode, ')
          ..write('supplierName: $supplierName, ')
          ..write('email: $email, ')
          ..write('address1: $address1, ')
          ..write('address2: $address2, ')
          ..write('cstNo: $cstNo, ')
          ..write('tinNo: $tinNo, ')
          ..write('supplierType: $supplierType, ')
          ..write('paymentMode: $paymentMode, ')
          ..write('state: $state, ')
          ..write('city: $city, ')
          ..write('pincode: $pincode, ')
          ..write('telephone: $telephone, ')
          ..write('fax: $fax, ')
          ..write('contactPerson1: $contactPerson1, ')
          ..write('contactPerson2: $contactPerson2, ')
          ..write('createdBy: $createdBy, ')
          ..write('createdDate: $createdDate, ')
          ..write('computeProductDate: $computeProductDate, ')
          ..write('computeOverallDesc: $computeOverallDesc')
          ..write(')'))
        .toString();
  }
}

class $OpticProductsTable extends OpticProducts
    with TableInfo<$OpticProductsTable, OpticProduct> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OpticProductsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _productNameMeta =
      const VerificationMeta('productName');
  @override
  late final GeneratedColumn<String> productName = GeneratedColumn<String>(
      'product_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _hsnCodeMeta =
      const VerificationMeta('hsnCode');
  @override
  late final GeneratedColumn<String> hsnCode = GeneratedColumn<String>(
      'hsn_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _stockMeta = const VerificationMeta('stock');
  @override
  late final GeneratedColumn<int> stock = GeneratedColumn<int>(
      'stock', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _igstMeta = const VerificationMeta('igst');
  @override
  late final GeneratedColumn<double> igst = GeneratedColumn<double>(
      'igst', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _sgstMeta = const VerificationMeta('sgst');
  @override
  late final GeneratedColumn<double> sgst = GeneratedColumn<double>(
      'sgst', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _cgstMeta = const VerificationMeta('cgst');
  @override
  late final GeneratedColumn<double> cgst = GeneratedColumn<double>(
      'cgst', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _gstMeta = const VerificationMeta('gst');
  @override
  late final GeneratedColumn<double> gst = GeneratedColumn<double>(
      'gst', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _discountMeta =
      const VerificationMeta('discount');
  @override
  late final GeneratedColumn<double> discount = GeneratedColumn<double>(
      'discount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _unitMeta = const VerificationMeta('unit');
  @override
  late final GeneratedColumn<String> unit = GeneratedColumn<String>(
      'unit', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _discountPriceMeta =
      const VerificationMeta('discountPrice');
  @override
  late final GeneratedColumn<double> discountPrice = GeneratedColumn<double>(
      'discount_price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _supplierIdMeta =
      const VerificationMeta('supplierId');
  @override
  late final GeneratedColumn<int> supplierId = GeneratedColumn<int>(
      'supplier_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES suppliers (id)'));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        productName,
        hsnCode,
        price,
        description,
        stock,
        igst,
        sgst,
        cgst,
        gst,
        discount,
        unit,
        category,
        discountPrice,
        supplierId,
        createdDate
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'optic_products';
  @override
  VerificationContext validateIntegrity(Insertable<OpticProduct> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('product_name')) {
      context.handle(
          _productNameMeta,
          productName.isAcceptableOrUnknown(
              data['product_name']!, _productNameMeta));
    } else if (isInserting) {
      context.missing(_productNameMeta);
    }
    if (data.containsKey('hsn_code')) {
      context.handle(_hsnCodeMeta,
          hsnCode.isAcceptableOrUnknown(data['hsn_code']!, _hsnCodeMeta));
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('stock')) {
      context.handle(
          _stockMeta, stock.isAcceptableOrUnknown(data['stock']!, _stockMeta));
    }
    if (data.containsKey('igst')) {
      context.handle(
          _igstMeta, igst.isAcceptableOrUnknown(data['igst']!, _igstMeta));
    }
    if (data.containsKey('sgst')) {
      context.handle(
          _sgstMeta, sgst.isAcceptableOrUnknown(data['sgst']!, _sgstMeta));
    }
    if (data.containsKey('cgst')) {
      context.handle(
          _cgstMeta, cgst.isAcceptableOrUnknown(data['cgst']!, _cgstMeta));
    }
    if (data.containsKey('gst')) {
      context.handle(
          _gstMeta, gst.isAcceptableOrUnknown(data['gst']!, _gstMeta));
    }
    if (data.containsKey('discount')) {
      context.handle(_discountMeta,
          discount.isAcceptableOrUnknown(data['discount']!, _discountMeta));
    }
    if (data.containsKey('unit')) {
      context.handle(
          _unitMeta, unit.isAcceptableOrUnknown(data['unit']!, _unitMeta));
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    }
    if (data.containsKey('discount_price')) {
      context.handle(
          _discountPriceMeta,
          discountPrice.isAcceptableOrUnknown(
              data['discount_price']!, _discountPriceMeta));
    }
    if (data.containsKey('supplier_id')) {
      context.handle(
          _supplierIdMeta,
          supplierId.isAcceptableOrUnknown(
              data['supplier_id']!, _supplierIdMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OpticProduct map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OpticProduct(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      productName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_name'])!,
      hsnCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}hsn_code']),
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      stock: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}stock'])!,
      igst: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}igst']),
      sgst: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}sgst']),
      cgst: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}cgst']),
      gst: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}gst']),
      discount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount']),
      unit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}unit']),
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category']),
      discountPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount_price']),
      supplierId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}supplier_id']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
    );
  }

  @override
  $OpticProductsTable createAlias(String alias) {
    return $OpticProductsTable(attachedDatabase, alias);
  }
}

class OpticProduct extends DataClass implements Insertable<OpticProduct> {
  final int id;
  final String productName;
  final String? hsnCode;
  final double price;
  final String? description;
  final int stock;
  final double? igst;
  final double? sgst;
  final double? cgst;
  final double? gst;
  final double? discount;
  final String? unit;
  final String? category;
  final double? discountPrice;
  final int? supplierId;
  final DateTime? createdDate;
  const OpticProduct(
      {required this.id,
      required this.productName,
      this.hsnCode,
      required this.price,
      this.description,
      required this.stock,
      this.igst,
      this.sgst,
      this.cgst,
      this.gst,
      this.discount,
      this.unit,
      this.category,
      this.discountPrice,
      this.supplierId,
      this.createdDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['product_name'] = Variable<String>(productName);
    if (!nullToAbsent || hsnCode != null) {
      map['hsn_code'] = Variable<String>(hsnCode);
    }
    map['price'] = Variable<double>(price);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['stock'] = Variable<int>(stock);
    if (!nullToAbsent || igst != null) {
      map['igst'] = Variable<double>(igst);
    }
    if (!nullToAbsent || sgst != null) {
      map['sgst'] = Variable<double>(sgst);
    }
    if (!nullToAbsent || cgst != null) {
      map['cgst'] = Variable<double>(cgst);
    }
    if (!nullToAbsent || gst != null) {
      map['gst'] = Variable<double>(gst);
    }
    if (!nullToAbsent || discount != null) {
      map['discount'] = Variable<double>(discount);
    }
    if (!nullToAbsent || unit != null) {
      map['unit'] = Variable<String>(unit);
    }
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<String>(category);
    }
    if (!nullToAbsent || discountPrice != null) {
      map['discount_price'] = Variable<double>(discountPrice);
    }
    if (!nullToAbsent || supplierId != null) {
      map['supplier_id'] = Variable<int>(supplierId);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    return map;
  }

  OpticProductsCompanion toCompanion(bool nullToAbsent) {
    return OpticProductsCompanion(
      id: Value(id),
      productName: Value(productName),
      hsnCode: hsnCode == null && nullToAbsent
          ? const Value.absent()
          : Value(hsnCode),
      price: Value(price),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      stock: Value(stock),
      igst: igst == null && nullToAbsent ? const Value.absent() : Value(igst),
      sgst: sgst == null && nullToAbsent ? const Value.absent() : Value(sgst),
      cgst: cgst == null && nullToAbsent ? const Value.absent() : Value(cgst),
      gst: gst == null && nullToAbsent ? const Value.absent() : Value(gst),
      discount: discount == null && nullToAbsent
          ? const Value.absent()
          : Value(discount),
      unit: unit == null && nullToAbsent ? const Value.absent() : Value(unit),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      discountPrice: discountPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(discountPrice),
      supplierId: supplierId == null && nullToAbsent
          ? const Value.absent()
          : Value(supplierId),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
    );
  }

  factory OpticProduct.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OpticProduct(
      id: serializer.fromJson<int>(json['id']),
      productName: serializer.fromJson<String>(json['productName']),
      hsnCode: serializer.fromJson<String?>(json['hsnCode']),
      price: serializer.fromJson<double>(json['price']),
      description: serializer.fromJson<String?>(json['description']),
      stock: serializer.fromJson<int>(json['stock']),
      igst: serializer.fromJson<double?>(json['igst']),
      sgst: serializer.fromJson<double?>(json['sgst']),
      cgst: serializer.fromJson<double?>(json['cgst']),
      gst: serializer.fromJson<double?>(json['gst']),
      discount: serializer.fromJson<double?>(json['discount']),
      unit: serializer.fromJson<String?>(json['unit']),
      category: serializer.fromJson<String?>(json['category']),
      discountPrice: serializer.fromJson<double?>(json['discountPrice']),
      supplierId: serializer.fromJson<int?>(json['supplierId']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'productName': serializer.toJson<String>(productName),
      'hsnCode': serializer.toJson<String?>(hsnCode),
      'price': serializer.toJson<double>(price),
      'description': serializer.toJson<String?>(description),
      'stock': serializer.toJson<int>(stock),
      'igst': serializer.toJson<double?>(igst),
      'sgst': serializer.toJson<double?>(sgst),
      'cgst': serializer.toJson<double?>(cgst),
      'gst': serializer.toJson<double?>(gst),
      'discount': serializer.toJson<double?>(discount),
      'unit': serializer.toJson<String?>(unit),
      'category': serializer.toJson<String?>(category),
      'discountPrice': serializer.toJson<double?>(discountPrice),
      'supplierId': serializer.toJson<int?>(supplierId),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
    };
  }

  OpticProduct copyWith(
          {int? id,
          String? productName,
          Value<String?> hsnCode = const Value.absent(),
          double? price,
          Value<String?> description = const Value.absent(),
          int? stock,
          Value<double?> igst = const Value.absent(),
          Value<double?> sgst = const Value.absent(),
          Value<double?> cgst = const Value.absent(),
          Value<double?> gst = const Value.absent(),
          Value<double?> discount = const Value.absent(),
          Value<String?> unit = const Value.absent(),
          Value<String?> category = const Value.absent(),
          Value<double?> discountPrice = const Value.absent(),
          Value<int?> supplierId = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent()}) =>
      OpticProduct(
        id: id ?? this.id,
        productName: productName ?? this.productName,
        hsnCode: hsnCode.present ? hsnCode.value : this.hsnCode,
        price: price ?? this.price,
        description: description.present ? description.value : this.description,
        stock: stock ?? this.stock,
        igst: igst.present ? igst.value : this.igst,
        sgst: sgst.present ? sgst.value : this.sgst,
        cgst: cgst.present ? cgst.value : this.cgst,
        gst: gst.present ? gst.value : this.gst,
        discount: discount.present ? discount.value : this.discount,
        unit: unit.present ? unit.value : this.unit,
        category: category.present ? category.value : this.category,
        discountPrice:
            discountPrice.present ? discountPrice.value : this.discountPrice,
        supplierId: supplierId.present ? supplierId.value : this.supplierId,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
      );
  OpticProduct copyWithCompanion(OpticProductsCompanion data) {
    return OpticProduct(
      id: data.id.present ? data.id.value : this.id,
      productName:
          data.productName.present ? data.productName.value : this.productName,
      hsnCode: data.hsnCode.present ? data.hsnCode.value : this.hsnCode,
      price: data.price.present ? data.price.value : this.price,
      description:
          data.description.present ? data.description.value : this.description,
      stock: data.stock.present ? data.stock.value : this.stock,
      igst: data.igst.present ? data.igst.value : this.igst,
      sgst: data.sgst.present ? data.sgst.value : this.sgst,
      cgst: data.cgst.present ? data.cgst.value : this.cgst,
      gst: data.gst.present ? data.gst.value : this.gst,
      discount: data.discount.present ? data.discount.value : this.discount,
      unit: data.unit.present ? data.unit.value : this.unit,
      category: data.category.present ? data.category.value : this.category,
      discountPrice: data.discountPrice.present
          ? data.discountPrice.value
          : this.discountPrice,
      supplierId:
          data.supplierId.present ? data.supplierId.value : this.supplierId,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OpticProduct(')
          ..write('id: $id, ')
          ..write('productName: $productName, ')
          ..write('hsnCode: $hsnCode, ')
          ..write('price: $price, ')
          ..write('description: $description, ')
          ..write('stock: $stock, ')
          ..write('igst: $igst, ')
          ..write('sgst: $sgst, ')
          ..write('cgst: $cgst, ')
          ..write('gst: $gst, ')
          ..write('discount: $discount, ')
          ..write('unit: $unit, ')
          ..write('category: $category, ')
          ..write('discountPrice: $discountPrice, ')
          ..write('supplierId: $supplierId, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      productName,
      hsnCode,
      price,
      description,
      stock,
      igst,
      sgst,
      cgst,
      gst,
      discount,
      unit,
      category,
      discountPrice,
      supplierId,
      createdDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OpticProduct &&
          other.id == this.id &&
          other.productName == this.productName &&
          other.hsnCode == this.hsnCode &&
          other.price == this.price &&
          other.description == this.description &&
          other.stock == this.stock &&
          other.igst == this.igst &&
          other.sgst == this.sgst &&
          other.cgst == this.cgst &&
          other.gst == this.gst &&
          other.discount == this.discount &&
          other.unit == this.unit &&
          other.category == this.category &&
          other.discountPrice == this.discountPrice &&
          other.supplierId == this.supplierId &&
          other.createdDate == this.createdDate);
}

class OpticProductsCompanion extends UpdateCompanion<OpticProduct> {
  final Value<int> id;
  final Value<String> productName;
  final Value<String?> hsnCode;
  final Value<double> price;
  final Value<String?> description;
  final Value<int> stock;
  final Value<double?> igst;
  final Value<double?> sgst;
  final Value<double?> cgst;
  final Value<double?> gst;
  final Value<double?> discount;
  final Value<String?> unit;
  final Value<String?> category;
  final Value<double?> discountPrice;
  final Value<int?> supplierId;
  final Value<DateTime?> createdDate;
  const OpticProductsCompanion({
    this.id = const Value.absent(),
    this.productName = const Value.absent(),
    this.hsnCode = const Value.absent(),
    this.price = const Value.absent(),
    this.description = const Value.absent(),
    this.stock = const Value.absent(),
    this.igst = const Value.absent(),
    this.sgst = const Value.absent(),
    this.cgst = const Value.absent(),
    this.gst = const Value.absent(),
    this.discount = const Value.absent(),
    this.unit = const Value.absent(),
    this.category = const Value.absent(),
    this.discountPrice = const Value.absent(),
    this.supplierId = const Value.absent(),
    this.createdDate = const Value.absent(),
  });
  OpticProductsCompanion.insert({
    this.id = const Value.absent(),
    required String productName,
    this.hsnCode = const Value.absent(),
    required double price,
    this.description = const Value.absent(),
    this.stock = const Value.absent(),
    this.igst = const Value.absent(),
    this.sgst = const Value.absent(),
    this.cgst = const Value.absent(),
    this.gst = const Value.absent(),
    this.discount = const Value.absent(),
    this.unit = const Value.absent(),
    this.category = const Value.absent(),
    this.discountPrice = const Value.absent(),
    this.supplierId = const Value.absent(),
    this.createdDate = const Value.absent(),
  })  : productName = Value(productName),
        price = Value(price);
  static Insertable<OpticProduct> custom({
    Expression<int>? id,
    Expression<String>? productName,
    Expression<String>? hsnCode,
    Expression<double>? price,
    Expression<String>? description,
    Expression<int>? stock,
    Expression<double>? igst,
    Expression<double>? sgst,
    Expression<double>? cgst,
    Expression<double>? gst,
    Expression<double>? discount,
    Expression<String>? unit,
    Expression<String>? category,
    Expression<double>? discountPrice,
    Expression<int>? supplierId,
    Expression<DateTime>? createdDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (productName != null) 'product_name': productName,
      if (hsnCode != null) 'hsn_code': hsnCode,
      if (price != null) 'price': price,
      if (description != null) 'description': description,
      if (stock != null) 'stock': stock,
      if (igst != null) 'igst': igst,
      if (sgst != null) 'sgst': sgst,
      if (cgst != null) 'cgst': cgst,
      if (gst != null) 'gst': gst,
      if (discount != null) 'discount': discount,
      if (unit != null) 'unit': unit,
      if (category != null) 'category': category,
      if (discountPrice != null) 'discount_price': discountPrice,
      if (supplierId != null) 'supplier_id': supplierId,
      if (createdDate != null) 'created_date': createdDate,
    });
  }

  OpticProductsCompanion copyWith(
      {Value<int>? id,
      Value<String>? productName,
      Value<String?>? hsnCode,
      Value<double>? price,
      Value<String?>? description,
      Value<int>? stock,
      Value<double?>? igst,
      Value<double?>? sgst,
      Value<double?>? cgst,
      Value<double?>? gst,
      Value<double?>? discount,
      Value<String?>? unit,
      Value<String?>? category,
      Value<double?>? discountPrice,
      Value<int?>? supplierId,
      Value<DateTime?>? createdDate}) {
    return OpticProductsCompanion(
      id: id ?? this.id,
      productName: productName ?? this.productName,
      hsnCode: hsnCode ?? this.hsnCode,
      price: price ?? this.price,
      description: description ?? this.description,
      stock: stock ?? this.stock,
      igst: igst ?? this.igst,
      sgst: sgst ?? this.sgst,
      cgst: cgst ?? this.cgst,
      gst: gst ?? this.gst,
      discount: discount ?? this.discount,
      unit: unit ?? this.unit,
      category: category ?? this.category,
      discountPrice: discountPrice ?? this.discountPrice,
      supplierId: supplierId ?? this.supplierId,
      createdDate: createdDate ?? this.createdDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (productName.present) {
      map['product_name'] = Variable<String>(productName.value);
    }
    if (hsnCode.present) {
      map['hsn_code'] = Variable<String>(hsnCode.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (stock.present) {
      map['stock'] = Variable<int>(stock.value);
    }
    if (igst.present) {
      map['igst'] = Variable<double>(igst.value);
    }
    if (sgst.present) {
      map['sgst'] = Variable<double>(sgst.value);
    }
    if (cgst.present) {
      map['cgst'] = Variable<double>(cgst.value);
    }
    if (gst.present) {
      map['gst'] = Variable<double>(gst.value);
    }
    if (discount.present) {
      map['discount'] = Variable<double>(discount.value);
    }
    if (unit.present) {
      map['unit'] = Variable<String>(unit.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (discountPrice.present) {
      map['discount_price'] = Variable<double>(discountPrice.value);
    }
    if (supplierId.present) {
      map['supplier_id'] = Variable<int>(supplierId.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OpticProductsCompanion(')
          ..write('id: $id, ')
          ..write('productName: $productName, ')
          ..write('hsnCode: $hsnCode, ')
          ..write('price: $price, ')
          ..write('description: $description, ')
          ..write('stock: $stock, ')
          ..write('igst: $igst, ')
          ..write('sgst: $sgst, ')
          ..write('cgst: $cgst, ')
          ..write('gst: $gst, ')
          ..write('discount: $discount, ')
          ..write('unit: $unit, ')
          ..write('category: $category, ')
          ..write('discountPrice: $discountPrice, ')
          ..write('supplierId: $supplierId, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }
}

class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, Category> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _categoryCodeMeta =
      const VerificationMeta('categoryCode');
  @override
  late final GeneratedColumn<String> categoryCode = GeneratedColumn<String>(
      'category_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _commissionMeta =
      const VerificationMeta('commission');
  @override
  late final GeneratedColumn<String> commission = GeneratedColumn<String>(
      'commission', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _classificationMeta =
      const VerificationMeta('classification');
  @override
  late final GeneratedColumn<String> classification = GeneratedColumn<String>(
      'classification', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _allowBillingMeta =
      const VerificationMeta('allowBilling');
  @override
  late final GeneratedColumn<String> allowBilling = GeneratedColumn<String>(
      'allow_billing', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _maintainSingleQtyMeta =
      const VerificationMeta('maintainSingleQty');
  @override
  late final GeneratedColumn<String> maintainSingleQty =
      GeneratedColumn<String>('maintain_single_qty', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _defaultPurchaseTaxMeta =
      const VerificationMeta('defaultPurchaseTax');
  @override
  late final GeneratedColumn<String> defaultPurchaseTax =
      GeneratedColumn<String>('default_purchase_tax', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _defaultSalesTaxMeta =
      const VerificationMeta('defaultSalesTax');
  @override
  late final GeneratedColumn<String> defaultSalesTax = GeneratedColumn<String>(
      'default_sales_tax', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdByMeta =
      const VerificationMeta('createdBy');
  @override
  late final GeneratedColumn<String> createdBy = GeneratedColumn<String>(
      'created_by', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        categoryCode,
        description,
        commission,
        classification,
        allowBilling,
        maintainSingleQty,
        defaultPurchaseTax,
        defaultSalesTax,
        createdBy,
        createdDate
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'categories';
  @override
  VerificationContext validateIntegrity(Insertable<Category> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('category_code')) {
      context.handle(
          _categoryCodeMeta,
          categoryCode.isAcceptableOrUnknown(
              data['category_code']!, _categoryCodeMeta));
    } else if (isInserting) {
      context.missing(_categoryCodeMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('commission')) {
      context.handle(
          _commissionMeta,
          commission.isAcceptableOrUnknown(
              data['commission']!, _commissionMeta));
    }
    if (data.containsKey('classification')) {
      context.handle(
          _classificationMeta,
          classification.isAcceptableOrUnknown(
              data['classification']!, _classificationMeta));
    }
    if (data.containsKey('allow_billing')) {
      context.handle(
          _allowBillingMeta,
          allowBilling.isAcceptableOrUnknown(
              data['allow_billing']!, _allowBillingMeta));
    }
    if (data.containsKey('maintain_single_qty')) {
      context.handle(
          _maintainSingleQtyMeta,
          maintainSingleQty.isAcceptableOrUnknown(
              data['maintain_single_qty']!, _maintainSingleQtyMeta));
    }
    if (data.containsKey('default_purchase_tax')) {
      context.handle(
          _defaultPurchaseTaxMeta,
          defaultPurchaseTax.isAcceptableOrUnknown(
              data['default_purchase_tax']!, _defaultPurchaseTaxMeta));
    }
    if (data.containsKey('default_sales_tax')) {
      context.handle(
          _defaultSalesTaxMeta,
          defaultSalesTax.isAcceptableOrUnknown(
              data['default_sales_tax']!, _defaultSalesTaxMeta));
    }
    if (data.containsKey('created_by')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Category map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Category(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      categoryCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category_code'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      commission: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}commission']),
      classification: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}classification']),
      allowBilling: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}allow_billing']),
      maintainSingleQty: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}maintain_single_qty']),
      defaultPurchaseTax: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}default_purchase_tax']),
      defaultSalesTax: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}default_sales_tax']),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_by']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
    );
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(attachedDatabase, alias);
  }
}

class Category extends DataClass implements Insertable<Category> {
  final int id;
  final String categoryCode;
  final String description;
  final String? commission;
  final String? classification;
  final String? allowBilling;
  final String? maintainSingleQty;
  final String? defaultPurchaseTax;
  final String? defaultSalesTax;
  final String? createdBy;
  final DateTime? createdDate;
  const Category(
      {required this.id,
      required this.categoryCode,
      required this.description,
      this.commission,
      this.classification,
      this.allowBilling,
      this.maintainSingleQty,
      this.defaultPurchaseTax,
      this.defaultSalesTax,
      this.createdBy,
      this.createdDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['category_code'] = Variable<String>(categoryCode);
    map['description'] = Variable<String>(description);
    if (!nullToAbsent || commission != null) {
      map['commission'] = Variable<String>(commission);
    }
    if (!nullToAbsent || classification != null) {
      map['classification'] = Variable<String>(classification);
    }
    if (!nullToAbsent || allowBilling != null) {
      map['allow_billing'] = Variable<String>(allowBilling);
    }
    if (!nullToAbsent || maintainSingleQty != null) {
      map['maintain_single_qty'] = Variable<String>(maintainSingleQty);
    }
    if (!nullToAbsent || defaultPurchaseTax != null) {
      map['default_purchase_tax'] = Variable<String>(defaultPurchaseTax);
    }
    if (!nullToAbsent || defaultSalesTax != null) {
      map['default_sales_tax'] = Variable<String>(defaultSalesTax);
    }
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<String>(createdBy);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      id: Value(id),
      categoryCode: Value(categoryCode),
      description: Value(description),
      commission: commission == null && nullToAbsent
          ? const Value.absent()
          : Value(commission),
      classification: classification == null && nullToAbsent
          ? const Value.absent()
          : Value(classification),
      allowBilling: allowBilling == null && nullToAbsent
          ? const Value.absent()
          : Value(allowBilling),
      maintainSingleQty: maintainSingleQty == null && nullToAbsent
          ? const Value.absent()
          : Value(maintainSingleQty),
      defaultPurchaseTax: defaultPurchaseTax == null && nullToAbsent
          ? const Value.absent()
          : Value(defaultPurchaseTax),
      defaultSalesTax: defaultSalesTax == null && nullToAbsent
          ? const Value.absent()
          : Value(defaultSalesTax),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
    );
  }

  factory Category.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Category(
      id: serializer.fromJson<int>(json['id']),
      categoryCode: serializer.fromJson<String>(json['categoryCode']),
      description: serializer.fromJson<String>(json['description']),
      commission: serializer.fromJson<String?>(json['commission']),
      classification: serializer.fromJson<String?>(json['classification']),
      allowBilling: serializer.fromJson<String?>(json['allowBilling']),
      maintainSingleQty:
          serializer.fromJson<String?>(json['maintainSingleQty']),
      defaultPurchaseTax:
          serializer.fromJson<String?>(json['defaultPurchaseTax']),
      defaultSalesTax: serializer.fromJson<String?>(json['defaultSalesTax']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'categoryCode': serializer.toJson<String>(categoryCode),
      'description': serializer.toJson<String>(description),
      'commission': serializer.toJson<String?>(commission),
      'classification': serializer.toJson<String?>(classification),
      'allowBilling': serializer.toJson<String?>(allowBilling),
      'maintainSingleQty': serializer.toJson<String?>(maintainSingleQty),
      'defaultPurchaseTax': serializer.toJson<String?>(defaultPurchaseTax),
      'defaultSalesTax': serializer.toJson<String?>(defaultSalesTax),
      'createdBy': serializer.toJson<String?>(createdBy),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
    };
  }

  Category copyWith(
          {int? id,
          String? categoryCode,
          String? description,
          Value<String?> commission = const Value.absent(),
          Value<String?> classification = const Value.absent(),
          Value<String?> allowBilling = const Value.absent(),
          Value<String?> maintainSingleQty = const Value.absent(),
          Value<String?> defaultPurchaseTax = const Value.absent(),
          Value<String?> defaultSalesTax = const Value.absent(),
          Value<String?> createdBy = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent()}) =>
      Category(
        id: id ?? this.id,
        categoryCode: categoryCode ?? this.categoryCode,
        description: description ?? this.description,
        commission: commission.present ? commission.value : this.commission,
        classification:
            classification.present ? classification.value : this.classification,
        allowBilling:
            allowBilling.present ? allowBilling.value : this.allowBilling,
        maintainSingleQty: maintainSingleQty.present
            ? maintainSingleQty.value
            : this.maintainSingleQty,
        defaultPurchaseTax: defaultPurchaseTax.present
            ? defaultPurchaseTax.value
            : this.defaultPurchaseTax,
        defaultSalesTax: defaultSalesTax.present
            ? defaultSalesTax.value
            : this.defaultSalesTax,
        createdBy: createdBy.present ? createdBy.value : this.createdBy,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
      );
  Category copyWithCompanion(CategoriesCompanion data) {
    return Category(
      id: data.id.present ? data.id.value : this.id,
      categoryCode: data.categoryCode.present
          ? data.categoryCode.value
          : this.categoryCode,
      description:
          data.description.present ? data.description.value : this.description,
      commission:
          data.commission.present ? data.commission.value : this.commission,
      classification: data.classification.present
          ? data.classification.value
          : this.classification,
      allowBilling: data.allowBilling.present
          ? data.allowBilling.value
          : this.allowBilling,
      maintainSingleQty: data.maintainSingleQty.present
          ? data.maintainSingleQty.value
          : this.maintainSingleQty,
      defaultPurchaseTax: data.defaultPurchaseTax.present
          ? data.defaultPurchaseTax.value
          : this.defaultPurchaseTax,
      defaultSalesTax: data.defaultSalesTax.present
          ? data.defaultSalesTax.value
          : this.defaultSalesTax,
      createdBy: data.createdBy.present ? data.createdBy.value : this.createdBy,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Category(')
          ..write('id: $id, ')
          ..write('categoryCode: $categoryCode, ')
          ..write('description: $description, ')
          ..write('commission: $commission, ')
          ..write('classification: $classification, ')
          ..write('allowBilling: $allowBilling, ')
          ..write('maintainSingleQty: $maintainSingleQty, ')
          ..write('defaultPurchaseTax: $defaultPurchaseTax, ')
          ..write('defaultSalesTax: $defaultSalesTax, ')
          ..write('createdBy: $createdBy, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      categoryCode,
      description,
      commission,
      classification,
      allowBilling,
      maintainSingleQty,
      defaultPurchaseTax,
      defaultSalesTax,
      createdBy,
      createdDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Category &&
          other.id == this.id &&
          other.categoryCode == this.categoryCode &&
          other.description == this.description &&
          other.commission == this.commission &&
          other.classification == this.classification &&
          other.allowBilling == this.allowBilling &&
          other.maintainSingleQty == this.maintainSingleQty &&
          other.defaultPurchaseTax == this.defaultPurchaseTax &&
          other.defaultSalesTax == this.defaultSalesTax &&
          other.createdBy == this.createdBy &&
          other.createdDate == this.createdDate);
}

class CategoriesCompanion extends UpdateCompanion<Category> {
  final Value<int> id;
  final Value<String> categoryCode;
  final Value<String> description;
  final Value<String?> commission;
  final Value<String?> classification;
  final Value<String?> allowBilling;
  final Value<String?> maintainSingleQty;
  final Value<String?> defaultPurchaseTax;
  final Value<String?> defaultSalesTax;
  final Value<String?> createdBy;
  final Value<DateTime?> createdDate;
  const CategoriesCompanion({
    this.id = const Value.absent(),
    this.categoryCode = const Value.absent(),
    this.description = const Value.absent(),
    this.commission = const Value.absent(),
    this.classification = const Value.absent(),
    this.allowBilling = const Value.absent(),
    this.maintainSingleQty = const Value.absent(),
    this.defaultPurchaseTax = const Value.absent(),
    this.defaultSalesTax = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.createdDate = const Value.absent(),
  });
  CategoriesCompanion.insert({
    this.id = const Value.absent(),
    required String categoryCode,
    required String description,
    this.commission = const Value.absent(),
    this.classification = const Value.absent(),
    this.allowBilling = const Value.absent(),
    this.maintainSingleQty = const Value.absent(),
    this.defaultPurchaseTax = const Value.absent(),
    this.defaultSalesTax = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.createdDate = const Value.absent(),
  })  : categoryCode = Value(categoryCode),
        description = Value(description);
  static Insertable<Category> custom({
    Expression<int>? id,
    Expression<String>? categoryCode,
    Expression<String>? description,
    Expression<String>? commission,
    Expression<String>? classification,
    Expression<String>? allowBilling,
    Expression<String>? maintainSingleQty,
    Expression<String>? defaultPurchaseTax,
    Expression<String>? defaultSalesTax,
    Expression<String>? createdBy,
    Expression<DateTime>? createdDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (categoryCode != null) 'category_code': categoryCode,
      if (description != null) 'description': description,
      if (commission != null) 'commission': commission,
      if (classification != null) 'classification': classification,
      if (allowBilling != null) 'allow_billing': allowBilling,
      if (maintainSingleQty != null) 'maintain_single_qty': maintainSingleQty,
      if (defaultPurchaseTax != null)
        'default_purchase_tax': defaultPurchaseTax,
      if (defaultSalesTax != null) 'default_sales_tax': defaultSalesTax,
      if (createdBy != null) 'created_by': createdBy,
      if (createdDate != null) 'created_date': createdDate,
    });
  }

  CategoriesCompanion copyWith(
      {Value<int>? id,
      Value<String>? categoryCode,
      Value<String>? description,
      Value<String?>? commission,
      Value<String?>? classification,
      Value<String?>? allowBilling,
      Value<String?>? maintainSingleQty,
      Value<String?>? defaultPurchaseTax,
      Value<String?>? defaultSalesTax,
      Value<String?>? createdBy,
      Value<DateTime?>? createdDate}) {
    return CategoriesCompanion(
      id: id ?? this.id,
      categoryCode: categoryCode ?? this.categoryCode,
      description: description ?? this.description,
      commission: commission ?? this.commission,
      classification: classification ?? this.classification,
      allowBilling: allowBilling ?? this.allowBilling,
      maintainSingleQty: maintainSingleQty ?? this.maintainSingleQty,
      defaultPurchaseTax: defaultPurchaseTax ?? this.defaultPurchaseTax,
      defaultSalesTax: defaultSalesTax ?? this.defaultSalesTax,
      createdBy: createdBy ?? this.createdBy,
      createdDate: createdDate ?? this.createdDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (categoryCode.present) {
      map['category_code'] = Variable<String>(categoryCode.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (commission.present) {
      map['commission'] = Variable<String>(commission.value);
    }
    if (classification.present) {
      map['classification'] = Variable<String>(classification.value);
    }
    if (allowBilling.present) {
      map['allow_billing'] = Variable<String>(allowBilling.value);
    }
    if (maintainSingleQty.present) {
      map['maintain_single_qty'] = Variable<String>(maintainSingleQty.value);
    }
    if (defaultPurchaseTax.present) {
      map['default_purchase_tax'] = Variable<String>(defaultPurchaseTax.value);
    }
    if (defaultSalesTax.present) {
      map['default_sales_tax'] = Variable<String>(defaultSalesTax.value);
    }
    if (createdBy.present) {
      map['created_by'] = Variable<String>(createdBy.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('id: $id, ')
          ..write('categoryCode: $categoryCode, ')
          ..write('description: $description, ')
          ..write('commission: $commission, ')
          ..write('classification: $classification, ')
          ..write('allowBilling: $allowBilling, ')
          ..write('maintainSingleQty: $maintainSingleQty, ')
          ..write('defaultPurchaseTax: $defaultPurchaseTax, ')
          ..write('defaultSalesTax: $defaultSalesTax, ')
          ..write('createdBy: $createdBy, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }
}

class $FittersTable extends Fitters with TableInfo<$FittersTable, Fitter> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FittersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _fitterNameMeta =
      const VerificationMeta('fitterName');
  @override
  late final GeneratedColumn<String> fitterName = GeneratedColumn<String>(
      'fitter_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fitterCodeMeta =
      const VerificationMeta('fitterCode');
  @override
  late final GeneratedColumn<String> fitterCode = GeneratedColumn<String>(
      'fitter_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _address1Meta =
      const VerificationMeta('address1');
  @override
  late final GeneratedColumn<String> address1 = GeneratedColumn<String>(
      'address1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _stateMeta = const VerificationMeta('state');
  @override
  late final GeneratedColumn<String> state = GeneratedColumn<String>(
      'state', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'city', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _telephoneMeta =
      const VerificationMeta('telephone');
  @override
  late final GeneratedColumn<String> telephone = GeneratedColumn<String>(
      'telephone', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _landlineMeta =
      const VerificationMeta('landline');
  @override
  late final GeneratedColumn<String> landline = GeneratedColumn<String>(
      'landline', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _pincodeMeta =
      const VerificationMeta('pincode');
  @override
  late final GeneratedColumn<String> pincode = GeneratedColumn<String>(
      'pincode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _daysMeta = const VerificationMeta('days');
  @override
  late final GeneratedColumn<int> days = GeneratedColumn<int>(
      'days', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _feesMeta = const VerificationMeta('fees');
  @override
  late final GeneratedColumn<double> fees = GeneratedColumn<double>(
      'fees', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _createdByMeta =
      const VerificationMeta('createdBy');
  @override
  late final GeneratedColumn<String> createdBy = GeneratedColumn<String>(
      'created_by', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        fitterName,
        fitterCode,
        address1,
        state,
        city,
        telephone,
        landline,
        email,
        pincode,
        days,
        fees,
        createdBy,
        createdDate
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'fitters';
  @override
  VerificationContext validateIntegrity(Insertable<Fitter> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('fitter_name')) {
      context.handle(
          _fitterNameMeta,
          fitterName.isAcceptableOrUnknown(
              data['fitter_name']!, _fitterNameMeta));
    } else if (isInserting) {
      context.missing(_fitterNameMeta);
    }
    if (data.containsKey('fitter_code')) {
      context.handle(
          _fitterCodeMeta,
          fitterCode.isAcceptableOrUnknown(
              data['fitter_code']!, _fitterCodeMeta));
    } else if (isInserting) {
      context.missing(_fitterCodeMeta);
    }
    if (data.containsKey('address1')) {
      context.handle(_address1Meta,
          address1.isAcceptableOrUnknown(data['address1']!, _address1Meta));
    }
    if (data.containsKey('state')) {
      context.handle(
          _stateMeta, state.isAcceptableOrUnknown(data['state']!, _stateMeta));
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    }
    if (data.containsKey('telephone')) {
      context.handle(_telephoneMeta,
          telephone.isAcceptableOrUnknown(data['telephone']!, _telephoneMeta));
    }
    if (data.containsKey('landline')) {
      context.handle(_landlineMeta,
          landline.isAcceptableOrUnknown(data['landline']!, _landlineMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('pincode')) {
      context.handle(_pincodeMeta,
          pincode.isAcceptableOrUnknown(data['pincode']!, _pincodeMeta));
    }
    if (data.containsKey('days')) {
      context.handle(
          _daysMeta, days.isAcceptableOrUnknown(data['days']!, _daysMeta));
    }
    if (data.containsKey('fees')) {
      context.handle(
          _feesMeta, fees.isAcceptableOrUnknown(data['fees']!, _feesMeta));
    }
    if (data.containsKey('created_by')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Fitter map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Fitter(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      fitterName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}fitter_name'])!,
      fitterCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}fitter_code'])!,
      address1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address1']),
      state: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}state']),
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}city']),
      telephone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}telephone']),
      landline: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}landline']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      pincode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pincode']),
      days: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}days']),
      fees: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}fees']),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_by']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
    );
  }

  @override
  $FittersTable createAlias(String alias) {
    return $FittersTable(attachedDatabase, alias);
  }
}

class Fitter extends DataClass implements Insertable<Fitter> {
  final int id;
  final String fitterName;
  final String fitterCode;
  final String? address1;
  final String? state;
  final String? city;
  final String? telephone;
  final String? landline;
  final String? email;
  final String? pincode;
  final int? days;
  final double? fees;
  final String? createdBy;
  final DateTime? createdDate;
  const Fitter(
      {required this.id,
      required this.fitterName,
      required this.fitterCode,
      this.address1,
      this.state,
      this.city,
      this.telephone,
      this.landline,
      this.email,
      this.pincode,
      this.days,
      this.fees,
      this.createdBy,
      this.createdDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['fitter_name'] = Variable<String>(fitterName);
    map['fitter_code'] = Variable<String>(fitterCode);
    if (!nullToAbsent || address1 != null) {
      map['address1'] = Variable<String>(address1);
    }
    if (!nullToAbsent || state != null) {
      map['state'] = Variable<String>(state);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String>(city);
    }
    if (!nullToAbsent || telephone != null) {
      map['telephone'] = Variable<String>(telephone);
    }
    if (!nullToAbsent || landline != null) {
      map['landline'] = Variable<String>(landline);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || pincode != null) {
      map['pincode'] = Variable<String>(pincode);
    }
    if (!nullToAbsent || days != null) {
      map['days'] = Variable<int>(days);
    }
    if (!nullToAbsent || fees != null) {
      map['fees'] = Variable<double>(fees);
    }
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<String>(createdBy);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    return map;
  }

  FittersCompanion toCompanion(bool nullToAbsent) {
    return FittersCompanion(
      id: Value(id),
      fitterName: Value(fitterName),
      fitterCode: Value(fitterCode),
      address1: address1 == null && nullToAbsent
          ? const Value.absent()
          : Value(address1),
      state:
          state == null && nullToAbsent ? const Value.absent() : Value(state),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      telephone: telephone == null && nullToAbsent
          ? const Value.absent()
          : Value(telephone),
      landline: landline == null && nullToAbsent
          ? const Value.absent()
          : Value(landline),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      pincode: pincode == null && nullToAbsent
          ? const Value.absent()
          : Value(pincode),
      days: days == null && nullToAbsent ? const Value.absent() : Value(days),
      fees: fees == null && nullToAbsent ? const Value.absent() : Value(fees),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
    );
  }

  factory Fitter.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Fitter(
      id: serializer.fromJson<int>(json['id']),
      fitterName: serializer.fromJson<String>(json['fitterName']),
      fitterCode: serializer.fromJson<String>(json['fitterCode']),
      address1: serializer.fromJson<String?>(json['address1']),
      state: serializer.fromJson<String?>(json['state']),
      city: serializer.fromJson<String?>(json['city']),
      telephone: serializer.fromJson<String?>(json['telephone']),
      landline: serializer.fromJson<String?>(json['landline']),
      email: serializer.fromJson<String?>(json['email']),
      pincode: serializer.fromJson<String?>(json['pincode']),
      days: serializer.fromJson<int?>(json['days']),
      fees: serializer.fromJson<double?>(json['fees']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'fitterName': serializer.toJson<String>(fitterName),
      'fitterCode': serializer.toJson<String>(fitterCode),
      'address1': serializer.toJson<String?>(address1),
      'state': serializer.toJson<String?>(state),
      'city': serializer.toJson<String?>(city),
      'telephone': serializer.toJson<String?>(telephone),
      'landline': serializer.toJson<String?>(landline),
      'email': serializer.toJson<String?>(email),
      'pincode': serializer.toJson<String?>(pincode),
      'days': serializer.toJson<int?>(days),
      'fees': serializer.toJson<double?>(fees),
      'createdBy': serializer.toJson<String?>(createdBy),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
    };
  }

  Fitter copyWith(
          {int? id,
          String? fitterName,
          String? fitterCode,
          Value<String?> address1 = const Value.absent(),
          Value<String?> state = const Value.absent(),
          Value<String?> city = const Value.absent(),
          Value<String?> telephone = const Value.absent(),
          Value<String?> landline = const Value.absent(),
          Value<String?> email = const Value.absent(),
          Value<String?> pincode = const Value.absent(),
          Value<int?> days = const Value.absent(),
          Value<double?> fees = const Value.absent(),
          Value<String?> createdBy = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent()}) =>
      Fitter(
        id: id ?? this.id,
        fitterName: fitterName ?? this.fitterName,
        fitterCode: fitterCode ?? this.fitterCode,
        address1: address1.present ? address1.value : this.address1,
        state: state.present ? state.value : this.state,
        city: city.present ? city.value : this.city,
        telephone: telephone.present ? telephone.value : this.telephone,
        landline: landline.present ? landline.value : this.landline,
        email: email.present ? email.value : this.email,
        pincode: pincode.present ? pincode.value : this.pincode,
        days: days.present ? days.value : this.days,
        fees: fees.present ? fees.value : this.fees,
        createdBy: createdBy.present ? createdBy.value : this.createdBy,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
      );
  Fitter copyWithCompanion(FittersCompanion data) {
    return Fitter(
      id: data.id.present ? data.id.value : this.id,
      fitterName:
          data.fitterName.present ? data.fitterName.value : this.fitterName,
      fitterCode:
          data.fitterCode.present ? data.fitterCode.value : this.fitterCode,
      address1: data.address1.present ? data.address1.value : this.address1,
      state: data.state.present ? data.state.value : this.state,
      city: data.city.present ? data.city.value : this.city,
      telephone: data.telephone.present ? data.telephone.value : this.telephone,
      landline: data.landline.present ? data.landline.value : this.landline,
      email: data.email.present ? data.email.value : this.email,
      pincode: data.pincode.present ? data.pincode.value : this.pincode,
      days: data.days.present ? data.days.value : this.days,
      fees: data.fees.present ? data.fees.value : this.fees,
      createdBy: data.createdBy.present ? data.createdBy.value : this.createdBy,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Fitter(')
          ..write('id: $id, ')
          ..write('fitterName: $fitterName, ')
          ..write('fitterCode: $fitterCode, ')
          ..write('address1: $address1, ')
          ..write('state: $state, ')
          ..write('city: $city, ')
          ..write('telephone: $telephone, ')
          ..write('landline: $landline, ')
          ..write('email: $email, ')
          ..write('pincode: $pincode, ')
          ..write('days: $days, ')
          ..write('fees: $fees, ')
          ..write('createdBy: $createdBy, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      fitterName,
      fitterCode,
      address1,
      state,
      city,
      telephone,
      landline,
      email,
      pincode,
      days,
      fees,
      createdBy,
      createdDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Fitter &&
          other.id == this.id &&
          other.fitterName == this.fitterName &&
          other.fitterCode == this.fitterCode &&
          other.address1 == this.address1 &&
          other.state == this.state &&
          other.city == this.city &&
          other.telephone == this.telephone &&
          other.landline == this.landline &&
          other.email == this.email &&
          other.pincode == this.pincode &&
          other.days == this.days &&
          other.fees == this.fees &&
          other.createdBy == this.createdBy &&
          other.createdDate == this.createdDate);
}

class FittersCompanion extends UpdateCompanion<Fitter> {
  final Value<int> id;
  final Value<String> fitterName;
  final Value<String> fitterCode;
  final Value<String?> address1;
  final Value<String?> state;
  final Value<String?> city;
  final Value<String?> telephone;
  final Value<String?> landline;
  final Value<String?> email;
  final Value<String?> pincode;
  final Value<int?> days;
  final Value<double?> fees;
  final Value<String?> createdBy;
  final Value<DateTime?> createdDate;
  const FittersCompanion({
    this.id = const Value.absent(),
    this.fitterName = const Value.absent(),
    this.fitterCode = const Value.absent(),
    this.address1 = const Value.absent(),
    this.state = const Value.absent(),
    this.city = const Value.absent(),
    this.telephone = const Value.absent(),
    this.landline = const Value.absent(),
    this.email = const Value.absent(),
    this.pincode = const Value.absent(),
    this.days = const Value.absent(),
    this.fees = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.createdDate = const Value.absent(),
  });
  FittersCompanion.insert({
    this.id = const Value.absent(),
    required String fitterName,
    required String fitterCode,
    this.address1 = const Value.absent(),
    this.state = const Value.absent(),
    this.city = const Value.absent(),
    this.telephone = const Value.absent(),
    this.landline = const Value.absent(),
    this.email = const Value.absent(),
    this.pincode = const Value.absent(),
    this.days = const Value.absent(),
    this.fees = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.createdDate = const Value.absent(),
  })  : fitterName = Value(fitterName),
        fitterCode = Value(fitterCode);
  static Insertable<Fitter> custom({
    Expression<int>? id,
    Expression<String>? fitterName,
    Expression<String>? fitterCode,
    Expression<String>? address1,
    Expression<String>? state,
    Expression<String>? city,
    Expression<String>? telephone,
    Expression<String>? landline,
    Expression<String>? email,
    Expression<String>? pincode,
    Expression<int>? days,
    Expression<double>? fees,
    Expression<String>? createdBy,
    Expression<DateTime>? createdDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fitterName != null) 'fitter_name': fitterName,
      if (fitterCode != null) 'fitter_code': fitterCode,
      if (address1 != null) 'address1': address1,
      if (state != null) 'state': state,
      if (city != null) 'city': city,
      if (telephone != null) 'telephone': telephone,
      if (landline != null) 'landline': landline,
      if (email != null) 'email': email,
      if (pincode != null) 'pincode': pincode,
      if (days != null) 'days': days,
      if (fees != null) 'fees': fees,
      if (createdBy != null) 'created_by': createdBy,
      if (createdDate != null) 'created_date': createdDate,
    });
  }

  FittersCompanion copyWith(
      {Value<int>? id,
      Value<String>? fitterName,
      Value<String>? fitterCode,
      Value<String?>? address1,
      Value<String?>? state,
      Value<String?>? city,
      Value<String?>? telephone,
      Value<String?>? landline,
      Value<String?>? email,
      Value<String?>? pincode,
      Value<int?>? days,
      Value<double?>? fees,
      Value<String?>? createdBy,
      Value<DateTime?>? createdDate}) {
    return FittersCompanion(
      id: id ?? this.id,
      fitterName: fitterName ?? this.fitterName,
      fitterCode: fitterCode ?? this.fitterCode,
      address1: address1 ?? this.address1,
      state: state ?? this.state,
      city: city ?? this.city,
      telephone: telephone ?? this.telephone,
      landline: landline ?? this.landline,
      email: email ?? this.email,
      pincode: pincode ?? this.pincode,
      days: days ?? this.days,
      fees: fees ?? this.fees,
      createdBy: createdBy ?? this.createdBy,
      createdDate: createdDate ?? this.createdDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (fitterName.present) {
      map['fitter_name'] = Variable<String>(fitterName.value);
    }
    if (fitterCode.present) {
      map['fitter_code'] = Variable<String>(fitterCode.value);
    }
    if (address1.present) {
      map['address1'] = Variable<String>(address1.value);
    }
    if (state.present) {
      map['state'] = Variable<String>(state.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (telephone.present) {
      map['telephone'] = Variable<String>(telephone.value);
    }
    if (landline.present) {
      map['landline'] = Variable<String>(landline.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (pincode.present) {
      map['pincode'] = Variable<String>(pincode.value);
    }
    if (days.present) {
      map['days'] = Variable<int>(days.value);
    }
    if (fees.present) {
      map['fees'] = Variable<double>(fees.value);
    }
    if (createdBy.present) {
      map['created_by'] = Variable<String>(createdBy.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FittersCompanion(')
          ..write('id: $id, ')
          ..write('fitterName: $fitterName, ')
          ..write('fitterCode: $fitterCode, ')
          ..write('address1: $address1, ')
          ..write('state: $state, ')
          ..write('city: $city, ')
          ..write('telephone: $telephone, ')
          ..write('landline: $landline, ')
          ..write('email: $email, ')
          ..write('pincode: $pincode, ')
          ..write('days: $days, ')
          ..write('fees: $fees, ')
          ..write('createdBy: $createdBy, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }
}

class $OrdersTable extends Orders with TableInfo<$OrdersTable, Order> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrdersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _customerIdMeta =
      const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<int> customerId = GeneratedColumn<int>(
      'customer_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES customer (id)'));
  static const VerificationMeta _productIdMeta =
      const VerificationMeta('productId');
  @override
  late final GeneratedColumn<int> productId = GeneratedColumn<int>(
      'product_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES optic_products (id)'));
  static const VerificationMeta _orderDateMeta =
      const VerificationMeta('orderDate');
  @override
  late final GeneratedColumn<DateTime> orderDate = GeneratedColumn<DateTime>(
      'order_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _totalAmountMeta =
      const VerificationMeta('totalAmount');
  @override
  late final GeneratedColumn<double> totalAmount = GeneratedColumn<double>(
      'total_amount', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('Pending'));
  static const VerificationMeta _shippingAddressMeta =
      const VerificationMeta('shippingAddress');
  @override
  late final GeneratedColumn<String> shippingAddress = GeneratedColumn<String>(
      'shipping_address', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _billingAddressMeta =
      const VerificationMeta('billingAddress');
  @override
  late final GeneratedColumn<String> billingAddress = GeneratedColumn<String>(
      'billing_address', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _paymentMethodMeta =
      const VerificationMeta('paymentMethod');
  @override
  late final GeneratedColumn<String> paymentMethod = GeneratedColumn<String>(
      'payment_method', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _mobileNoMeta =
      const VerificationMeta('mobileNo');
  @override
  late final GeneratedColumn<String> mobileNo = GeneratedColumn<String>(
      'mobile_no', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _referenceNoMeta =
      const VerificationMeta('referenceNo');
  @override
  late final GeneratedColumn<String> referenceNo = GeneratedColumn<String>(
      'reference_no', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _productsJsonMeta =
      const VerificationMeta('productsJson');
  @override
  late final GeneratedColumn<String> productsJson = GeneratedColumn<String>(
      'products_json', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        customerId,
        productId,
        orderDate,
        totalAmount,
        status,
        shippingAddress,
        billingAddress,
        paymentMethod,
        mobileNo,
        email,
        referenceNo,
        productsJson,
        createdDate,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'orders';
  @override
  VerificationContext validateIntegrity(Insertable<Order> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('customer_id')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['customer_id']!, _customerIdMeta));
    }
    if (data.containsKey('product_id')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta));
    }
    if (data.containsKey('order_date')) {
      context.handle(_orderDateMeta,
          orderDate.isAcceptableOrUnknown(data['order_date']!, _orderDateMeta));
    }
    if (data.containsKey('total_amount')) {
      context.handle(
          _totalAmountMeta,
          totalAmount.isAcceptableOrUnknown(
              data['total_amount']!, _totalAmountMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('shipping_address')) {
      context.handle(
          _shippingAddressMeta,
          shippingAddress.isAcceptableOrUnknown(
              data['shipping_address']!, _shippingAddressMeta));
    }
    if (data.containsKey('billing_address')) {
      context.handle(
          _billingAddressMeta,
          billingAddress.isAcceptableOrUnknown(
              data['billing_address']!, _billingAddressMeta));
    }
    if (data.containsKey('payment_method')) {
      context.handle(
          _paymentMethodMeta,
          paymentMethod.isAcceptableOrUnknown(
              data['payment_method']!, _paymentMethodMeta));
    }
    if (data.containsKey('mobile_no')) {
      context.handle(_mobileNoMeta,
          mobileNo.isAcceptableOrUnknown(data['mobile_no']!, _mobileNoMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('reference_no')) {
      context.handle(
          _referenceNoMeta,
          referenceNo.isAcceptableOrUnknown(
              data['reference_no']!, _referenceNoMeta));
    }
    if (data.containsKey('products_json')) {
      context.handle(
          _productsJsonMeta,
          productsJson.isAcceptableOrUnknown(
              data['products_json']!, _productsJsonMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Order map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Order(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      customerId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}customer_id']),
      productId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}product_id']),
      orderDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}order_date'])!,
      totalAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_amount'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      shippingAddress: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}shipping_address']),
      billingAddress: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}billing_address']),
      paymentMethod: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}payment_method']),
      mobileNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mobile_no']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      referenceNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}reference_no']),
      productsJson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}products_json']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
    );
  }

  @override
  $OrdersTable createAlias(String alias) {
    return $OrdersTable(attachedDatabase, alias);
  }
}

class Order extends DataClass implements Insertable<Order> {
  final int id;
  final int? customerId;
  final int? productId;
  final DateTime orderDate;
  final double totalAmount;
  final String status;
  final String? shippingAddress;
  final String? billingAddress;
  final String? paymentMethod;
  final String? mobileNo;
  final String? email;
  final String? referenceNo;
  final String? productsJson;
  final DateTime? createdDate;
  final DateTime? updatedAt;
  const Order(
      {required this.id,
      this.customerId,
      this.productId,
      required this.orderDate,
      required this.totalAmount,
      required this.status,
      this.shippingAddress,
      this.billingAddress,
      this.paymentMethod,
      this.mobileNo,
      this.email,
      this.referenceNo,
      this.productsJson,
      this.createdDate,
      this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || customerId != null) {
      map['customer_id'] = Variable<int>(customerId);
    }
    if (!nullToAbsent || productId != null) {
      map['product_id'] = Variable<int>(productId);
    }
    map['order_date'] = Variable<DateTime>(orderDate);
    map['total_amount'] = Variable<double>(totalAmount);
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || shippingAddress != null) {
      map['shipping_address'] = Variable<String>(shippingAddress);
    }
    if (!nullToAbsent || billingAddress != null) {
      map['billing_address'] = Variable<String>(billingAddress);
    }
    if (!nullToAbsent || paymentMethod != null) {
      map['payment_method'] = Variable<String>(paymentMethod);
    }
    if (!nullToAbsent || mobileNo != null) {
      map['mobile_no'] = Variable<String>(mobileNo);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || referenceNo != null) {
      map['reference_no'] = Variable<String>(referenceNo);
    }
    if (!nullToAbsent || productsJson != null) {
      map['products_json'] = Variable<String>(productsJson);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  OrdersCompanion toCompanion(bool nullToAbsent) {
    return OrdersCompanion(
      id: Value(id),
      customerId: customerId == null && nullToAbsent
          ? const Value.absent()
          : Value(customerId),
      productId: productId == null && nullToAbsent
          ? const Value.absent()
          : Value(productId),
      orderDate: Value(orderDate),
      totalAmount: Value(totalAmount),
      status: Value(status),
      shippingAddress: shippingAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(shippingAddress),
      billingAddress: billingAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(billingAddress),
      paymentMethod: paymentMethod == null && nullToAbsent
          ? const Value.absent()
          : Value(paymentMethod),
      mobileNo: mobileNo == null && nullToAbsent
          ? const Value.absent()
          : Value(mobileNo),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      referenceNo: referenceNo == null && nullToAbsent
          ? const Value.absent()
          : Value(referenceNo),
      productsJson: productsJson == null && nullToAbsent
          ? const Value.absent()
          : Value(productsJson),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory Order.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Order(
      id: serializer.fromJson<int>(json['id']),
      customerId: serializer.fromJson<int?>(json['customerId']),
      productId: serializer.fromJson<int?>(json['productId']),
      orderDate: serializer.fromJson<DateTime>(json['orderDate']),
      totalAmount: serializer.fromJson<double>(json['totalAmount']),
      status: serializer.fromJson<String>(json['status']),
      shippingAddress: serializer.fromJson<String?>(json['shippingAddress']),
      billingAddress: serializer.fromJson<String?>(json['billingAddress']),
      paymentMethod: serializer.fromJson<String?>(json['paymentMethod']),
      mobileNo: serializer.fromJson<String?>(json['mobileNo']),
      email: serializer.fromJson<String?>(json['email']),
      referenceNo: serializer.fromJson<String?>(json['referenceNo']),
      productsJson: serializer.fromJson<String?>(json['productsJson']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'customerId': serializer.toJson<int?>(customerId),
      'productId': serializer.toJson<int?>(productId),
      'orderDate': serializer.toJson<DateTime>(orderDate),
      'totalAmount': serializer.toJson<double>(totalAmount),
      'status': serializer.toJson<String>(status),
      'shippingAddress': serializer.toJson<String?>(shippingAddress),
      'billingAddress': serializer.toJson<String?>(billingAddress),
      'paymentMethod': serializer.toJson<String?>(paymentMethod),
      'mobileNo': serializer.toJson<String?>(mobileNo),
      'email': serializer.toJson<String?>(email),
      'referenceNo': serializer.toJson<String?>(referenceNo),
      'productsJson': serializer.toJson<String?>(productsJson),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  Order copyWith(
          {int? id,
          Value<int?> customerId = const Value.absent(),
          Value<int?> productId = const Value.absent(),
          DateTime? orderDate,
          double? totalAmount,
          String? status,
          Value<String?> shippingAddress = const Value.absent(),
          Value<String?> billingAddress = const Value.absent(),
          Value<String?> paymentMethod = const Value.absent(),
          Value<String?> mobileNo = const Value.absent(),
          Value<String?> email = const Value.absent(),
          Value<String?> referenceNo = const Value.absent(),
          Value<String?> productsJson = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          Value<DateTime?> updatedAt = const Value.absent()}) =>
      Order(
        id: id ?? this.id,
        customerId: customerId.present ? customerId.value : this.customerId,
        productId: productId.present ? productId.value : this.productId,
        orderDate: orderDate ?? this.orderDate,
        totalAmount: totalAmount ?? this.totalAmount,
        status: status ?? this.status,
        shippingAddress: shippingAddress.present
            ? shippingAddress.value
            : this.shippingAddress,
        billingAddress:
            billingAddress.present ? billingAddress.value : this.billingAddress,
        paymentMethod:
            paymentMethod.present ? paymentMethod.value : this.paymentMethod,
        mobileNo: mobileNo.present ? mobileNo.value : this.mobileNo,
        email: email.present ? email.value : this.email,
        referenceNo: referenceNo.present ? referenceNo.value : this.referenceNo,
        productsJson:
            productsJson.present ? productsJson.value : this.productsJson,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
      );
  Order copyWithCompanion(OrdersCompanion data) {
    return Order(
      id: data.id.present ? data.id.value : this.id,
      customerId:
          data.customerId.present ? data.customerId.value : this.customerId,
      productId: data.productId.present ? data.productId.value : this.productId,
      orderDate: data.orderDate.present ? data.orderDate.value : this.orderDate,
      totalAmount:
          data.totalAmount.present ? data.totalAmount.value : this.totalAmount,
      status: data.status.present ? data.status.value : this.status,
      shippingAddress: data.shippingAddress.present
          ? data.shippingAddress.value
          : this.shippingAddress,
      billingAddress: data.billingAddress.present
          ? data.billingAddress.value
          : this.billingAddress,
      paymentMethod: data.paymentMethod.present
          ? data.paymentMethod.value
          : this.paymentMethod,
      mobileNo: data.mobileNo.present ? data.mobileNo.value : this.mobileNo,
      email: data.email.present ? data.email.value : this.email,
      referenceNo:
          data.referenceNo.present ? data.referenceNo.value : this.referenceNo,
      productsJson: data.productsJson.present
          ? data.productsJson.value
          : this.productsJson,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Order(')
          ..write('id: $id, ')
          ..write('customerId: $customerId, ')
          ..write('productId: $productId, ')
          ..write('orderDate: $orderDate, ')
          ..write('totalAmount: $totalAmount, ')
          ..write('status: $status, ')
          ..write('shippingAddress: $shippingAddress, ')
          ..write('billingAddress: $billingAddress, ')
          ..write('paymentMethod: $paymentMethod, ')
          ..write('mobileNo: $mobileNo, ')
          ..write('email: $email, ')
          ..write('referenceNo: $referenceNo, ')
          ..write('productsJson: $productsJson, ')
          ..write('createdDate: $createdDate, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      customerId,
      productId,
      orderDate,
      totalAmount,
      status,
      shippingAddress,
      billingAddress,
      paymentMethod,
      mobileNo,
      email,
      referenceNo,
      productsJson,
      createdDate,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Order &&
          other.id == this.id &&
          other.customerId == this.customerId &&
          other.productId == this.productId &&
          other.orderDate == this.orderDate &&
          other.totalAmount == this.totalAmount &&
          other.status == this.status &&
          other.shippingAddress == this.shippingAddress &&
          other.billingAddress == this.billingAddress &&
          other.paymentMethod == this.paymentMethod &&
          other.mobileNo == this.mobileNo &&
          other.email == this.email &&
          other.referenceNo == this.referenceNo &&
          other.productsJson == this.productsJson &&
          other.createdDate == this.createdDate &&
          other.updatedAt == this.updatedAt);
}

class OrdersCompanion extends UpdateCompanion<Order> {
  final Value<int> id;
  final Value<int?> customerId;
  final Value<int?> productId;
  final Value<DateTime> orderDate;
  final Value<double> totalAmount;
  final Value<String> status;
  final Value<String?> shippingAddress;
  final Value<String?> billingAddress;
  final Value<String?> paymentMethod;
  final Value<String?> mobileNo;
  final Value<String?> email;
  final Value<String?> referenceNo;
  final Value<String?> productsJson;
  final Value<DateTime?> createdDate;
  final Value<DateTime?> updatedAt;
  const OrdersCompanion({
    this.id = const Value.absent(),
    this.customerId = const Value.absent(),
    this.productId = const Value.absent(),
    this.orderDate = const Value.absent(),
    this.totalAmount = const Value.absent(),
    this.status = const Value.absent(),
    this.shippingAddress = const Value.absent(),
    this.billingAddress = const Value.absent(),
    this.paymentMethod = const Value.absent(),
    this.mobileNo = const Value.absent(),
    this.email = const Value.absent(),
    this.referenceNo = const Value.absent(),
    this.productsJson = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  OrdersCompanion.insert({
    this.id = const Value.absent(),
    this.customerId = const Value.absent(),
    this.productId = const Value.absent(),
    this.orderDate = const Value.absent(),
    this.totalAmount = const Value.absent(),
    this.status = const Value.absent(),
    this.shippingAddress = const Value.absent(),
    this.billingAddress = const Value.absent(),
    this.paymentMethod = const Value.absent(),
    this.mobileNo = const Value.absent(),
    this.email = const Value.absent(),
    this.referenceNo = const Value.absent(),
    this.productsJson = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  static Insertable<Order> custom({
    Expression<int>? id,
    Expression<int>? customerId,
    Expression<int>? productId,
    Expression<DateTime>? orderDate,
    Expression<double>? totalAmount,
    Expression<String>? status,
    Expression<String>? shippingAddress,
    Expression<String>? billingAddress,
    Expression<String>? paymentMethod,
    Expression<String>? mobileNo,
    Expression<String>? email,
    Expression<String>? referenceNo,
    Expression<String>? productsJson,
    Expression<DateTime>? createdDate,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (customerId != null) 'customer_id': customerId,
      if (productId != null) 'product_id': productId,
      if (orderDate != null) 'order_date': orderDate,
      if (totalAmount != null) 'total_amount': totalAmount,
      if (status != null) 'status': status,
      if (shippingAddress != null) 'shipping_address': shippingAddress,
      if (billingAddress != null) 'billing_address': billingAddress,
      if (paymentMethod != null) 'payment_method': paymentMethod,
      if (mobileNo != null) 'mobile_no': mobileNo,
      if (email != null) 'email': email,
      if (referenceNo != null) 'reference_no': referenceNo,
      if (productsJson != null) 'products_json': productsJson,
      if (createdDate != null) 'created_date': createdDate,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  OrdersCompanion copyWith(
      {Value<int>? id,
      Value<int?>? customerId,
      Value<int?>? productId,
      Value<DateTime>? orderDate,
      Value<double>? totalAmount,
      Value<String>? status,
      Value<String?>? shippingAddress,
      Value<String?>? billingAddress,
      Value<String?>? paymentMethod,
      Value<String?>? mobileNo,
      Value<String?>? email,
      Value<String?>? referenceNo,
      Value<String?>? productsJson,
      Value<DateTime?>? createdDate,
      Value<DateTime?>? updatedAt}) {
    return OrdersCompanion(
      id: id ?? this.id,
      customerId: customerId ?? this.customerId,
      productId: productId ?? this.productId,
      orderDate: orderDate ?? this.orderDate,
      totalAmount: totalAmount ?? this.totalAmount,
      status: status ?? this.status,
      shippingAddress: shippingAddress ?? this.shippingAddress,
      billingAddress: billingAddress ?? this.billingAddress,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      mobileNo: mobileNo ?? this.mobileNo,
      email: email ?? this.email,
      referenceNo: referenceNo ?? this.referenceNo,
      productsJson: productsJson ?? this.productsJson,
      createdDate: createdDate ?? this.createdDate,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (customerId.present) {
      map['customer_id'] = Variable<int>(customerId.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<int>(productId.value);
    }
    if (orderDate.present) {
      map['order_date'] = Variable<DateTime>(orderDate.value);
    }
    if (totalAmount.present) {
      map['total_amount'] = Variable<double>(totalAmount.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (shippingAddress.present) {
      map['shipping_address'] = Variable<String>(shippingAddress.value);
    }
    if (billingAddress.present) {
      map['billing_address'] = Variable<String>(billingAddress.value);
    }
    if (paymentMethod.present) {
      map['payment_method'] = Variable<String>(paymentMethod.value);
    }
    if (mobileNo.present) {
      map['mobile_no'] = Variable<String>(mobileNo.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (referenceNo.present) {
      map['reference_no'] = Variable<String>(referenceNo.value);
    }
    if (productsJson.present) {
      map['products_json'] = Variable<String>(productsJson.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrdersCompanion(')
          ..write('id: $id, ')
          ..write('customerId: $customerId, ')
          ..write('productId: $productId, ')
          ..write('orderDate: $orderDate, ')
          ..write('totalAmount: $totalAmount, ')
          ..write('status: $status, ')
          ..write('shippingAddress: $shippingAddress, ')
          ..write('billingAddress: $billingAddress, ')
          ..write('paymentMethod: $paymentMethod, ')
          ..write('mobileNo: $mobileNo, ')
          ..write('email: $email, ')
          ..write('referenceNo: $referenceNo, ')
          ..write('productsJson: $productsJson, ')
          ..write('createdDate: $createdDate, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  _$AppDatabase.connect(DatabaseConnection c) : super.connect(c);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ProductMasterTable productMaster = $ProductMasterTable(this);
  late final $CustomerTable customer = $CustomerTable(this);
  late final $SuppliersTable suppliers = $SuppliersTable(this);
  late final $OpticProductsTable opticProducts = $OpticProductsTable(this);
  late final $CategoriesTable categories = $CategoriesTable(this);
  late final $FittersTable fitters = $FittersTable(this);
  late final $OrdersTable orders = $OrdersTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        productMaster,
        customer,
        suppliers,
        opticProducts,
        categories,
        fitters,
        orders
      ];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$ProductMasterTableCreateCompanionBuilder = ProductMasterCompanion
    Function({
  Value<int> id,
  required String productCode,
  required String productName,
  Value<String?> category,
  Value<String?> material,
  Value<String?> brand,
  Value<String?> subBrand,
  Value<String?> size,
  Value<String?> colors,
  Value<String?> lensType1,
  Value<String?> lensType2,
  Value<String?> shape,
  Value<String?> gender,
  Value<bool> allowNegativeStock,
  Value<String?> boxPack,
  Value<String?> rack,
  Value<String?> modelNo,
  Value<String?> createdBy,
  Value<DateTime?> createdDate,
});
typedef $$ProductMasterTableUpdateCompanionBuilder = ProductMasterCompanion
    Function({
  Value<int> id,
  Value<String> productCode,
  Value<String> productName,
  Value<String?> category,
  Value<String?> material,
  Value<String?> brand,
  Value<String?> subBrand,
  Value<String?> size,
  Value<String?> colors,
  Value<String?> lensType1,
  Value<String?> lensType2,
  Value<String?> shape,
  Value<String?> gender,
  Value<bool> allowNegativeStock,
  Value<String?> boxPack,
  Value<String?> rack,
  Value<String?> modelNo,
  Value<String?> createdBy,
  Value<DateTime?> createdDate,
});

class $$ProductMasterTableFilterComposer
    extends Composer<_$AppDatabase, $ProductMasterTable> {
  $$ProductMasterTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get productCode => $composableBuilder(
      column: $table.productCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get productName => $composableBuilder(
      column: $table.productName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get material => $composableBuilder(
      column: $table.material, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get brand => $composableBuilder(
      column: $table.brand, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get subBrand => $composableBuilder(
      column: $table.subBrand, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get size => $composableBuilder(
      column: $table.size, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get colors => $composableBuilder(
      column: $table.colors, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lensType1 => $composableBuilder(
      column: $table.lensType1, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lensType2 => $composableBuilder(
      column: $table.lensType2, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get shape => $composableBuilder(
      column: $table.shape, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get gender => $composableBuilder(
      column: $table.gender, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get allowNegativeStock => $composableBuilder(
      column: $table.allowNegativeStock,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get boxPack => $composableBuilder(
      column: $table.boxPack, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get rack => $composableBuilder(
      column: $table.rack, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get modelNo => $composableBuilder(
      column: $table.modelNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdBy => $composableBuilder(
      column: $table.createdBy, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));
}

class $$ProductMasterTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductMasterTable> {
  $$ProductMasterTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get productCode => $composableBuilder(
      column: $table.productCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get productName => $composableBuilder(
      column: $table.productName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get material => $composableBuilder(
      column: $table.material, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get brand => $composableBuilder(
      column: $table.brand, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get subBrand => $composableBuilder(
      column: $table.subBrand, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get size => $composableBuilder(
      column: $table.size, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get colors => $composableBuilder(
      column: $table.colors, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lensType1 => $composableBuilder(
      column: $table.lensType1, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lensType2 => $composableBuilder(
      column: $table.lensType2, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get shape => $composableBuilder(
      column: $table.shape, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get gender => $composableBuilder(
      column: $table.gender, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get allowNegativeStock => $composableBuilder(
      column: $table.allowNegativeStock,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get boxPack => $composableBuilder(
      column: $table.boxPack, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get rack => $composableBuilder(
      column: $table.rack, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get modelNo => $composableBuilder(
      column: $table.modelNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdBy => $composableBuilder(
      column: $table.createdBy, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));
}

class $$ProductMasterTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductMasterTable> {
  $$ProductMasterTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get productCode => $composableBuilder(
      column: $table.productCode, builder: (column) => column);

  GeneratedColumn<String> get productName => $composableBuilder(
      column: $table.productName, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<String> get material =>
      $composableBuilder(column: $table.material, builder: (column) => column);

  GeneratedColumn<String> get brand =>
      $composableBuilder(column: $table.brand, builder: (column) => column);

  GeneratedColumn<String> get subBrand =>
      $composableBuilder(column: $table.subBrand, builder: (column) => column);

  GeneratedColumn<String> get size =>
      $composableBuilder(column: $table.size, builder: (column) => column);

  GeneratedColumn<String> get colors =>
      $composableBuilder(column: $table.colors, builder: (column) => column);

  GeneratedColumn<String> get lensType1 =>
      $composableBuilder(column: $table.lensType1, builder: (column) => column);

  GeneratedColumn<String> get lensType2 =>
      $composableBuilder(column: $table.lensType2, builder: (column) => column);

  GeneratedColumn<String> get shape =>
      $composableBuilder(column: $table.shape, builder: (column) => column);

  GeneratedColumn<String> get gender =>
      $composableBuilder(column: $table.gender, builder: (column) => column);

  GeneratedColumn<bool> get allowNegativeStock => $composableBuilder(
      column: $table.allowNegativeStock, builder: (column) => column);

  GeneratedColumn<String> get boxPack =>
      $composableBuilder(column: $table.boxPack, builder: (column) => column);

  GeneratedColumn<String> get rack =>
      $composableBuilder(column: $table.rack, builder: (column) => column);

  GeneratedColumn<String> get modelNo =>
      $composableBuilder(column: $table.modelNo, builder: (column) => column);

  GeneratedColumn<String> get createdBy =>
      $composableBuilder(column: $table.createdBy, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);
}

class $$ProductMasterTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ProductMasterTable,
    ProductMasterData,
    $$ProductMasterTableFilterComposer,
    $$ProductMasterTableOrderingComposer,
    $$ProductMasterTableAnnotationComposer,
    $$ProductMasterTableCreateCompanionBuilder,
    $$ProductMasterTableUpdateCompanionBuilder,
    (
      ProductMasterData,
      BaseReferences<_$AppDatabase, $ProductMasterTable, ProductMasterData>
    ),
    ProductMasterData,
    PrefetchHooks Function()> {
  $$ProductMasterTableTableManager(_$AppDatabase db, $ProductMasterTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductMasterTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductMasterTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductMasterTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> productCode = const Value.absent(),
            Value<String> productName = const Value.absent(),
            Value<String?> category = const Value.absent(),
            Value<String?> material = const Value.absent(),
            Value<String?> brand = const Value.absent(),
            Value<String?> subBrand = const Value.absent(),
            Value<String?> size = const Value.absent(),
            Value<String?> colors = const Value.absent(),
            Value<String?> lensType1 = const Value.absent(),
            Value<String?> lensType2 = const Value.absent(),
            Value<String?> shape = const Value.absent(),
            Value<String?> gender = const Value.absent(),
            Value<bool> allowNegativeStock = const Value.absent(),
            Value<String?> boxPack = const Value.absent(),
            Value<String?> rack = const Value.absent(),
            Value<String?> modelNo = const Value.absent(),
            Value<String?> createdBy = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
          }) =>
              ProductMasterCompanion(
            id: id,
            productCode: productCode,
            productName: productName,
            category: category,
            material: material,
            brand: brand,
            subBrand: subBrand,
            size: size,
            colors: colors,
            lensType1: lensType1,
            lensType2: lensType2,
            shape: shape,
            gender: gender,
            allowNegativeStock: allowNegativeStock,
            boxPack: boxPack,
            rack: rack,
            modelNo: modelNo,
            createdBy: createdBy,
            createdDate: createdDate,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String productCode,
            required String productName,
            Value<String?> category = const Value.absent(),
            Value<String?> material = const Value.absent(),
            Value<String?> brand = const Value.absent(),
            Value<String?> subBrand = const Value.absent(),
            Value<String?> size = const Value.absent(),
            Value<String?> colors = const Value.absent(),
            Value<String?> lensType1 = const Value.absent(),
            Value<String?> lensType2 = const Value.absent(),
            Value<String?> shape = const Value.absent(),
            Value<String?> gender = const Value.absent(),
            Value<bool> allowNegativeStock = const Value.absent(),
            Value<String?> boxPack = const Value.absent(),
            Value<String?> rack = const Value.absent(),
            Value<String?> modelNo = const Value.absent(),
            Value<String?> createdBy = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
          }) =>
              ProductMasterCompanion.insert(
            id: id,
            productCode: productCode,
            productName: productName,
            category: category,
            material: material,
            brand: brand,
            subBrand: subBrand,
            size: size,
            colors: colors,
            lensType1: lensType1,
            lensType2: lensType2,
            shape: shape,
            gender: gender,
            allowNegativeStock: allowNegativeStock,
            boxPack: boxPack,
            rack: rack,
            modelNo: modelNo,
            createdBy: createdBy,
            createdDate: createdDate,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ProductMasterTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ProductMasterTable,
    ProductMasterData,
    $$ProductMasterTableFilterComposer,
    $$ProductMasterTableOrderingComposer,
    $$ProductMasterTableAnnotationComposer,
    $$ProductMasterTableCreateCompanionBuilder,
    $$ProductMasterTableUpdateCompanionBuilder,
    (
      ProductMasterData,
      BaseReferences<_$AppDatabase, $ProductMasterTable, ProductMasterData>
    ),
    ProductMasterData,
    PrefetchHooks Function()>;
typedef $$CustomerTableCreateCompanionBuilder = CustomerCompanion Function({
  Value<int> id,
  required String firstName,
  Value<String?> middleName,
  Value<String?> lastName,
  Value<String?> mobile,
  Value<String?> email,
  Value<String?> address,
  Value<String?> gender,
  Value<String?> customerType,
  Value<String?> city,
  Value<String?> state,
  Value<String?> country,
  Value<String?> pincode,
  Value<String?> createdBy,
  Value<DateTime?> createdDate,
});
typedef $$CustomerTableUpdateCompanionBuilder = CustomerCompanion Function({
  Value<int> id,
  Value<String> firstName,
  Value<String?> middleName,
  Value<String?> lastName,
  Value<String?> mobile,
  Value<String?> email,
  Value<String?> address,
  Value<String?> gender,
  Value<String?> customerType,
  Value<String?> city,
  Value<String?> state,
  Value<String?> country,
  Value<String?> pincode,
  Value<String?> createdBy,
  Value<DateTime?> createdDate,
});

final class $$CustomerTableReferences
    extends BaseReferences<_$AppDatabase, $CustomerTable, CustomerData> {
  $$CustomerTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$OrdersTable, List<Order>> _ordersRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.orders,
          aliasName:
              $_aliasNameGenerator(db.customer.id, db.orders.customerId));

  $$OrdersTableProcessedTableManager get ordersRefs {
    final manager = $$OrdersTableTableManager($_db, $_db.orders)
        .filter((f) => f.customerId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_ordersRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$CustomerTableFilterComposer
    extends Composer<_$AppDatabase, $CustomerTable> {
  $$CustomerTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get firstName => $composableBuilder(
      column: $table.firstName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get middleName => $composableBuilder(
      column: $table.middleName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lastName => $composableBuilder(
      column: $table.lastName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mobile => $composableBuilder(
      column: $table.mobile, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get gender => $composableBuilder(
      column: $table.gender, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get customerType => $composableBuilder(
      column: $table.customerType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get state => $composableBuilder(
      column: $table.state, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get country => $composableBuilder(
      column: $table.country, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get pincode => $composableBuilder(
      column: $table.pincode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdBy => $composableBuilder(
      column: $table.createdBy, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  Expression<bool> ordersRefs(
      Expression<bool> Function($$OrdersTableFilterComposer f) f) {
    final $$OrdersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.orders,
        getReferencedColumn: (t) => t.customerId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$OrdersTableFilterComposer(
              $db: $db,
              $table: $db.orders,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$CustomerTableOrderingComposer
    extends Composer<_$AppDatabase, $CustomerTable> {
  $$CustomerTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get firstName => $composableBuilder(
      column: $table.firstName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get middleName => $composableBuilder(
      column: $table.middleName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lastName => $composableBuilder(
      column: $table.lastName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mobile => $composableBuilder(
      column: $table.mobile, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get gender => $composableBuilder(
      column: $table.gender, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get customerType => $composableBuilder(
      column: $table.customerType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get state => $composableBuilder(
      column: $table.state, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get country => $composableBuilder(
      column: $table.country, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get pincode => $composableBuilder(
      column: $table.pincode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdBy => $composableBuilder(
      column: $table.createdBy, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));
}

class $$CustomerTableAnnotationComposer
    extends Composer<_$AppDatabase, $CustomerTable> {
  $$CustomerTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get firstName =>
      $composableBuilder(column: $table.firstName, builder: (column) => column);

  GeneratedColumn<String> get middleName => $composableBuilder(
      column: $table.middleName, builder: (column) => column);

  GeneratedColumn<String> get lastName =>
      $composableBuilder(column: $table.lastName, builder: (column) => column);

  GeneratedColumn<String> get mobile =>
      $composableBuilder(column: $table.mobile, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get gender =>
      $composableBuilder(column: $table.gender, builder: (column) => column);

  GeneratedColumn<String> get customerType => $composableBuilder(
      column: $table.customerType, builder: (column) => column);

  GeneratedColumn<String> get city =>
      $composableBuilder(column: $table.city, builder: (column) => column);

  GeneratedColumn<String> get state =>
      $composableBuilder(column: $table.state, builder: (column) => column);

  GeneratedColumn<String> get country =>
      $composableBuilder(column: $table.country, builder: (column) => column);

  GeneratedColumn<String> get pincode =>
      $composableBuilder(column: $table.pincode, builder: (column) => column);

  GeneratedColumn<String> get createdBy =>
      $composableBuilder(column: $table.createdBy, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  Expression<T> ordersRefs<T extends Object>(
      Expression<T> Function($$OrdersTableAnnotationComposer a) f) {
    final $$OrdersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.orders,
        getReferencedColumn: (t) => t.customerId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$OrdersTableAnnotationComposer(
              $db: $db,
              $table: $db.orders,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$CustomerTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CustomerTable,
    CustomerData,
    $$CustomerTableFilterComposer,
    $$CustomerTableOrderingComposer,
    $$CustomerTableAnnotationComposer,
    $$CustomerTableCreateCompanionBuilder,
    $$CustomerTableUpdateCompanionBuilder,
    (CustomerData, $$CustomerTableReferences),
    CustomerData,
    PrefetchHooks Function({bool ordersRefs})> {
  $$CustomerTableTableManager(_$AppDatabase db, $CustomerTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CustomerTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CustomerTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CustomerTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> firstName = const Value.absent(),
            Value<String?> middleName = const Value.absent(),
            Value<String?> lastName = const Value.absent(),
            Value<String?> mobile = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<String?> gender = const Value.absent(),
            Value<String?> customerType = const Value.absent(),
            Value<String?> city = const Value.absent(),
            Value<String?> state = const Value.absent(),
            Value<String?> country = const Value.absent(),
            Value<String?> pincode = const Value.absent(),
            Value<String?> createdBy = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
          }) =>
              CustomerCompanion(
            id: id,
            firstName: firstName,
            middleName: middleName,
            lastName: lastName,
            mobile: mobile,
            email: email,
            address: address,
            gender: gender,
            customerType: customerType,
            city: city,
            state: state,
            country: country,
            pincode: pincode,
            createdBy: createdBy,
            createdDate: createdDate,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String firstName,
            Value<String?> middleName = const Value.absent(),
            Value<String?> lastName = const Value.absent(),
            Value<String?> mobile = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<String?> gender = const Value.absent(),
            Value<String?> customerType = const Value.absent(),
            Value<String?> city = const Value.absent(),
            Value<String?> state = const Value.absent(),
            Value<String?> country = const Value.absent(),
            Value<String?> pincode = const Value.absent(),
            Value<String?> createdBy = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
          }) =>
              CustomerCompanion.insert(
            id: id,
            firstName: firstName,
            middleName: middleName,
            lastName: lastName,
            mobile: mobile,
            email: email,
            address: address,
            gender: gender,
            customerType: customerType,
            city: city,
            state: state,
            country: country,
            pincode: pincode,
            createdBy: createdBy,
            createdDate: createdDate,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$CustomerTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({ordersRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (ordersRefs) db.orders],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (ordersRefs)
                    await $_getPrefetchedData<CustomerData, $CustomerTable,
                            Order>(
                        currentTable: table,
                        referencedTable:
                            $$CustomerTableReferences._ordersRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$CustomerTableReferences(db, table, p0).ordersRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.customerId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$CustomerTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CustomerTable,
    CustomerData,
    $$CustomerTableFilterComposer,
    $$CustomerTableOrderingComposer,
    $$CustomerTableAnnotationComposer,
    $$CustomerTableCreateCompanionBuilder,
    $$CustomerTableUpdateCompanionBuilder,
    (CustomerData, $$CustomerTableReferences),
    CustomerData,
    PrefetchHooks Function({bool ordersRefs})>;
typedef $$SuppliersTableCreateCompanionBuilder = SuppliersCompanion Function({
  Value<int> id,
  required String supplierCode,
  required String supplierName,
  Value<String?> email,
  Value<String?> address1,
  Value<String?> address2,
  Value<String?> cstNo,
  Value<String?> tinNo,
  Value<String?> supplierType,
  Value<String?> paymentMode,
  Value<String?> state,
  Value<String?> city,
  Value<String?> pincode,
  Value<String?> telephone,
  Value<String?> fax,
  Value<String?> contactPerson1,
  Value<String?> contactPerson2,
  Value<String?> createdBy,
  Value<DateTime?> createdDate,
  Value<String?> computeProductDate,
  Value<String?> computeOverallDesc,
});
typedef $$SuppliersTableUpdateCompanionBuilder = SuppliersCompanion Function({
  Value<int> id,
  Value<String> supplierCode,
  Value<String> supplierName,
  Value<String?> email,
  Value<String?> address1,
  Value<String?> address2,
  Value<String?> cstNo,
  Value<String?> tinNo,
  Value<String?> supplierType,
  Value<String?> paymentMode,
  Value<String?> state,
  Value<String?> city,
  Value<String?> pincode,
  Value<String?> telephone,
  Value<String?> fax,
  Value<String?> contactPerson1,
  Value<String?> contactPerson2,
  Value<String?> createdBy,
  Value<DateTime?> createdDate,
  Value<String?> computeProductDate,
  Value<String?> computeOverallDesc,
});

final class $$SuppliersTableReferences
    extends BaseReferences<_$AppDatabase, $SuppliersTable, Supplier> {
  $$SuppliersTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$OpticProductsTable, List<OpticProduct>>
      _opticProductsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.opticProducts,
              aliasName: $_aliasNameGenerator(
                  db.suppliers.id, db.opticProducts.supplierId));

  $$OpticProductsTableProcessedTableManager get opticProductsRefs {
    final manager = $$OpticProductsTableTableManager($_db, $_db.opticProducts)
        .filter((f) => f.supplierId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_opticProductsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$SuppliersTableFilterComposer
    extends Composer<_$AppDatabase, $SuppliersTable> {
  $$SuppliersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get supplierCode => $composableBuilder(
      column: $table.supplierCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get supplierName => $composableBuilder(
      column: $table.supplierName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address1 => $composableBuilder(
      column: $table.address1, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address2 => $composableBuilder(
      column: $table.address2, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cstNo => $composableBuilder(
      column: $table.cstNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tinNo => $composableBuilder(
      column: $table.tinNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get supplierType => $composableBuilder(
      column: $table.supplierType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get paymentMode => $composableBuilder(
      column: $table.paymentMode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get state => $composableBuilder(
      column: $table.state, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get pincode => $composableBuilder(
      column: $table.pincode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get telephone => $composableBuilder(
      column: $table.telephone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get fax => $composableBuilder(
      column: $table.fax, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contactPerson1 => $composableBuilder(
      column: $table.contactPerson1,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contactPerson2 => $composableBuilder(
      column: $table.contactPerson2,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdBy => $composableBuilder(
      column: $table.createdBy, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get computeProductDate => $composableBuilder(
      column: $table.computeProductDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get computeOverallDesc => $composableBuilder(
      column: $table.computeOverallDesc,
      builder: (column) => ColumnFilters(column));

  Expression<bool> opticProductsRefs(
      Expression<bool> Function($$OpticProductsTableFilterComposer f) f) {
    final $$OpticProductsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.opticProducts,
        getReferencedColumn: (t) => t.supplierId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$OpticProductsTableFilterComposer(
              $db: $db,
              $table: $db.opticProducts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SuppliersTableOrderingComposer
    extends Composer<_$AppDatabase, $SuppliersTable> {
  $$SuppliersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get supplierCode => $composableBuilder(
      column: $table.supplierCode,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get supplierName => $composableBuilder(
      column: $table.supplierName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address1 => $composableBuilder(
      column: $table.address1, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address2 => $composableBuilder(
      column: $table.address2, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cstNo => $composableBuilder(
      column: $table.cstNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tinNo => $composableBuilder(
      column: $table.tinNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get supplierType => $composableBuilder(
      column: $table.supplierType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get paymentMode => $composableBuilder(
      column: $table.paymentMode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get state => $composableBuilder(
      column: $table.state, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get pincode => $composableBuilder(
      column: $table.pincode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get telephone => $composableBuilder(
      column: $table.telephone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fax => $composableBuilder(
      column: $table.fax, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contactPerson1 => $composableBuilder(
      column: $table.contactPerson1,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contactPerson2 => $composableBuilder(
      column: $table.contactPerson2,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdBy => $composableBuilder(
      column: $table.createdBy, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get computeProductDate => $composableBuilder(
      column: $table.computeProductDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get computeOverallDesc => $composableBuilder(
      column: $table.computeOverallDesc,
      builder: (column) => ColumnOrderings(column));
}

class $$SuppliersTableAnnotationComposer
    extends Composer<_$AppDatabase, $SuppliersTable> {
  $$SuppliersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get supplierCode => $composableBuilder(
      column: $table.supplierCode, builder: (column) => column);

  GeneratedColumn<String> get supplierName => $composableBuilder(
      column: $table.supplierName, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get address1 =>
      $composableBuilder(column: $table.address1, builder: (column) => column);

  GeneratedColumn<String> get address2 =>
      $composableBuilder(column: $table.address2, builder: (column) => column);

  GeneratedColumn<String> get cstNo =>
      $composableBuilder(column: $table.cstNo, builder: (column) => column);

  GeneratedColumn<String> get tinNo =>
      $composableBuilder(column: $table.tinNo, builder: (column) => column);

  GeneratedColumn<String> get supplierType => $composableBuilder(
      column: $table.supplierType, builder: (column) => column);

  GeneratedColumn<String> get paymentMode => $composableBuilder(
      column: $table.paymentMode, builder: (column) => column);

  GeneratedColumn<String> get state =>
      $composableBuilder(column: $table.state, builder: (column) => column);

  GeneratedColumn<String> get city =>
      $composableBuilder(column: $table.city, builder: (column) => column);

  GeneratedColumn<String> get pincode =>
      $composableBuilder(column: $table.pincode, builder: (column) => column);

  GeneratedColumn<String> get telephone =>
      $composableBuilder(column: $table.telephone, builder: (column) => column);

  GeneratedColumn<String> get fax =>
      $composableBuilder(column: $table.fax, builder: (column) => column);

  GeneratedColumn<String> get contactPerson1 => $composableBuilder(
      column: $table.contactPerson1, builder: (column) => column);

  GeneratedColumn<String> get contactPerson2 => $composableBuilder(
      column: $table.contactPerson2, builder: (column) => column);

  GeneratedColumn<String> get createdBy =>
      $composableBuilder(column: $table.createdBy, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<String> get computeProductDate => $composableBuilder(
      column: $table.computeProductDate, builder: (column) => column);

  GeneratedColumn<String> get computeOverallDesc => $composableBuilder(
      column: $table.computeOverallDesc, builder: (column) => column);

  Expression<T> opticProductsRefs<T extends Object>(
      Expression<T> Function($$OpticProductsTableAnnotationComposer a) f) {
    final $$OpticProductsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.opticProducts,
        getReferencedColumn: (t) => t.supplierId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$OpticProductsTableAnnotationComposer(
              $db: $db,
              $table: $db.opticProducts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SuppliersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SuppliersTable,
    Supplier,
    $$SuppliersTableFilterComposer,
    $$SuppliersTableOrderingComposer,
    $$SuppliersTableAnnotationComposer,
    $$SuppliersTableCreateCompanionBuilder,
    $$SuppliersTableUpdateCompanionBuilder,
    (Supplier, $$SuppliersTableReferences),
    Supplier,
    PrefetchHooks Function({bool opticProductsRefs})> {
  $$SuppliersTableTableManager(_$AppDatabase db, $SuppliersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SuppliersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SuppliersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SuppliersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> supplierCode = const Value.absent(),
            Value<String> supplierName = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> address1 = const Value.absent(),
            Value<String?> address2 = const Value.absent(),
            Value<String?> cstNo = const Value.absent(),
            Value<String?> tinNo = const Value.absent(),
            Value<String?> supplierType = const Value.absent(),
            Value<String?> paymentMode = const Value.absent(),
            Value<String?> state = const Value.absent(),
            Value<String?> city = const Value.absent(),
            Value<String?> pincode = const Value.absent(),
            Value<String?> telephone = const Value.absent(),
            Value<String?> fax = const Value.absent(),
            Value<String?> contactPerson1 = const Value.absent(),
            Value<String?> contactPerson2 = const Value.absent(),
            Value<String?> createdBy = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> computeProductDate = const Value.absent(),
            Value<String?> computeOverallDesc = const Value.absent(),
          }) =>
              SuppliersCompanion(
            id: id,
            supplierCode: supplierCode,
            supplierName: supplierName,
            email: email,
            address1: address1,
            address2: address2,
            cstNo: cstNo,
            tinNo: tinNo,
            supplierType: supplierType,
            paymentMode: paymentMode,
            state: state,
            city: city,
            pincode: pincode,
            telephone: telephone,
            fax: fax,
            contactPerson1: contactPerson1,
            contactPerson2: contactPerson2,
            createdBy: createdBy,
            createdDate: createdDate,
            computeProductDate: computeProductDate,
            computeOverallDesc: computeOverallDesc,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String supplierCode,
            required String supplierName,
            Value<String?> email = const Value.absent(),
            Value<String?> address1 = const Value.absent(),
            Value<String?> address2 = const Value.absent(),
            Value<String?> cstNo = const Value.absent(),
            Value<String?> tinNo = const Value.absent(),
            Value<String?> supplierType = const Value.absent(),
            Value<String?> paymentMode = const Value.absent(),
            Value<String?> state = const Value.absent(),
            Value<String?> city = const Value.absent(),
            Value<String?> pincode = const Value.absent(),
            Value<String?> telephone = const Value.absent(),
            Value<String?> fax = const Value.absent(),
            Value<String?> contactPerson1 = const Value.absent(),
            Value<String?> contactPerson2 = const Value.absent(),
            Value<String?> createdBy = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> computeProductDate = const Value.absent(),
            Value<String?> computeOverallDesc = const Value.absent(),
          }) =>
              SuppliersCompanion.insert(
            id: id,
            supplierCode: supplierCode,
            supplierName: supplierName,
            email: email,
            address1: address1,
            address2: address2,
            cstNo: cstNo,
            tinNo: tinNo,
            supplierType: supplierType,
            paymentMode: paymentMode,
            state: state,
            city: city,
            pincode: pincode,
            telephone: telephone,
            fax: fax,
            contactPerson1: contactPerson1,
            contactPerson2: contactPerson2,
            createdBy: createdBy,
            createdDate: createdDate,
            computeProductDate: computeProductDate,
            computeOverallDesc: computeOverallDesc,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$SuppliersTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({opticProductsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (opticProductsRefs) db.opticProducts
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (opticProductsRefs)
                    await $_getPrefetchedData<Supplier, $SuppliersTable,
                            OpticProduct>(
                        currentTable: table,
                        referencedTable: $$SuppliersTableReferences
                            ._opticProductsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SuppliersTableReferences(db, table, p0)
                                .opticProductsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.supplierId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$SuppliersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SuppliersTable,
    Supplier,
    $$SuppliersTableFilterComposer,
    $$SuppliersTableOrderingComposer,
    $$SuppliersTableAnnotationComposer,
    $$SuppliersTableCreateCompanionBuilder,
    $$SuppliersTableUpdateCompanionBuilder,
    (Supplier, $$SuppliersTableReferences),
    Supplier,
    PrefetchHooks Function({bool opticProductsRefs})>;
typedef $$OpticProductsTableCreateCompanionBuilder = OpticProductsCompanion
    Function({
  Value<int> id,
  required String productName,
  Value<String?> hsnCode,
  required double price,
  Value<String?> description,
  Value<int> stock,
  Value<double?> igst,
  Value<double?> sgst,
  Value<double?> cgst,
  Value<double?> gst,
  Value<double?> discount,
  Value<String?> unit,
  Value<String?> category,
  Value<double?> discountPrice,
  Value<int?> supplierId,
  Value<DateTime?> createdDate,
});
typedef $$OpticProductsTableUpdateCompanionBuilder = OpticProductsCompanion
    Function({
  Value<int> id,
  Value<String> productName,
  Value<String?> hsnCode,
  Value<double> price,
  Value<String?> description,
  Value<int> stock,
  Value<double?> igst,
  Value<double?> sgst,
  Value<double?> cgst,
  Value<double?> gst,
  Value<double?> discount,
  Value<String?> unit,
  Value<String?> category,
  Value<double?> discountPrice,
  Value<int?> supplierId,
  Value<DateTime?> createdDate,
});

final class $$OpticProductsTableReferences
    extends BaseReferences<_$AppDatabase, $OpticProductsTable, OpticProduct> {
  $$OpticProductsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $SuppliersTable _supplierIdTable(_$AppDatabase db) =>
      db.suppliers.createAlias(
          $_aliasNameGenerator(db.opticProducts.supplierId, db.suppliers.id));

  $$SuppliersTableProcessedTableManager? get supplierId {
    final $_column = $_itemColumn<int>('supplier_id');
    if ($_column == null) return null;
    final manager = $$SuppliersTableTableManager($_db, $_db.suppliers)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_supplierIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$OrdersTable, List<Order>> _ordersRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.orders,
          aliasName:
              $_aliasNameGenerator(db.opticProducts.id, db.orders.productId));

  $$OrdersTableProcessedTableManager get ordersRefs {
    final manager = $$OrdersTableTableManager($_db, $_db.orders)
        .filter((f) => f.productId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_ordersRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$OpticProductsTableFilterComposer
    extends Composer<_$AppDatabase, $OpticProductsTable> {
  $$OpticProductsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get productName => $composableBuilder(
      column: $table.productName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get hsnCode => $composableBuilder(
      column: $table.hsnCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get stock => $composableBuilder(
      column: $table.stock, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get igst => $composableBuilder(
      column: $table.igst, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get sgst => $composableBuilder(
      column: $table.sgst, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get cgst => $composableBuilder(
      column: $table.cgst, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get gst => $composableBuilder(
      column: $table.gst, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get discount => $composableBuilder(
      column: $table.discount, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get unit => $composableBuilder(
      column: $table.unit, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get discountPrice => $composableBuilder(
      column: $table.discountPrice, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  $$SuppliersTableFilterComposer get supplierId {
    final $$SuppliersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.supplierId,
        referencedTable: $db.suppliers,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SuppliersTableFilterComposer(
              $db: $db,
              $table: $db.suppliers,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> ordersRefs(
      Expression<bool> Function($$OrdersTableFilterComposer f) f) {
    final $$OrdersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.orders,
        getReferencedColumn: (t) => t.productId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$OrdersTableFilterComposer(
              $db: $db,
              $table: $db.orders,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$OpticProductsTableOrderingComposer
    extends Composer<_$AppDatabase, $OpticProductsTable> {
  $$OpticProductsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get productName => $composableBuilder(
      column: $table.productName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get hsnCode => $composableBuilder(
      column: $table.hsnCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get stock => $composableBuilder(
      column: $table.stock, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get igst => $composableBuilder(
      column: $table.igst, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get sgst => $composableBuilder(
      column: $table.sgst, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get cgst => $composableBuilder(
      column: $table.cgst, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get gst => $composableBuilder(
      column: $table.gst, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get discount => $composableBuilder(
      column: $table.discount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get unit => $composableBuilder(
      column: $table.unit, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get discountPrice => $composableBuilder(
      column: $table.discountPrice,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  $$SuppliersTableOrderingComposer get supplierId {
    final $$SuppliersTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.supplierId,
        referencedTable: $db.suppliers,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SuppliersTableOrderingComposer(
              $db: $db,
              $table: $db.suppliers,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$OpticProductsTableAnnotationComposer
    extends Composer<_$AppDatabase, $OpticProductsTable> {
  $$OpticProductsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get productName => $composableBuilder(
      column: $table.productName, builder: (column) => column);

  GeneratedColumn<String> get hsnCode =>
      $composableBuilder(column: $table.hsnCode, builder: (column) => column);

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<int> get stock =>
      $composableBuilder(column: $table.stock, builder: (column) => column);

  GeneratedColumn<double> get igst =>
      $composableBuilder(column: $table.igst, builder: (column) => column);

  GeneratedColumn<double> get sgst =>
      $composableBuilder(column: $table.sgst, builder: (column) => column);

  GeneratedColumn<double> get cgst =>
      $composableBuilder(column: $table.cgst, builder: (column) => column);

  GeneratedColumn<double> get gst =>
      $composableBuilder(column: $table.gst, builder: (column) => column);

  GeneratedColumn<double> get discount =>
      $composableBuilder(column: $table.discount, builder: (column) => column);

  GeneratedColumn<String> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<double> get discountPrice => $composableBuilder(
      column: $table.discountPrice, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  $$SuppliersTableAnnotationComposer get supplierId {
    final $$SuppliersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.supplierId,
        referencedTable: $db.suppliers,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SuppliersTableAnnotationComposer(
              $db: $db,
              $table: $db.suppliers,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> ordersRefs<T extends Object>(
      Expression<T> Function($$OrdersTableAnnotationComposer a) f) {
    final $$OrdersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.orders,
        getReferencedColumn: (t) => t.productId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$OrdersTableAnnotationComposer(
              $db: $db,
              $table: $db.orders,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$OpticProductsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $OpticProductsTable,
    OpticProduct,
    $$OpticProductsTableFilterComposer,
    $$OpticProductsTableOrderingComposer,
    $$OpticProductsTableAnnotationComposer,
    $$OpticProductsTableCreateCompanionBuilder,
    $$OpticProductsTableUpdateCompanionBuilder,
    (OpticProduct, $$OpticProductsTableReferences),
    OpticProduct,
    PrefetchHooks Function({bool supplierId, bool ordersRefs})> {
  $$OpticProductsTableTableManager(_$AppDatabase db, $OpticProductsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OpticProductsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OpticProductsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OpticProductsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> productName = const Value.absent(),
            Value<String?> hsnCode = const Value.absent(),
            Value<double> price = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<int> stock = const Value.absent(),
            Value<double?> igst = const Value.absent(),
            Value<double?> sgst = const Value.absent(),
            Value<double?> cgst = const Value.absent(),
            Value<double?> gst = const Value.absent(),
            Value<double?> discount = const Value.absent(),
            Value<String?> unit = const Value.absent(),
            Value<String?> category = const Value.absent(),
            Value<double?> discountPrice = const Value.absent(),
            Value<int?> supplierId = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
          }) =>
              OpticProductsCompanion(
            id: id,
            productName: productName,
            hsnCode: hsnCode,
            price: price,
            description: description,
            stock: stock,
            igst: igst,
            sgst: sgst,
            cgst: cgst,
            gst: gst,
            discount: discount,
            unit: unit,
            category: category,
            discountPrice: discountPrice,
            supplierId: supplierId,
            createdDate: createdDate,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String productName,
            Value<String?> hsnCode = const Value.absent(),
            required double price,
            Value<String?> description = const Value.absent(),
            Value<int> stock = const Value.absent(),
            Value<double?> igst = const Value.absent(),
            Value<double?> sgst = const Value.absent(),
            Value<double?> cgst = const Value.absent(),
            Value<double?> gst = const Value.absent(),
            Value<double?> discount = const Value.absent(),
            Value<String?> unit = const Value.absent(),
            Value<String?> category = const Value.absent(),
            Value<double?> discountPrice = const Value.absent(),
            Value<int?> supplierId = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
          }) =>
              OpticProductsCompanion.insert(
            id: id,
            productName: productName,
            hsnCode: hsnCode,
            price: price,
            description: description,
            stock: stock,
            igst: igst,
            sgst: sgst,
            cgst: cgst,
            gst: gst,
            discount: discount,
            unit: unit,
            category: category,
            discountPrice: discountPrice,
            supplierId: supplierId,
            createdDate: createdDate,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$OpticProductsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({supplierId = false, ordersRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (ordersRefs) db.orders],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (supplierId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.supplierId,
                    referencedTable:
                        $$OpticProductsTableReferences._supplierIdTable(db),
                    referencedColumn:
                        $$OpticProductsTableReferences._supplierIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (ordersRefs)
                    await $_getPrefetchedData<OpticProduct, $OpticProductsTable,
                            Order>(
                        currentTable: table,
                        referencedTable:
                            $$OpticProductsTableReferences._ordersRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$OpticProductsTableReferences(db, table, p0)
                                .ordersRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.productId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$OpticProductsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $OpticProductsTable,
    OpticProduct,
    $$OpticProductsTableFilterComposer,
    $$OpticProductsTableOrderingComposer,
    $$OpticProductsTableAnnotationComposer,
    $$OpticProductsTableCreateCompanionBuilder,
    $$OpticProductsTableUpdateCompanionBuilder,
    (OpticProduct, $$OpticProductsTableReferences),
    OpticProduct,
    PrefetchHooks Function({bool supplierId, bool ordersRefs})>;
typedef $$CategoriesTableCreateCompanionBuilder = CategoriesCompanion Function({
  Value<int> id,
  required String categoryCode,
  required String description,
  Value<String?> commission,
  Value<String?> classification,
  Value<String?> allowBilling,
  Value<String?> maintainSingleQty,
  Value<String?> defaultPurchaseTax,
  Value<String?> defaultSalesTax,
  Value<String?> createdBy,
  Value<DateTime?> createdDate,
});
typedef $$CategoriesTableUpdateCompanionBuilder = CategoriesCompanion Function({
  Value<int> id,
  Value<String> categoryCode,
  Value<String> description,
  Value<String?> commission,
  Value<String?> classification,
  Value<String?> allowBilling,
  Value<String?> maintainSingleQty,
  Value<String?> defaultPurchaseTax,
  Value<String?> defaultSalesTax,
  Value<String?> createdBy,
  Value<DateTime?> createdDate,
});

class $$CategoriesTableFilterComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get categoryCode => $composableBuilder(
      column: $table.categoryCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get commission => $composableBuilder(
      column: $table.commission, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get classification => $composableBuilder(
      column: $table.classification,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get allowBilling => $composableBuilder(
      column: $table.allowBilling, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get maintainSingleQty => $composableBuilder(
      column: $table.maintainSingleQty,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get defaultPurchaseTax => $composableBuilder(
      column: $table.defaultPurchaseTax,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get defaultSalesTax => $composableBuilder(
      column: $table.defaultSalesTax,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdBy => $composableBuilder(
      column: $table.createdBy, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));
}

class $$CategoriesTableOrderingComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get categoryCode => $composableBuilder(
      column: $table.categoryCode,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get commission => $composableBuilder(
      column: $table.commission, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get classification => $composableBuilder(
      column: $table.classification,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get allowBilling => $composableBuilder(
      column: $table.allowBilling,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get maintainSingleQty => $composableBuilder(
      column: $table.maintainSingleQty,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get defaultPurchaseTax => $composableBuilder(
      column: $table.defaultPurchaseTax,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get defaultSalesTax => $composableBuilder(
      column: $table.defaultSalesTax,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdBy => $composableBuilder(
      column: $table.createdBy, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));
}

class $$CategoriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get categoryCode => $composableBuilder(
      column: $table.categoryCode, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<String> get commission => $composableBuilder(
      column: $table.commission, builder: (column) => column);

  GeneratedColumn<String> get classification => $composableBuilder(
      column: $table.classification, builder: (column) => column);

  GeneratedColumn<String> get allowBilling => $composableBuilder(
      column: $table.allowBilling, builder: (column) => column);

  GeneratedColumn<String> get maintainSingleQty => $composableBuilder(
      column: $table.maintainSingleQty, builder: (column) => column);

  GeneratedColumn<String> get defaultPurchaseTax => $composableBuilder(
      column: $table.defaultPurchaseTax, builder: (column) => column);

  GeneratedColumn<String> get defaultSalesTax => $composableBuilder(
      column: $table.defaultSalesTax, builder: (column) => column);

  GeneratedColumn<String> get createdBy =>
      $composableBuilder(column: $table.createdBy, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);
}

class $$CategoriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CategoriesTable,
    Category,
    $$CategoriesTableFilterComposer,
    $$CategoriesTableOrderingComposer,
    $$CategoriesTableAnnotationComposer,
    $$CategoriesTableCreateCompanionBuilder,
    $$CategoriesTableUpdateCompanionBuilder,
    (Category, BaseReferences<_$AppDatabase, $CategoriesTable, Category>),
    Category,
    PrefetchHooks Function()> {
  $$CategoriesTableTableManager(_$AppDatabase db, $CategoriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CategoriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CategoriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CategoriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> categoryCode = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<String?> commission = const Value.absent(),
            Value<String?> classification = const Value.absent(),
            Value<String?> allowBilling = const Value.absent(),
            Value<String?> maintainSingleQty = const Value.absent(),
            Value<String?> defaultPurchaseTax = const Value.absent(),
            Value<String?> defaultSalesTax = const Value.absent(),
            Value<String?> createdBy = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
          }) =>
              CategoriesCompanion(
            id: id,
            categoryCode: categoryCode,
            description: description,
            commission: commission,
            classification: classification,
            allowBilling: allowBilling,
            maintainSingleQty: maintainSingleQty,
            defaultPurchaseTax: defaultPurchaseTax,
            defaultSalesTax: defaultSalesTax,
            createdBy: createdBy,
            createdDate: createdDate,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String categoryCode,
            required String description,
            Value<String?> commission = const Value.absent(),
            Value<String?> classification = const Value.absent(),
            Value<String?> allowBilling = const Value.absent(),
            Value<String?> maintainSingleQty = const Value.absent(),
            Value<String?> defaultPurchaseTax = const Value.absent(),
            Value<String?> defaultSalesTax = const Value.absent(),
            Value<String?> createdBy = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
          }) =>
              CategoriesCompanion.insert(
            id: id,
            categoryCode: categoryCode,
            description: description,
            commission: commission,
            classification: classification,
            allowBilling: allowBilling,
            maintainSingleQty: maintainSingleQty,
            defaultPurchaseTax: defaultPurchaseTax,
            defaultSalesTax: defaultSalesTax,
            createdBy: createdBy,
            createdDate: createdDate,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CategoriesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CategoriesTable,
    Category,
    $$CategoriesTableFilterComposer,
    $$CategoriesTableOrderingComposer,
    $$CategoriesTableAnnotationComposer,
    $$CategoriesTableCreateCompanionBuilder,
    $$CategoriesTableUpdateCompanionBuilder,
    (Category, BaseReferences<_$AppDatabase, $CategoriesTable, Category>),
    Category,
    PrefetchHooks Function()>;
typedef $$FittersTableCreateCompanionBuilder = FittersCompanion Function({
  Value<int> id,
  required String fitterName,
  required String fitterCode,
  Value<String?> address1,
  Value<String?> state,
  Value<String?> city,
  Value<String?> telephone,
  Value<String?> landline,
  Value<String?> email,
  Value<String?> pincode,
  Value<int?> days,
  Value<double?> fees,
  Value<String?> createdBy,
  Value<DateTime?> createdDate,
});
typedef $$FittersTableUpdateCompanionBuilder = FittersCompanion Function({
  Value<int> id,
  Value<String> fitterName,
  Value<String> fitterCode,
  Value<String?> address1,
  Value<String?> state,
  Value<String?> city,
  Value<String?> telephone,
  Value<String?> landline,
  Value<String?> email,
  Value<String?> pincode,
  Value<int?> days,
  Value<double?> fees,
  Value<String?> createdBy,
  Value<DateTime?> createdDate,
});

class $$FittersTableFilterComposer
    extends Composer<_$AppDatabase, $FittersTable> {
  $$FittersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get fitterName => $composableBuilder(
      column: $table.fitterName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get fitterCode => $composableBuilder(
      column: $table.fitterCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address1 => $composableBuilder(
      column: $table.address1, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get state => $composableBuilder(
      column: $table.state, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get telephone => $composableBuilder(
      column: $table.telephone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get landline => $composableBuilder(
      column: $table.landline, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get pincode => $composableBuilder(
      column: $table.pincode, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get days => $composableBuilder(
      column: $table.days, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get fees => $composableBuilder(
      column: $table.fees, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdBy => $composableBuilder(
      column: $table.createdBy, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));
}

class $$FittersTableOrderingComposer
    extends Composer<_$AppDatabase, $FittersTable> {
  $$FittersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fitterName => $composableBuilder(
      column: $table.fitterName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fitterCode => $composableBuilder(
      column: $table.fitterCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address1 => $composableBuilder(
      column: $table.address1, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get state => $composableBuilder(
      column: $table.state, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get telephone => $composableBuilder(
      column: $table.telephone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get landline => $composableBuilder(
      column: $table.landline, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get pincode => $composableBuilder(
      column: $table.pincode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get days => $composableBuilder(
      column: $table.days, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get fees => $composableBuilder(
      column: $table.fees, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdBy => $composableBuilder(
      column: $table.createdBy, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));
}

class $$FittersTableAnnotationComposer
    extends Composer<_$AppDatabase, $FittersTable> {
  $$FittersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get fitterName => $composableBuilder(
      column: $table.fitterName, builder: (column) => column);

  GeneratedColumn<String> get fitterCode => $composableBuilder(
      column: $table.fitterCode, builder: (column) => column);

  GeneratedColumn<String> get address1 =>
      $composableBuilder(column: $table.address1, builder: (column) => column);

  GeneratedColumn<String> get state =>
      $composableBuilder(column: $table.state, builder: (column) => column);

  GeneratedColumn<String> get city =>
      $composableBuilder(column: $table.city, builder: (column) => column);

  GeneratedColumn<String> get telephone =>
      $composableBuilder(column: $table.telephone, builder: (column) => column);

  GeneratedColumn<String> get landline =>
      $composableBuilder(column: $table.landline, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get pincode =>
      $composableBuilder(column: $table.pincode, builder: (column) => column);

  GeneratedColumn<int> get days =>
      $composableBuilder(column: $table.days, builder: (column) => column);

  GeneratedColumn<double> get fees =>
      $composableBuilder(column: $table.fees, builder: (column) => column);

  GeneratedColumn<String> get createdBy =>
      $composableBuilder(column: $table.createdBy, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);
}

class $$FittersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $FittersTable,
    Fitter,
    $$FittersTableFilterComposer,
    $$FittersTableOrderingComposer,
    $$FittersTableAnnotationComposer,
    $$FittersTableCreateCompanionBuilder,
    $$FittersTableUpdateCompanionBuilder,
    (Fitter, BaseReferences<_$AppDatabase, $FittersTable, Fitter>),
    Fitter,
    PrefetchHooks Function()> {
  $$FittersTableTableManager(_$AppDatabase db, $FittersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FittersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FittersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FittersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> fitterName = const Value.absent(),
            Value<String> fitterCode = const Value.absent(),
            Value<String?> address1 = const Value.absent(),
            Value<String?> state = const Value.absent(),
            Value<String?> city = const Value.absent(),
            Value<String?> telephone = const Value.absent(),
            Value<String?> landline = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> pincode = const Value.absent(),
            Value<int?> days = const Value.absent(),
            Value<double?> fees = const Value.absent(),
            Value<String?> createdBy = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
          }) =>
              FittersCompanion(
            id: id,
            fitterName: fitterName,
            fitterCode: fitterCode,
            address1: address1,
            state: state,
            city: city,
            telephone: telephone,
            landline: landline,
            email: email,
            pincode: pincode,
            days: days,
            fees: fees,
            createdBy: createdBy,
            createdDate: createdDate,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String fitterName,
            required String fitterCode,
            Value<String?> address1 = const Value.absent(),
            Value<String?> state = const Value.absent(),
            Value<String?> city = const Value.absent(),
            Value<String?> telephone = const Value.absent(),
            Value<String?> landline = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> pincode = const Value.absent(),
            Value<int?> days = const Value.absent(),
            Value<double?> fees = const Value.absent(),
            Value<String?> createdBy = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
          }) =>
              FittersCompanion.insert(
            id: id,
            fitterName: fitterName,
            fitterCode: fitterCode,
            address1: address1,
            state: state,
            city: city,
            telephone: telephone,
            landline: landline,
            email: email,
            pincode: pincode,
            days: days,
            fees: fees,
            createdBy: createdBy,
            createdDate: createdDate,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$FittersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $FittersTable,
    Fitter,
    $$FittersTableFilterComposer,
    $$FittersTableOrderingComposer,
    $$FittersTableAnnotationComposer,
    $$FittersTableCreateCompanionBuilder,
    $$FittersTableUpdateCompanionBuilder,
    (Fitter, BaseReferences<_$AppDatabase, $FittersTable, Fitter>),
    Fitter,
    PrefetchHooks Function()>;
typedef $$OrdersTableCreateCompanionBuilder = OrdersCompanion Function({
  Value<int> id,
  Value<int?> customerId,
  Value<int?> productId,
  Value<DateTime> orderDate,
  Value<double> totalAmount,
  Value<String> status,
  Value<String?> shippingAddress,
  Value<String?> billingAddress,
  Value<String?> paymentMethod,
  Value<String?> mobileNo,
  Value<String?> email,
  Value<String?> referenceNo,
  Value<String?> productsJson,
  Value<DateTime?> createdDate,
  Value<DateTime?> updatedAt,
});
typedef $$OrdersTableUpdateCompanionBuilder = OrdersCompanion Function({
  Value<int> id,
  Value<int?> customerId,
  Value<int?> productId,
  Value<DateTime> orderDate,
  Value<double> totalAmount,
  Value<String> status,
  Value<String?> shippingAddress,
  Value<String?> billingAddress,
  Value<String?> paymentMethod,
  Value<String?> mobileNo,
  Value<String?> email,
  Value<String?> referenceNo,
  Value<String?> productsJson,
  Value<DateTime?> createdDate,
  Value<DateTime?> updatedAt,
});

final class $$OrdersTableReferences
    extends BaseReferences<_$AppDatabase, $OrdersTable, Order> {
  $$OrdersTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $CustomerTable _customerIdTable(_$AppDatabase db) => db.customer
      .createAlias($_aliasNameGenerator(db.orders.customerId, db.customer.id));

  $$CustomerTableProcessedTableManager? get customerId {
    final $_column = $_itemColumn<int>('customer_id');
    if ($_column == null) return null;
    final manager = $$CustomerTableTableManager($_db, $_db.customer)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_customerIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $OpticProductsTable _productIdTable(_$AppDatabase db) =>
      db.opticProducts.createAlias(
          $_aliasNameGenerator(db.orders.productId, db.opticProducts.id));

  $$OpticProductsTableProcessedTableManager? get productId {
    final $_column = $_itemColumn<int>('product_id');
    if ($_column == null) return null;
    final manager = $$OpticProductsTableTableManager($_db, $_db.opticProducts)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_productIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$OrdersTableFilterComposer
    extends Composer<_$AppDatabase, $OrdersTable> {
  $$OrdersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get orderDate => $composableBuilder(
      column: $table.orderDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get totalAmount => $composableBuilder(
      column: $table.totalAmount, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get shippingAddress => $composableBuilder(
      column: $table.shippingAddress,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get billingAddress => $composableBuilder(
      column: $table.billingAddress,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get paymentMethod => $composableBuilder(
      column: $table.paymentMethod, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mobileNo => $composableBuilder(
      column: $table.mobileNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get referenceNo => $composableBuilder(
      column: $table.referenceNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get productsJson => $composableBuilder(
      column: $table.productsJson, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  $$CustomerTableFilterComposer get customerId {
    final $$CustomerTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.customerId,
        referencedTable: $db.customer,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CustomerTableFilterComposer(
              $db: $db,
              $table: $db.customer,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$OpticProductsTableFilterComposer get productId {
    final $$OpticProductsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.productId,
        referencedTable: $db.opticProducts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$OpticProductsTableFilterComposer(
              $db: $db,
              $table: $db.opticProducts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$OrdersTableOrderingComposer
    extends Composer<_$AppDatabase, $OrdersTable> {
  $$OrdersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get orderDate => $composableBuilder(
      column: $table.orderDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get totalAmount => $composableBuilder(
      column: $table.totalAmount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get shippingAddress => $composableBuilder(
      column: $table.shippingAddress,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get billingAddress => $composableBuilder(
      column: $table.billingAddress,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get paymentMethod => $composableBuilder(
      column: $table.paymentMethod,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mobileNo => $composableBuilder(
      column: $table.mobileNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get referenceNo => $composableBuilder(
      column: $table.referenceNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get productsJson => $composableBuilder(
      column: $table.productsJson,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  $$CustomerTableOrderingComposer get customerId {
    final $$CustomerTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.customerId,
        referencedTable: $db.customer,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CustomerTableOrderingComposer(
              $db: $db,
              $table: $db.customer,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$OpticProductsTableOrderingComposer get productId {
    final $$OpticProductsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.productId,
        referencedTable: $db.opticProducts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$OpticProductsTableOrderingComposer(
              $db: $db,
              $table: $db.opticProducts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$OrdersTableAnnotationComposer
    extends Composer<_$AppDatabase, $OrdersTable> {
  $$OrdersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get orderDate =>
      $composableBuilder(column: $table.orderDate, builder: (column) => column);

  GeneratedColumn<double> get totalAmount => $composableBuilder(
      column: $table.totalAmount, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get shippingAddress => $composableBuilder(
      column: $table.shippingAddress, builder: (column) => column);

  GeneratedColumn<String> get billingAddress => $composableBuilder(
      column: $table.billingAddress, builder: (column) => column);

  GeneratedColumn<String> get paymentMethod => $composableBuilder(
      column: $table.paymentMethod, builder: (column) => column);

  GeneratedColumn<String> get mobileNo =>
      $composableBuilder(column: $table.mobileNo, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get referenceNo => $composableBuilder(
      column: $table.referenceNo, builder: (column) => column);

  GeneratedColumn<String> get productsJson => $composableBuilder(
      column: $table.productsJson, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$CustomerTableAnnotationComposer get customerId {
    final $$CustomerTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.customerId,
        referencedTable: $db.customer,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CustomerTableAnnotationComposer(
              $db: $db,
              $table: $db.customer,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$OpticProductsTableAnnotationComposer get productId {
    final $$OpticProductsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.productId,
        referencedTable: $db.opticProducts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$OpticProductsTableAnnotationComposer(
              $db: $db,
              $table: $db.opticProducts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$OrdersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $OrdersTable,
    Order,
    $$OrdersTableFilterComposer,
    $$OrdersTableOrderingComposer,
    $$OrdersTableAnnotationComposer,
    $$OrdersTableCreateCompanionBuilder,
    $$OrdersTableUpdateCompanionBuilder,
    (Order, $$OrdersTableReferences),
    Order,
    PrefetchHooks Function({bool customerId, bool productId})> {
  $$OrdersTableTableManager(_$AppDatabase db, $OrdersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OrdersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OrdersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OrdersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> customerId = const Value.absent(),
            Value<int?> productId = const Value.absent(),
            Value<DateTime> orderDate = const Value.absent(),
            Value<double> totalAmount = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String?> shippingAddress = const Value.absent(),
            Value<String?> billingAddress = const Value.absent(),
            Value<String?> paymentMethod = const Value.absent(),
            Value<String?> mobileNo = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> referenceNo = const Value.absent(),
            Value<String?> productsJson = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
          }) =>
              OrdersCompanion(
            id: id,
            customerId: customerId,
            productId: productId,
            orderDate: orderDate,
            totalAmount: totalAmount,
            status: status,
            shippingAddress: shippingAddress,
            billingAddress: billingAddress,
            paymentMethod: paymentMethod,
            mobileNo: mobileNo,
            email: email,
            referenceNo: referenceNo,
            productsJson: productsJson,
            createdDate: createdDate,
            updatedAt: updatedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> customerId = const Value.absent(),
            Value<int?> productId = const Value.absent(),
            Value<DateTime> orderDate = const Value.absent(),
            Value<double> totalAmount = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String?> shippingAddress = const Value.absent(),
            Value<String?> billingAddress = const Value.absent(),
            Value<String?> paymentMethod = const Value.absent(),
            Value<String?> mobileNo = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> referenceNo = const Value.absent(),
            Value<String?> productsJson = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
          }) =>
              OrdersCompanion.insert(
            id: id,
            customerId: customerId,
            productId: productId,
            orderDate: orderDate,
            totalAmount: totalAmount,
            status: status,
            shippingAddress: shippingAddress,
            billingAddress: billingAddress,
            paymentMethod: paymentMethod,
            mobileNo: mobileNo,
            email: email,
            referenceNo: referenceNo,
            productsJson: productsJson,
            createdDate: createdDate,
            updatedAt: updatedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$OrdersTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({customerId = false, productId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (customerId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.customerId,
                    referencedTable:
                        $$OrdersTableReferences._customerIdTable(db),
                    referencedColumn:
                        $$OrdersTableReferences._customerIdTable(db).id,
                  ) as T;
                }
                if (productId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.productId,
                    referencedTable:
                        $$OrdersTableReferences._productIdTable(db),
                    referencedColumn:
                        $$OrdersTableReferences._productIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$OrdersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $OrdersTable,
    Order,
    $$OrdersTableFilterComposer,
    $$OrdersTableOrderingComposer,
    $$OrdersTableAnnotationComposer,
    $$OrdersTableCreateCompanionBuilder,
    $$OrdersTableUpdateCompanionBuilder,
    (Order, $$OrdersTableReferences),
    Order,
    PrefetchHooks Function({bool customerId, bool productId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ProductMasterTableTableManager get productMaster =>
      $$ProductMasterTableTableManager(_db, _db.productMaster);
  $$CustomerTableTableManager get customer =>
      $$CustomerTableTableManager(_db, _db.customer);
  $$SuppliersTableTableManager get suppliers =>
      $$SuppliersTableTableManager(_db, _db.suppliers);
  $$OpticProductsTableTableManager get opticProducts =>
      $$OpticProductsTableTableManager(_db, _db.opticProducts);
  $$CategoriesTableTableManager get categories =>
      $$CategoriesTableTableManager(_db, _db.categories);
  $$FittersTableTableManager get fitters =>
      $$FittersTableTableManager(_db, _db.fitters);
  $$OrdersTableTableManager get orders =>
      $$OrdersTableTableManager(_db, _db.orders);
}
