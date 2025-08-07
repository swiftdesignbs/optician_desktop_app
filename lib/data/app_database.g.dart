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

class $CustomersTable extends Customers
    with TableInfo<$CustomersTable, Customer> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomersTable(this.attachedDatabase, [this._alias]);
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
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _lastNameMeta =
      const VerificationMeta('lastName');
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
      'last_name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _mobileNumberMeta =
      const VerificationMeta('mobileNumber');
  @override
  late final GeneratedColumn<String> mobileNumber = GeneratedColumn<String>(
      'mobile_number', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 10, maxTextLength: 15),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, true,
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
  static const VerificationMeta _pincodeMeta =
      const VerificationMeta('pincode');
  @override
  late final GeneratedColumn<String> pincode = GeneratedColumn<String>(
      'pincode', aliasedName, true,
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
        mobileNumber,
        email,
        address,
        city,
        state,
        pincode,
        createdDate
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'customers';
  @override
  VerificationContext validateIntegrity(Insertable<Customer> instance,
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
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    if (data.containsKey('mobile_number')) {
      context.handle(
          _mobileNumberMeta,
          mobileNumber.isAcceptableOrUnknown(
              data['mobile_number']!, _mobileNumberMeta));
    } else if (isInserting) {
      context.missing(_mobileNumberMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    }
    if (data.containsKey('state')) {
      context.handle(
          _stateMeta, state.isAcceptableOrUnknown(data['state']!, _stateMeta));
    }
    if (data.containsKey('pincode')) {
      context.handle(_pincodeMeta,
          pincode.isAcceptableOrUnknown(data['pincode']!, _pincodeMeta));
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
  Customer map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Customer(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      firstName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}first_name'])!,
      middleName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}middle_name']),
      lastName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_name'])!,
      mobileNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mobile_number'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address']),
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}city']),
      state: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}state']),
      pincode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pincode']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
    );
  }

  @override
  $CustomersTable createAlias(String alias) {
    return $CustomersTable(attachedDatabase, alias);
  }
}

class Customer extends DataClass implements Insertable<Customer> {
  final int id;
  final String firstName;
  final String? middleName;
  final String lastName;
  final String mobileNumber;
  final String? email;
  final String? address;
  final String? city;
  final String? state;
  final String? pincode;
  final DateTime? createdDate;
  const Customer(
      {required this.id,
      required this.firstName,
      this.middleName,
      required this.lastName,
      required this.mobileNumber,
      this.email,
      this.address,
      this.city,
      this.state,
      this.pincode,
      this.createdDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['first_name'] = Variable<String>(firstName);
    if (!nullToAbsent || middleName != null) {
      map['middle_name'] = Variable<String>(middleName);
    }
    map['last_name'] = Variable<String>(lastName);
    map['mobile_number'] = Variable<String>(mobileNumber);
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String>(city);
    }
    if (!nullToAbsent || state != null) {
      map['state'] = Variable<String>(state);
    }
    if (!nullToAbsent || pincode != null) {
      map['pincode'] = Variable<String>(pincode);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    return map;
  }

  CustomersCompanion toCompanion(bool nullToAbsent) {
    return CustomersCompanion(
      id: Value(id),
      firstName: Value(firstName),
      middleName: middleName == null && nullToAbsent
          ? const Value.absent()
          : Value(middleName),
      lastName: Value(lastName),
      mobileNumber: Value(mobileNumber),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      state:
          state == null && nullToAbsent ? const Value.absent() : Value(state),
      pincode: pincode == null && nullToAbsent
          ? const Value.absent()
          : Value(pincode),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
    );
  }

  factory Customer.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Customer(
      id: serializer.fromJson<int>(json['id']),
      firstName: serializer.fromJson<String>(json['firstName']),
      middleName: serializer.fromJson<String?>(json['middleName']),
      lastName: serializer.fromJson<String>(json['lastName']),
      mobileNumber: serializer.fromJson<String>(json['mobileNumber']),
      email: serializer.fromJson<String?>(json['email']),
      address: serializer.fromJson<String?>(json['address']),
      city: serializer.fromJson<String?>(json['city']),
      state: serializer.fromJson<String?>(json['state']),
      pincode: serializer.fromJson<String?>(json['pincode']),
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
      'lastName': serializer.toJson<String>(lastName),
      'mobileNumber': serializer.toJson<String>(mobileNumber),
      'email': serializer.toJson<String?>(email),
      'address': serializer.toJson<String?>(address),
      'city': serializer.toJson<String?>(city),
      'state': serializer.toJson<String?>(state),
      'pincode': serializer.toJson<String?>(pincode),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
    };
  }

  Customer copyWith(
          {int? id,
          String? firstName,
          Value<String?> middleName = const Value.absent(),
          String? lastName,
          String? mobileNumber,
          Value<String?> email = const Value.absent(),
          Value<String?> address = const Value.absent(),
          Value<String?> city = const Value.absent(),
          Value<String?> state = const Value.absent(),
          Value<String?> pincode = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent()}) =>
      Customer(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        middleName: middleName.present ? middleName.value : this.middleName,
        lastName: lastName ?? this.lastName,
        mobileNumber: mobileNumber ?? this.mobileNumber,
        email: email.present ? email.value : this.email,
        address: address.present ? address.value : this.address,
        city: city.present ? city.value : this.city,
        state: state.present ? state.value : this.state,
        pincode: pincode.present ? pincode.value : this.pincode,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
      );
  Customer copyWithCompanion(CustomersCompanion data) {
    return Customer(
      id: data.id.present ? data.id.value : this.id,
      firstName: data.firstName.present ? data.firstName.value : this.firstName,
      middleName:
          data.middleName.present ? data.middleName.value : this.middleName,
      lastName: data.lastName.present ? data.lastName.value : this.lastName,
      mobileNumber: data.mobileNumber.present
          ? data.mobileNumber.value
          : this.mobileNumber,
      email: data.email.present ? data.email.value : this.email,
      address: data.address.present ? data.address.value : this.address,
      city: data.city.present ? data.city.value : this.city,
      state: data.state.present ? data.state.value : this.state,
      pincode: data.pincode.present ? data.pincode.value : this.pincode,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Customer(')
          ..write('id: $id, ')
          ..write('firstName: $firstName, ')
          ..write('middleName: $middleName, ')
          ..write('lastName: $lastName, ')
          ..write('mobileNumber: $mobileNumber, ')
          ..write('email: $email, ')
          ..write('address: $address, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('pincode: $pincode, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, firstName, middleName, lastName,
      mobileNumber, email, address, city, state, pincode, createdDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Customer &&
          other.id == this.id &&
          other.firstName == this.firstName &&
          other.middleName == this.middleName &&
          other.lastName == this.lastName &&
          other.mobileNumber == this.mobileNumber &&
          other.email == this.email &&
          other.address == this.address &&
          other.city == this.city &&
          other.state == this.state &&
          other.pincode == this.pincode &&
          other.createdDate == this.createdDate);
}

class CustomersCompanion extends UpdateCompanion<Customer> {
  final Value<int> id;
  final Value<String> firstName;
  final Value<String?> middleName;
  final Value<String> lastName;
  final Value<String> mobileNumber;
  final Value<String?> email;
  final Value<String?> address;
  final Value<String?> city;
  final Value<String?> state;
  final Value<String?> pincode;
  final Value<DateTime?> createdDate;
  const CustomersCompanion({
    this.id = const Value.absent(),
    this.firstName = const Value.absent(),
    this.middleName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.mobileNumber = const Value.absent(),
    this.email = const Value.absent(),
    this.address = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.pincode = const Value.absent(),
    this.createdDate = const Value.absent(),
  });
  CustomersCompanion.insert({
    this.id = const Value.absent(),
    required String firstName,
    this.middleName = const Value.absent(),
    required String lastName,
    required String mobileNumber,
    this.email = const Value.absent(),
    this.address = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.pincode = const Value.absent(),
    this.createdDate = const Value.absent(),
  })  : firstName = Value(firstName),
        lastName = Value(lastName),
        mobileNumber = Value(mobileNumber);
  static Insertable<Customer> custom({
    Expression<int>? id,
    Expression<String>? firstName,
    Expression<String>? middleName,
    Expression<String>? lastName,
    Expression<String>? mobileNumber,
    Expression<String>? email,
    Expression<String>? address,
    Expression<String>? city,
    Expression<String>? state,
    Expression<String>? pincode,
    Expression<DateTime>? createdDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (firstName != null) 'first_name': firstName,
      if (middleName != null) 'middle_name': middleName,
      if (lastName != null) 'last_name': lastName,
      if (mobileNumber != null) 'mobile_number': mobileNumber,
      if (email != null) 'email': email,
      if (address != null) 'address': address,
      if (city != null) 'city': city,
      if (state != null) 'state': state,
      if (pincode != null) 'pincode': pincode,
      if (createdDate != null) 'created_date': createdDate,
    });
  }

  CustomersCompanion copyWith(
      {Value<int>? id,
      Value<String>? firstName,
      Value<String?>? middleName,
      Value<String>? lastName,
      Value<String>? mobileNumber,
      Value<String?>? email,
      Value<String?>? address,
      Value<String?>? city,
      Value<String?>? state,
      Value<String?>? pincode,
      Value<DateTime?>? createdDate}) {
    return CustomersCompanion(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      middleName: middleName ?? this.middleName,
      lastName: lastName ?? this.lastName,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      email: email ?? this.email,
      address: address ?? this.address,
      city: city ?? this.city,
      state: state ?? this.state,
      pincode: pincode ?? this.pincode,
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
    if (mobileNumber.present) {
      map['mobile_number'] = Variable<String>(mobileNumber.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (state.present) {
      map['state'] = Variable<String>(state.value);
    }
    if (pincode.present) {
      map['pincode'] = Variable<String>(pincode.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomersCompanion(')
          ..write('id: $id, ')
          ..write('firstName: $firstName, ')
          ..write('middleName: $middleName, ')
          ..write('lastName: $lastName, ')
          ..write('mobileNumber: $mobileNumber, ')
          ..write('email: $email, ')
          ..write('address: $address, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('pincode: $pincode, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ProductMasterTable productMaster = $ProductMasterTable(this);
  late final $CustomersTable customers = $CustomersTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [productMaster, customers];
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
typedef $$CustomersTableCreateCompanionBuilder = CustomersCompanion Function({
  Value<int> id,
  required String firstName,
  Value<String?> middleName,
  required String lastName,
  required String mobileNumber,
  Value<String?> email,
  Value<String?> address,
  Value<String?> city,
  Value<String?> state,
  Value<String?> pincode,
  Value<DateTime?> createdDate,
});
typedef $$CustomersTableUpdateCompanionBuilder = CustomersCompanion Function({
  Value<int> id,
  Value<String> firstName,
  Value<String?> middleName,
  Value<String> lastName,
  Value<String> mobileNumber,
  Value<String?> email,
  Value<String?> address,
  Value<String?> city,
  Value<String?> state,
  Value<String?> pincode,
  Value<DateTime?> createdDate,
});

class $$CustomersTableFilterComposer
    extends Composer<_$AppDatabase, $CustomersTable> {
  $$CustomersTableFilterComposer({
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

  ColumnFilters<String> get mobileNumber => $composableBuilder(
      column: $table.mobileNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get state => $composableBuilder(
      column: $table.state, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get pincode => $composableBuilder(
      column: $table.pincode, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));
}

class $$CustomersTableOrderingComposer
    extends Composer<_$AppDatabase, $CustomersTable> {
  $$CustomersTableOrderingComposer({
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

  ColumnOrderings<String> get mobileNumber => $composableBuilder(
      column: $table.mobileNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get state => $composableBuilder(
      column: $table.state, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get pincode => $composableBuilder(
      column: $table.pincode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));
}

class $$CustomersTableAnnotationComposer
    extends Composer<_$AppDatabase, $CustomersTable> {
  $$CustomersTableAnnotationComposer({
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

  GeneratedColumn<String> get mobileNumber => $composableBuilder(
      column: $table.mobileNumber, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get city =>
      $composableBuilder(column: $table.city, builder: (column) => column);

  GeneratedColumn<String> get state =>
      $composableBuilder(column: $table.state, builder: (column) => column);

  GeneratedColumn<String> get pincode =>
      $composableBuilder(column: $table.pincode, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);
}

class $$CustomersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CustomersTable,
    Customer,
    $$CustomersTableFilterComposer,
    $$CustomersTableOrderingComposer,
    $$CustomersTableAnnotationComposer,
    $$CustomersTableCreateCompanionBuilder,
    $$CustomersTableUpdateCompanionBuilder,
    (Customer, BaseReferences<_$AppDatabase, $CustomersTable, Customer>),
    Customer,
    PrefetchHooks Function()> {
  $$CustomersTableTableManager(_$AppDatabase db, $CustomersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CustomersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CustomersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CustomersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> firstName = const Value.absent(),
            Value<String?> middleName = const Value.absent(),
            Value<String> lastName = const Value.absent(),
            Value<String> mobileNumber = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<String?> city = const Value.absent(),
            Value<String?> state = const Value.absent(),
            Value<String?> pincode = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
          }) =>
              CustomersCompanion(
            id: id,
            firstName: firstName,
            middleName: middleName,
            lastName: lastName,
            mobileNumber: mobileNumber,
            email: email,
            address: address,
            city: city,
            state: state,
            pincode: pincode,
            createdDate: createdDate,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String firstName,
            Value<String?> middleName = const Value.absent(),
            required String lastName,
            required String mobileNumber,
            Value<String?> email = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<String?> city = const Value.absent(),
            Value<String?> state = const Value.absent(),
            Value<String?> pincode = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
          }) =>
              CustomersCompanion.insert(
            id: id,
            firstName: firstName,
            middleName: middleName,
            lastName: lastName,
            mobileNumber: mobileNumber,
            email: email,
            address: address,
            city: city,
            state: state,
            pincode: pincode,
            createdDate: createdDate,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CustomersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CustomersTable,
    Customer,
    $$CustomersTableFilterComposer,
    $$CustomersTableOrderingComposer,
    $$CustomersTableAnnotationComposer,
    $$CustomersTableCreateCompanionBuilder,
    $$CustomersTableUpdateCompanionBuilder,
    (Customer, BaseReferences<_$AppDatabase, $CustomersTable, Customer>),
    Customer,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ProductMasterTableTableManager get productMaster =>
      $$ProductMasterTableTableManager(_db, _db.productMaster);
  $$CustomersTableTableManager get customers =>
      $$CustomersTableTableManager(_db, _db.customers);
}
