// lib/controllers/cart_controller.dart
import 'package:get/get.dart';
import 'package:optician_desktop_app/data/app_database.dart';
import 'package:optician_desktop_app/model/product_model.dart';

class CartController extends GetxController {
  final cartItems = <CartItem>[].obs;

  /// Add product from DB (OpticProduct)
  void addOpticProductToCart(OpticProduct product) {
    final id = product.id.toString();
    final idx = cartItems.indexWhere((e) => e.id == id);

    if (idx != -1) {
      cartItems[idx].qty.value++;
    } else {
      cartItems.add(CartItem.fromOpticProduct(product));
    }
  }

  /// Add a CartItem directly (useful when restoring saved cart)
  void addCartItem(CartItem cartItem) {
    final idx = cartItems.indexWhere((e) => e.id == cartItem.id);

    if (idx != -1) {
      cartItems[idx].qty.value += cartItem.qty.value;
    } else {
      cartItems.add(cartItem);
    }
  }

  /// Remove an item
  void removeFromCart(CartItem item) {
    cartItems.removeWhere((i) => i.id == item.id);
  }

  /// Clear cart
  void clearCart() {
    cartItems.clear();
  }

  /// Total using effectivePrice (already accounts for discountPrice or percentage)
  double get totalPrice {
    return cartItems.fold(
      0.0,
      (sum, item) => sum + (item.effectivePrice * item.qty.value),
    );
  }

  /// Total quantity
  int get totalQuantity {
    return cartItems.fold(0, (sum, item) => sum + item.qty.value);
  }
}
