// lib/screens/pos_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:optician_desktop_app/data/app_database.dart';
import '../controllers/cart_controller.dart';

class PosScreen extends StatefulWidget {
  @override
  State<PosScreen> createState() => _PosScreenState();
}

class _PosScreenState extends State<PosScreen> {
  final CartController cartController = Get.put(CartController());
  final AppDatabase db = AppDatabase();
  late Future<List<OpticProduct>> futureOpticProducts;

  String? selectedCategory;
  List<String> categories = [];

  @override
  void initState() {
    super.initState();
    futureOpticProducts = db.getAllOpticProducts();
  }

  double _getDiscountedPrice(OpticProduct product) {
    final price = product.price ?? 0;
    final discount = product.discount ?? 0;
    if (discount > 0) {
      return price - (price * discount / 100);
    }
    return price;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 4,
            child: FutureBuilder<List<OpticProduct>>(
              future: futureOpticProducts,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      'Error: ${snapshot.error}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'FontMain',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(
                    child: Text(
                      'No products found in local DB',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'FontMain',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }

                final products = snapshot.data!;

                if (categories.isEmpty) {
                  categories = ['All'];
                  final uniqueCategories = products
                      .map((p) => p.category)
                      .where((c) => c != null && c!.isNotEmpty)
                      .map((c) => c!)
                      .toSet()
                      .toList();
                  categories.addAll(uniqueCategories);
                  if (selectedCategory == null) selectedCategory = 'All';
                }

                final filteredProducts =
                    (selectedCategory == null || selectedCategory == 'All')
                        ? products
                        : products
                            .where((p) => p.category == selectedCategory)
                            .toList();

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      child: Row(
                        children: categories.map((cat) {
                          final isSelected = selectedCategory == cat;
                          return Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: ChoiceChip(
                              label: Text(cat),
                              selected: isSelected,
                              onSelected: (_) {
                                setState(() {
                                  selectedCategory = cat;
                                });
                              },
                              selectedColor: const Color(0xff5793CE),
                              labelStyle: TextStyle(
                                color:
                                    isSelected ? Colors.white : Colors.black87,
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold,
                              ),
                              backgroundColor: Colors.grey[300],
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 8),
                            ),
                          );
                        }).toList(),
                      ),
                    ),

                    // Product Grid
                    Expanded(
                      child: GridView.builder(
                        padding: const EdgeInsets.all(12),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 0.60,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                        itemCount: filteredProducts.length,
                        itemBuilder: (_, index) {
                          final product = filteredProducts[index];
                          final discountedPrice = _getDiscountedPrice(product);
                          final hasDiscount = (product.discount ?? 0) > 0;

                          return GestureDetector(
                            onTap: () =>
                                cartController.addOpticProductToCart(product),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.05),
                                    blurRadius: 6,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Product image / icon area
                                  Expanded(
                                    flex: 3,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey[100],
                                            borderRadius:
                                                const BorderRadius.vertical(
                                                    top: Radius.circular(12)),
                                          ),
                                          child: Image.network(
                                            'https://t4.ftcdn.net/jpg/01/85/66/11/360_F_185661189_vSiGMpAvWWw85S63k7kQbN0rzJOBemvQ.jpg',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        if (hasDiscount)
                                          Positioned(
                                            top: 8,
                                            left: 8,
                                            child: Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 6,
                                                        vertical: 3),
                                                decoration: BoxDecoration(
                                                  color: Colors.redAccent,
                                                  borderRadius:
                                                      BorderRadius.circular(3),
                                                ),
                                                child: Text(
                                                  "${product.discount!.toInt()}%",
                                                  style: const TextStyle(
                                                    fontFamily: 'FontMain',
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                )),
                                          ),
                                      ],
                                    ),
                                  ),

                                  // Product details
                                  Expanded(
                                    flex: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            product.productName ?? '',
                                            style: const TextStyle(
                                              fontFamily: 'FontMain',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10,
                                            ),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(height: 2),
                                          Text(
                                            "HSN: ${product.hsnCode ?? ''}",
                                            style: const TextStyle(
                                                fontFamily: 'FontMain',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            product.category != null &&
                                                    product.category!.isNotEmpty
                                                ? product.category!
                                                : "",
                                            style: const TextStyle(
                                                fontFamily: 'FontMain',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10,
                                                color: Colors.grey),
                                          ),
                                          const Spacer(),
                                          if (hasDiscount) ...[
                                            Text(
                                              "₹${product.price?.toStringAsFixed(2) ?? '0.00'}",
                                              style: const TextStyle(
                                                fontFamily: 'FontMain',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors.red,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                              ),
                                            ),
                                            Text(
                                              "₹${discountedPrice.toStringAsFixed(2)}",
                                              style: const TextStyle(
                                                fontFamily: 'FontMain',
                                                fontSize: 13,
                                                color: Colors.green,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ] else
                                            Text(
                                              "₹${product.price?.toStringAsFixed(2) ?? '0.00'}",
                                              style: const TextStyle(
                                                fontFamily: 'FontMain',
                                                fontSize: 13,
                                                color: Colors.green,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          const SizedBox(height: 2),
                                          Text(
                                            "Stock: ${product.stock ?? 0}",
                                            style: const TextStyle(
                                                fontFamily: 'FontMain',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),

          // Cart Panel
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("🛒 Cart",
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'FontMain',
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 6),
                  Expanded(
                    child: Obx(() {
                      return ListView.builder(
                        itemCount: cartController.cartItems.length,
                        itemBuilder: (_, index) {
                          final item = cartController.cartItems[index];
                          final discount = item.discount ?? 0;
                          final discountedPrice =
                              item.price - (item.price * discount / 100);
                          return Container(
                            margin: const EdgeInsets.symmetric(vertical: 2),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        item.name,
                                        style: const TextStyle(
                                          fontSize: 10,
                                          fontFamily: 'FontMain',
                                          fontWeight: FontWeight.bold,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    if (discount > 0)
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Obx(() => Text(
                                                "₹${(discountedPrice * item.qty.value).toStringAsFixed(2)}",
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'FontMain',
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.green,
                                                ),
                                              )),
                                          const SizedBox(height: 2),
                                          Text(
                                            "₹${item.price.toStringAsFixed(2)}",
                                            style: const TextStyle(
                                              fontSize: 10,
                                              color: Colors.red,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            ),
                                          ),
                                        ],
                                      )
                                    else
                                      Obx(() => Text(
                                            "₹${(item.price * item.qty.value).toStringAsFixed(2)}",
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'FontMain',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.green,
                                            ),
                                          )),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        IconButton(
                                          icon: const Icon(
                                              Icons.remove_circle_outline),
                                          onPressed: () {
                                            if (item.qty.value > 1) {
                                              item.qty.value--;
                                            }
                                          },
                                        ),
                                        Obx(() => Text(
                                              item.qty.value.toString(),
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'FontMain',
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )),
                                        IconButton(
                                          icon: const Icon(
                                              Icons.add_circle_outline),
                                          onPressed: () {
                                            item.qty.value++;
                                          },
                                        ),
                                      ],
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.delete,
                                          color: Colors.redAccent),
                                      onPressed: () =>
                                          cartController.removeFromCart(item),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }),
                  ),
                  const Divider(),
                  ExpansionTile(
                    title: Obx(() {
                      final subtotal = cartController.cartItems.fold(
                        0.0,
                        (sum, item) {
                          final discount = item.discount ?? 0;
                          final discountedPrice =
                              item.price - (item.price * discount / 100);
                          return sum + (discountedPrice * item.qty.value);
                        },
                      );
                      return Text(
                        "Total: ₹${subtotal.toStringAsFixed(2)}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'FontMain',
                        ),
                      );
                    }),
                    children: [
                      Obx(() {
                        final subtotal = cartController.cartItems.fold(
                          0.0,
                          (sum, item) {
                            final discount = item.discount ?? 0;
                            final discountedPrice =
                                item.price - (item.price * discount / 100);
                            return sum + (discountedPrice * item.qty.value);
                          },
                        );
                        final discountAmount = subtotal * 0.10;
                        final tax = (subtotal - discountAmount) * 0.05;
                        final total = subtotal - discountAmount + tax;

                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildSummaryRow("Subtotal", subtotal),
                              _buildSummaryRow(
                                  "Discount (10%)", -discountAmount),
                              _buildSummaryRow("GST (5%)", tax),
                              const Divider(thickness: 1.2),
                              _buildSummaryRow("Total", total, isTotal: true),
                              const SizedBox(height: 16),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton.icon(
                                  onPressed: cartController.clearCart,
                                  icon: const Icon(
                                    Icons.check_circle_outline,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                  label: const Text(
                                    "Checkout",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'FontMain',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 14),
                                    backgroundColor: const Color(0xff5793CE),
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    elevation: 3,
                                    shadowColor: Colors.black45,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildSummaryRow(String label, double amount, {bool isTotal = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,
            style: TextStyle(
                fontSize: isTotal ? 16 : 14,
                fontFamily: 'FontMain',
                fontWeight: FontWeight.bold)),
        Text(
          "₹ ${amount.toStringAsFixed(2)}",
          style: TextStyle(
            fontFamily: 'FontMain',
            fontSize: isTotal ? 16 : 14,
            fontWeight: FontWeight.bold,
            color: isTotal ? const Color(0xff5793CE) : Colors.black87,
          ),
        ),
      ],
    ),
  );
}
