import 'package:flutter/material.dart';
import 'package:drift/drift.dart' as drift;
import 'package:optician_desktop_app/data/app_database.dart';
import 'package:optician_desktop_app/model/product_model.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/custom_dropdown.dart';
import 'package:optician_desktop_app/widgets/custom_textField.dart';

class ProductFormScreen extends StatefulWidget {
  const ProductFormScreen({super.key});

  @override
  State<ProductFormScreen> createState() => _ProductFormScreenState();
}

class _ProductFormScreenState extends State<ProductFormScreen> {
  final AppDatabase db = AppDatabase();
  List<OpticProduct> _savedProducts = [];

  int? _editingId;

  final _productNameController = TextEditingController();
  final _hsnCodeController = TextEditingController();
  final _priceController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _stockController = TextEditingController();
  final _discountPriceController = TextEditingController();

  String? _selectedIgst;
  String? _selectedSgst;
  String? _selectedCgst;
  String? _selectedDiscount;
  String? _selectedUnit;
  String? _selectedCategory;

  final List<Map<String, String>> gstItems = [
    {'name': '0%'},
    {'name': '5%'},
    {'name': '12%'},
    {'name': '18%'},
    {'name': '28%'},
  ];

  final List<Map<String, String>> discountItems = [
    {'name': '0%'},
    {'name': '10%'},
    {'name': '15%'},
    {'name': '20%'},
  ];

  final List<Map<String, String>> unitItems = [
    {'name': 'Piece'},
    {'name': 'Box'},
    {'name': 'Pair'},
  ];

  final List<Map<String, String>> categoryItems = [
    {'name': 'Frames'},
    {'name': 'Lenses'},
    {'name': 'Sunglasses'},
    {'name': 'Accessories'},
  ];

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  Future<void> _loadProducts() async {
    final products = await db.getAllOpticProducts();
    setState(() {
      _savedProducts = products;
    });
  }

  void _updateDiscountPrice() {
    final price = double.tryParse(_priceController.text.trim()) ?? 0.0;
    final discountPercent =
        double.tryParse((_selectedDiscount ?? '0').replaceAll('%', '')) ?? 0.0;

    double finalPrice;
    if (discountPercent > 0) {
      finalPrice = price - (price * discountPercent / 100);
    } else {
      finalPrice = price;
    }

    _discountPriceController.text = finalPrice.toStringAsFixed(2);
  }

  void _resetForm() {
    _productNameController.clear();
    _hsnCodeController.clear();
    _priceController.clear();
    _descriptionController.clear();
    _stockController.clear();
    _discountPriceController.clear();

    _selectedIgst = null;
    _selectedCgst = null;
    _selectedSgst = null;
    _selectedDiscount = null;
    _selectedUnit = null;
    _selectedCategory = null;
    _editingId = null;
  }

  Future<void> _saveOrUpdateProduct() async {
    final product = OpticProductsCompanion(
      productName: drift.Value(_productNameController.text.trim()),
      hsnCode: drift.Value(_hsnCodeController.text.trim()),
      price: drift.Value(double.tryParse(_priceController.text.trim()) ?? 0.0),
      description: drift.Value(_descriptionController.text.trim()),
      stock: drift.Value(int.tryParse(_stockController.text.trim()) ?? 0),
      igst: drift.Value(
          double.tryParse((_selectedIgst ?? '0').replaceAll('%', '')) ?? 0.0),
      cgst: drift.Value(
          double.tryParse((_selectedCgst ?? '0').replaceAll('%', '')) ?? 0.0),
      sgst: drift.Value(
          double.tryParse((_selectedSgst ?? '0').replaceAll('%', '')) ?? 0.0),
      discount: drift.Value(
          double.tryParse((_selectedDiscount ?? '0').replaceAll('%', '')) ??
              0.0),
      unit: drift.Value(_selectedUnit ?? ''),
      category: drift.Value(_selectedCategory ?? ''),
      discountPrice: drift.Value(
          double.tryParse(_discountPriceController.text.trim()) ?? 0.0),
    );

    if (_editingId == null) {
      await db.insertOpticProduct(product);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Product added successfully!')),
      );
    } else {
      await db.updateOpticProduct(OpticProduct(
        id: _editingId!,
        productName: product.productName.value,
        hsnCode: product.hsnCode.value,
        price: product.price.value,
        description: product.description.value,
        stock: product.stock.value,
        igst: product.igst.value,
        cgst: product.cgst.value,
        sgst: product.sgst.value,
        discount: product.discount.value,
        unit: product.unit.value,
        category: product.category.value,
        discountPrice: product.discountPrice.value,
      ));

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Product updated successfully!')),
      );
    }

    _resetForm();
    await _loadProducts();
  }

  void _editProduct(OpticProduct p) {
    _editingId = p.id;
    _productNameController.text = p.productName;
    _hsnCodeController.text = p.hsnCode!;
    _priceController.text = p.price.toString();
    _descriptionController.text = p.description ?? '';
    _stockController.text = p.stock.toString();
    _selectedIgst = '${p.igst?.toStringAsFixed(0) ?? '0'}%';
    _selectedCgst = '${p.cgst?.toStringAsFixed(0) ?? '0'}%';
    _selectedSgst = '${p.sgst?.toStringAsFixed(0) ?? '0'}%';
    _selectedDiscount = '${p.discount?.toStringAsFixed(0) ?? '0'}%';
    _discountPriceController.text = p.discountPrice?.toStringAsFixed(2) ?? '';

    _selectedUnit = p.unit;
    _selectedCategory = p.category;
    setState(() {});
  }

  Future<void> _deleteProduct(int id) async {
    await db.deleteOpticProduct(id);
    await _loadProducts();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Product deleted')),
    );
  }

  int _currentPage = 0;
  final int _itemsPerPage = 5;

// Method to get current page items
  List<OpticProduct> get _currentPageItems {
    final startIndex = _currentPage * _itemsPerPage;
    final endIndex = (_currentPage + 1) * _itemsPerPage;
    return _savedProducts.sublist(
      startIndex,
      endIndex > _savedProducts.length ? _savedProducts.length : endIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        double width = constraints.maxWidth;

        return SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    spacing: 20,
                    runSpacing: 12,
                    children: [
                      SizedBox(
                        width: width / 3,
                        child: CustomTextField(
                            ddName: 'Product Name',
                            controller: _productNameController),
                      ),
                      SizedBox(
                        width: width / 4,
                        child: CustomTextField(
                            ddName: 'HSN Code', controller: _hsnCodeController),
                      ),
                      SizedBox(
                        width: width / 4,
                        child: CustomTextField(
                          ddName: 'Price',
                          controller: _priceController,
                          keyboardType: TextInputType.number,
                          onChanged: (_) => _updateDiscountPrice(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 20,
                    runSpacing: 12,
                    children: [
                      SizedBox(
                        width: width / 4,
                        child: CustomDropdown(
                          ddName: 'IGST',
                          items: gstItems,
                          value: _selectedIgst,
                          onChanged: (val) =>
                              setState(() => _selectedIgst = val),
                        ),
                      ),
                      SizedBox(
                        width: width / 4,
                        child: CustomDropdown(
                          ddName: 'CGST',
                          items: gstItems,
                          value: _selectedCgst,
                          onChanged: (val) =>
                              setState(() => _selectedCgst = val),
                        ),
                      ),
                      SizedBox(
                        width: width / 4,
                        child: CustomDropdown(
                          ddName: 'SGST',
                          items: gstItems,
                          value: _selectedSgst,
                          onChanged: (val) =>
                              setState(() => _selectedSgst = val),
                        ),
                      ),

                      // 👇 Discount & Discount Price in same row
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: width / 4,
                            child: CustomDropdown(
                              ddName: 'Discount',
                              items: discountItems,
                              value: _selectedDiscount,
                              onChanged: (val) {
                                setState(() {
                                  _selectedDiscount = val;
                                  _updateDiscountPrice();
                                });
                              },
                            ),
                          ),
                          const SizedBox(width: 20), // space between
                          SizedBox(
                            width: width / 4,
                            child: CustomTextField(
                              ddName: 'Discount Price',
                              controller: _discountPriceController,
                              readOnly: true,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 20,
                    runSpacing: 12,
                    children: [
                      SizedBox(
                          width: width / 3,
                          child: CustomTextField(
                              ddName: 'Stock Available',
                              controller: _stockController,
                              keyboardType: TextInputType.number)),
                      SizedBox(
                          width: width / 3,
                          child: CustomDropdown(
                              ddName: 'Unit',
                              items: unitItems,
                              value: _selectedUnit,
                              onChanged: (val) =>
                                  setState(() => _selectedUnit = val))),
                      SizedBox(
                          width: width / 3,
                          child: CustomDropdown(
                              ddName: 'Category',
                              items: categoryItems,
                              value: _selectedCategory,
                              onChanged: (val) =>
                                  setState(() => _selectedCategory = val))),
                    ],
                  ),
                  const SizedBox(height: 16),
                  CustomTextField(
                      ddName: 'Description',
                      controller: _descriptionController),
                  const SizedBox(height: 32),
                  Buttons(
                    onPressed: _saveOrUpdateProduct,
                    ddName:
                        _editingId == null ? "Save Product" : "Update Product",
                    height: 50,
                    width: 50,
                    colors: Colors.blue,
                  ),
                  const SizedBox(height: 32),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Saved Products:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'FontMain',
                        ),
                      ),
                      const SizedBox(height: 8),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: _currentPageItems.length,
                        itemBuilder: (context, index) {
                          final p = _currentPageItems[index];
                          return Container(
                            margin: const EdgeInsets.symmetric(vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.all(12),
                            child: ListTile(
                              title: Text(
                                p.productName,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  fontFamily: 'FontMain',
                                ),
                              ),
                              subtitle: Text(
                                'HSN: ${p.hsnCode} | ₹${p.price.toStringAsFixed(2)} | Disc: ${p.discount}%',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  fontFamily: 'FontMain',
                                ),
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.edit,
                                        color: Colors.blue),
                                    onPressed: () => _editProduct(p),
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.delete,
                                        color: Colors.red),
                                    onPressed: () => _deleteProduct(p.id),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),

                      const SizedBox(height: 12),

                      // Pagination Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Buttons(
                            onPressed: _currentPage > 0
                                ? () {
                                    setState(() {
                                      _currentPage--;
                                    });
                                  }
                                : null,
                            ddName: 'Previous',
                            height: 40,
                            width: 70,
                            colors: const Color(0xff5793CE),
                          ),
                          const SizedBox(width: 20),
                          Buttons(
                            onPressed: (_currentPage + 1) * _itemsPerPage <
                                    _savedProducts.length
                                ? () {
                                    setState(() {
                                      _currentPage++;
                                    });
                                  }
                                : null,
                            ddName: 'Next',
                            height: 40,
                            width: 70,
                            colors: const Color(0xff5793CE),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
