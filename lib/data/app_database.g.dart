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
        discount,
        unit,
        category,
        discountPrice
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
      discount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount']),
      unit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}unit']),
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category']),
      discountPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount_price']),
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
  final double? discount;
  final String? unit;
  final String? category;
  final double? discountPrice;
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
      this.discount,
      this.unit,
      this.category,
      this.discountPrice});
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
      discount: serializer.fromJson<double?>(json['discount']),
      unit: serializer.fromJson<String?>(json['unit']),
      category: serializer.fromJson<String?>(json['category']),
      discountPrice: serializer.fromJson<double?>(json['discountPrice']),
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
      'discount': serializer.toJson<double?>(discount),
      'unit': serializer.toJson<String?>(unit),
      'category': serializer.toJson<String?>(category),
      'discountPrice': serializer.toJson<double?>(discountPrice),
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
          Value<double?> discount = const Value.absent(),
          Value<String?> unit = const Value.absent(),
          Value<String?> category = const Value.absent(),
          Value<double?> discountPrice = const Value.absent()}) =>
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
        discount: discount.present ? discount.value : this.discount,
        unit: unit.present ? unit.value : this.unit,
        category: category.present ? category.value : this.category,
        discountPrice:
            discountPrice.present ? discountPrice.value : this.discountPrice,
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
      discount: data.discount.present ? data.discount.value : this.discount,
      unit: data.unit.present ? data.unit.value : this.unit,
      category: data.category.present ? data.category.value : this.category,
      discountPrice: data.discountPrice.present
          ? data.discountPrice.value
          : this.discountPrice,
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
          ..write('discount: $discount, ')
          ..write('unit: $unit, ')
          ..write('category: $category, ')
          ..write('discountPrice: $discountPrice')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, productName, hsnCode, price, description,
      stock, igst, sgst, cgst, discount, unit, category, discountPrice);
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
          other.discount == this.discount &&
          other.unit == this.unit &&
          other.category == this.category &&
          other.discountPrice == this.discountPrice);
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
  final Value<double?> discount;
  final Value<String?> unit;
  final Value<String?> category;
  final Value<double?> discountPrice;
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
    this.discount = const Value.absent(),
    this.unit = const Value.absent(),
    this.category = const Value.absent(),
    this.discountPrice = const Value.absent(),
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
    this.discount = const Value.absent(),
    this.unit = const Value.absent(),
    this.category = const Value.absent(),
    this.discountPrice = const Value.absent(),
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
    Expression<double>? discount,
    Expression<String>? unit,
    Expression<String>? category,
    Expression<double>? discountPrice,
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
      if (discount != null) 'discount': discount,
      if (unit != null) 'unit': unit,
      if (category != null) 'category': category,
      if (discountPrice != null) 'discount_price': discountPrice,
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
      Value<double?>? discount,
      Value<String?>? unit,
      Value<String?>? category,
      Value<double?>? discountPrice}) {
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
      discount: discount ?? this.discount,
      unit: unit ?? this.unit,
      category: category ?? this.category,
      discountPrice: discountPrice ?? this.discountPrice,
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
          ..write('discount: $discount, ')
          ..write('unit: $unit, ')
          ..write('category: $category, ')
          ..write('discountPrice: $discountPrice')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ProductMasterTable productMaster = $ProductMasterTable(this);
  late final $CustomerTable customer = $CustomerTable(this);
  late final $OpticProductsTable opticProducts = $OpticProductsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [productMaster, customer, opticProducts];
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
    (CustomerData, BaseReferences<_$AppDatabase, $CustomerTable, CustomerData>),
    CustomerData,
    PrefetchHooks Function()> {
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
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
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
    (CustomerData, BaseReferences<_$AppDatabase, $CustomerTable, CustomerData>),
    CustomerData,
    PrefetchHooks Function()>;
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
  Value<double?> discount,
  Value<String?> unit,
  Value<String?> category,
  Value<double?> discountPrice,
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
  Value<double?> discount,
  Value<String?> unit,
  Value<String?> category,
  Value<double?> discountPrice,
});

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

  ColumnFilters<double> get discount => $composableBuilder(
      column: $table.discount, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get unit => $composableBuilder(
      column: $table.unit, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get discountPrice => $composableBuilder(
      column: $table.discountPrice, builder: (column) => ColumnFilters(column));
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

  ColumnOrderings<double> get discount => $composableBuilder(
      column: $table.discount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get unit => $composableBuilder(
      column: $table.unit, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get discountPrice => $composableBuilder(
      column: $table.discountPrice,
      builder: (column) => ColumnOrderings(column));
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

  GeneratedColumn<double> get discount =>
      $composableBuilder(column: $table.discount, builder: (column) => column);

  GeneratedColumn<String> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<double> get discountPrice => $composableBuilder(
      column: $table.discountPrice, builder: (column) => column);
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
    (
      OpticProduct,
      BaseReferences<_$AppDatabase, $OpticProductsTable, OpticProduct>
    ),
    OpticProduct,
    PrefetchHooks Function()> {
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
            Value<double?> discount = const Value.absent(),
            Value<String?> unit = const Value.absent(),
            Value<String?> category = const Value.absent(),
            Value<double?> discountPrice = const Value.absent(),
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
            discount: discount,
            unit: unit,
            category: category,
            discountPrice: discountPrice,
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
            Value<double?> discount = const Value.absent(),
            Value<String?> unit = const Value.absent(),
            Value<String?> category = const Value.absent(),
            Value<double?> discountPrice = const Value.absent(),
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
            discount: discount,
            unit: unit,
            category: category,
            discountPrice: discountPrice,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
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
    (
      OpticProduct,
      BaseReferences<_$AppDatabase, $OpticProductsTable, OpticProduct>
    ),
    OpticProduct,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ProductMasterTableTableManager get productMaster =>
      $$ProductMasterTableTableManager(_db, _db.productMaster);
  $$CustomerTableTableManager get customer =>
      $$CustomerTableTableManager(_db, _db.customer);
  $$OpticProductsTableTableManager get opticProducts =>
      $$OpticProductsTableTableManager(_db, _db.opticProducts);
}
