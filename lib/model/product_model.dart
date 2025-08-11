// lib/model/product_model.dart
import 'package:get/get.dart';
import 'package:optician_desktop_app/data/app_database.dart'; // for OpticProduct

class Product {
  final int id;
  final String name;
  final double price;
  final String thumbnail;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.thumbnail,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'] ?? 0,
        name: json['title'] ?? json['name'] ?? '',
        price: (json['price'] ?? 0).toDouble(),
        thumbnail: json['thumbnail'] ?? '',
      );
}

class CartItem {
  final String id;
  final String name;

  /// original price (unit)
  final double price;

  /// discount percentage (e.g. 10 means 10%)
  final double? discount;

  /// explicit discounted price (if available). If set, used as effective price.
  final double? discountPrice;

  final String thumbnail;
  final RxInt qty; // observable quantity

  CartItem({
    required this.id,
    required this.name,
    required this.price,
    this.discount,
    this.discountPrice,
    this.thumbnail = '',
    int quantity = 1,
  }) : qty = quantity.obs;

  /// effective price used for calculations: prefer discountPrice, else compute from discount, else original price
  double get effectivePrice {
    if (discountPrice != null && discountPrice! > 0) return discountPrice!;
    final d = discount ?? 0;
    if (d > 0) {
      return price * (1 - d / 100);
    }
    return price;
  }

  bool get hasDiscount {
    final d = discount ?? 0;
    return (discountPrice != null && discountPrice! > 0) || d > 0;
  }

  /// Create from API `Product`
  factory CartItem.fromProduct(Product p) => CartItem(
        id: p.id.toString(),
        name: p.name,
        price: p.price,
        discount: 0,
        discountPrice: null,
        thumbnail: p.thumbnail,
        quantity: 1,
      );

  /// Create from Drift `OpticProduct`
  factory CartItem.fromOpticProduct(OpticProduct p) {
    final orig = p.price ?? 0.0;
    final disc = p.discount ?? 0.0;
    // If DB contains discountPrice explicitly (nullable), prefer it; otherwise compute from discount if present.
    final dp = (p.discountPrice != null && p.discountPrice! > 0)
        ? p.discountPrice
        : (disc > 0 ? orig * (1 - disc / 100) : null);

    return CartItem(
      id: p.id.toString(),
      name: p.productName,
      price: orig,
      discount: disc > 0 ? disc : null,
      discountPrice: dp,
      thumbnail: '', // add path if you store images
      quantity: 1,
    );
  }
}
