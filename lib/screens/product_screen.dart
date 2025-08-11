import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:drift/drift.dart' as drift;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:optician_desktop_app/data/app_database.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/custom_dropdown.dart';
import 'package:optician_desktop_app/widgets/custom_textField.dart';
import 'package:optician_desktop_app/widgets/outline_btn.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  TextEditingController productCode = TextEditingController();
  TextEditingController productName = TextEditingController();
  TextEditingController box = TextEditingController();
  TextEditingController rack = TextEditingController();
  TextEditingController modelNo = TextEditingController();
  TextEditingController createdBy = TextEditingController();
  TextEditingController dateinput = TextEditingController();
  final AppDatabase db = AppDatabase();
  List<ProductMasterData> data = [];
  void fetchAndSetProducts() async {
    final products =
        await db.getAllProducts(); // Returns List<ProductMasterData>
    setState(() {
      data = products;
    });

    print("data length: ${data.length}");

    print("object: $data"); // Example to check data
  }

  String? selectedCategory;
  String? selectedMaterial;
  String? selectedBrand;
  String? selectedSubBrand;
  String? selectedSize;
  String? selectedColor;
  String? selectedLens1;
  String? selectedLens2;
  String? selectedShape;
  String? selectedGender;
  String? selectedNegativeStock;

  final List<Map<String, String>> categoryTypes = [
    {"id": "", "name": "Select Category"},
    {"id": "1", "name": "Category 1"},
    {"id": "2", "name": "Category 2"},
  ];

  final List<Map<String, String>> materialTypes = [
    {"id": "", "name": "Select Material"},
    {"id": "1", "name": "Material 1"},
    {"id": "2", "name": "Material 2"},
  ];

  final List<Map<String, String>> brandTypes = [
    {"id": "", "name": "Select Brand"},
    {"id": "1", "name": "Brand 1"},
    {"id": "2", "name": "Brand 2"},
  ];

  final List<Map<String, String>> subBrandTypes = [
    {"id": "", "name": "Select Sub-Brand"},
    {"id": "1", "name": "Sub-Brand 1"},
    {"id": "2", "name": "Sub-Brand 2"},
  ];

  final List<Map<String, String>> size = [
    {"id": "", "name": "Select Size"},
    {"id": "1", "name": "Size 1"},
    {"id": "2", "name": "Size 2"},
  ];

  final List<Map<String, String>> colourList = [
    {"id": "", "name": "Select Color"},
    {"id": "1", "name": "Color 1"},
    {"id": "2", "name": "Color 2"},
  ];

  final List<Map<String, String>> lensTypes1 = [
    {"id": "", "name": "Select Lens Type 1"},
    {"id": "1", "name": "Lens Type 11"},
    {"id": "2", "name": "Lens Type 12"},
  ];

  final List<Map<String, String>> lensTypes2 = [
    {"id": "", "name": "Select Lens Type 2"},
    {"id": "1", "name": "Lens Type 21"},
    {"id": "2", "name": "Lens Type 22"},
  ];

  final List<Map<String, String>> shapeList = [
    {"id": "1", "name": "Shape 1"},
    {"id": "2", "name": "Shape 2"},
  ];

  final List<Map<String, String>> genderList = [
    {"id": "1", "name": "Female"},
    {"id": "2", "name": "Male"},
    {"id": "3", "name": "Others"},
  ];

  final List<Map<String, String>> negativeStock = [
    {"id": "1", "name": "Yes"},
    {"id": "2", "name": "No"},
  ];

  int? editingProductId; // To track whether editing an existing product
  DateTime? pickedDate; // Already nullable for date picker
  @override
  void initState() {
    dateinput.text = "";
    super.initState();
    fetchAndSetProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Products',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'FontMain',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Form Section (2 columns)
                    Expanded(
                      flex: 3,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Left Column
                          Expanded(
                            child: Column(
                              children: [
                                CustomTextField(
                                  controller: productCode,
                                  ddName: 'Product Code',
                                ),
                                SizedBox(height: 10),
                                CustomTextField(
                                  controller: productName,
                                  ddName: 'Product Name',
                                ),
                                SizedBox(height: 10),
                                CustomDropdown(
                                  ddName: 'Category',
                                  items: categoryTypes,
                                  value: selectedCategory,
                                  onChanged: (value) =>
                                      setState(() => selectedCategory = value),
                                ),
                                SizedBox(height: 10),
                                CustomDropdown(
                                  ddName: 'Material',
                                  items: materialTypes,
                                  value: selectedMaterial,
                                  onChanged: (value) =>
                                      setState(() => selectedMaterial = value),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CustomDropdown(
                                        ddName: 'Brand',
                                        items: brandTypes,
                                        value: selectedBrand,
                                        onChanged: (value) => setState(
                                            () => selectedBrand = value),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: CustomDropdown(
                                        ddName: 'Sub Brand',
                                        items: subBrandTypes,
                                        value: selectedSubBrand,
                                        onChanged: (value) => setState(
                                            () => selectedSubBrand = value),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CustomDropdown(
                                        ddName: 'Size',
                                        items: size,
                                        value: selectedSize,
                                        onChanged: (value) => setState(
                                            () => selectedSize = value),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: CustomDropdown(
                                        ddName: 'Colors',
                                        items: colourList,
                                        value: selectedColor,
                                        onChanged: (value) => setState(
                                            () => selectedColor = value),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CustomDropdown(
                                        ddName: 'LensType 1',
                                        items: lensTypes1,
                                        value: selectedLens1,
                                        onChanged: (value) => setState(
                                            () => selectedLens1 = value),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: CustomDropdown(
                                        ddName: 'LensType 2',
                                        items: lensTypes2,
                                        value: selectedLens2,
                                        onChanged: (value) => setState(
                                            () => selectedLens2 = value),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          // Right Column
                          Expanded(
                            child: Column(
                              children: [
                                CustomDropdown(
                                  ddName: 'Shape',
                                  items: shapeList,
                                  value: selectedShape,
                                  onChanged: (value) =>
                                      setState(() => selectedShape = value),
                                ),
                                SizedBox(height: 10),
                                CustomDropdown(
                                  ddName: 'Gender',
                                  items: genderList,
                                  value: selectedGender,
                                  onChanged: (value) =>
                                      setState(() => selectedGender = value),
                                ),
                                SizedBox(height: 10),
                                CustomDropdown(
                                  ddName: 'Allow Negative Stock',
                                  items: negativeStock,
                                  value: selectedNegativeStock,
                                  onChanged: (value) => setState(
                                      () => selectedNegativeStock = value),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CustomTextField(
                                        controller: box,
                                        ddName: 'Box / Pack',
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: CustomTextField(
                                        controller: rack,
                                        ddName: 'Rack',
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                CustomTextField(
                                  controller: modelNo,
                                  ddName: 'Model No.',
                                ),
                                SizedBox(height: 10),
                                CustomTextField(
                                  controller: createdBy,
                                  ddName: 'Created By',
                                ),
                                SizedBox(height: 10),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 2),
                                        child: Text(
                                          'Created Date',
                                          style: TextStyle(
                                              fontFamily: 'FontMain',
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                        // width: 170,
                                        child: TextFormField(
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          textAlign: TextAlign
                                              .left, // Align text to the left
                                          style: const TextStyle(
                                              fontFamily: 'FontMain',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                          controller: dateinput,
                                          onTap: () async {
                                            pickedDate = await showDatePicker(
                                                context: context,
                                                initialDate: DateTime.now(),
                                                firstDate: DateTime(1900),
                                                lastDate: DateTime(2900));
                                            if (pickedDate != null) {
                                              setState(() {
                                                dateinput.text =
                                                    DateFormat('dd-MM-yyyy')
                                                        .format(pickedDate!);
                                              });
                                            }
                                          },
                                          decoration: const InputDecoration(
                                            contentPadding: EdgeInsets.symmetric(
                                                vertical: 8,
                                                horizontal:
                                                    8), // Adjust padding for better vertical centering
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromARGB(
                                                      255, 217, 215, 215),
                                                  width: 1),
                                              borderRadius: BorderRadius
                                                  .zero, // Remove border radius
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius
                                                  .zero, // Remove border radius
                                            ),
                                            hintStyle: TextStyle(
                                              fontFamily: 'FontMain',
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ])
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 30),

                    // Table Section
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Product Table",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          const SizedBox(height: 10),
                          buildProductTable(),
                          SizedBox(
                            height: 10,
                          ),
                          const SizedBox(height: 10),
                          OutLineBtn(
                            onPressed: () {},
                            ddName: 'Upload Excel Product',
                            height: 45,
                            width: 100,
                            colors: const Color(0xff5793CE),
                          ),
                          const SizedBox(height: 10),
                          OutLineBtn(
                            onPressed: () {},
                            ddName: 'Upload Multiple Product',
                            height: 40,
                            width: 100,
                            colors: const Color(0xff5793CE),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Buttons(
                                  onPressed: () async {
                                    try {
                                      final product = ProductMasterCompanion(
                                        productCode:
                                            drift.Value(productCode.text),
                                        productName:
                                            drift.Value(productName.text),
                                        category:
                                            drift.Value(selectedCategory ?? ''),
                                        material:
                                            drift.Value(selectedMaterial ?? ''),
                                        brand: drift.Value(selectedBrand ?? ''),
                                        subBrand:
                                            drift.Value(selectedSubBrand ?? ''),
                                        size: drift.Value(selectedSize ?? ''),
                                        colors:
                                            drift.Value(selectedColor ?? ''),
                                        lensType1:
                                            drift.Value(selectedLens1 ?? ''),
                                        lensType2:
                                            drift.Value(selectedLens2 ?? ''),
                                        shape: drift.Value(selectedShape ?? ''),
                                        gender:
                                            drift.Value(selectedGender ?? ''),
                                        allowNegativeStock: drift.Value(
                                            selectedNegativeStock == 'Yes'),
                                        boxPack: drift.Value(box.text),
                                        rack: drift.Value(rack.text),
                                        modelNo: drift.Value(modelNo.text),
                                        createdBy: drift.Value(createdBy.text),
                                        createdDate: drift.Value(
                                            pickedDate ?? DateTime.now()),
                                      );

                                      await db.insertProduct(product);

                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                              'Product added successfully!'),
                                          duration: Duration(seconds: 2),
                                        ),
                                      );

                                      // Reset fields after success
                                      setState(() {
                                        productCode.clear();
                                        productName.clear();
                                        selectedCategory = null;
                                        selectedMaterial = null;
                                        selectedBrand = null;
                                        selectedSubBrand = null;
                                        selectedSize = null;
                                        selectedColor = null;
                                        selectedLens1 = null;
                                        selectedLens2 = null;
                                        selectedShape = null;
                                        selectedGender = null;
                                        selectedNegativeStock = null;
                                        box.clear();
                                        rack.clear();
                                        modelNo.clear();
                                        createdBy.clear();
                                        dateinput.clear();
                                        pickedDate = null;

                                        fetchAndSetProducts(); // Refresh table
                                      });
                                    } catch (e) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content:
                                              Text('failed to add product: $e'),
                                          duration: Duration(seconds: 2),
                                        ),
                                      );
                                    }
                                  },
                                  ddName: 'Save',
                                  height: 40,
                                  width: 70,
                                  colors: const Color(0xff5793CE)),
                              const SizedBox(width: 5),
                              OutLineBtn(
                                onPressed: () {},
                                ddName: 'Add New',
                                height: 40,
                                width: 70,
                                colors: const Color(0xff5793CE),
                              ),
                              const SizedBox(width: 5),
                              OutLineBtn(
                                onPressed: () {},
                                ddName: 'Cancel',
                                height: 40,
                                width: 70,
                                colors: const Color(0xff5793CE),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
        const SizedBox(height: 4),
        TextFormField(
          controller: controller,
          style: const TextStyle(fontSize: 12),
          decoration: const InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }

  Widget buildDateField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Date",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
        const SizedBox(height: 4),
        SizedBox(
          width: double.infinity,
          child: TextFormField(
            controller: dateinput,
            readOnly: true,
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101),
              );
              if (pickedDate != null) {
                setState(() {
                  dateinput.text = DateFormat('yyyy-MM-dd').format(pickedDate);
                });
              }
            },
            style: const TextStyle(fontSize: 12),
            decoration: const InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  // Widget buildDropdown(
  //   String label,
  //   List<Map<String, String>> items,
  //   String? value,
  //   void Function(String?) onChanged,
  // ) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text(
  //         label,
  //         style: const TextStyle(
  //           fontWeight: FontWeight.bold,
  //           fontSize: 12,
  //           fontFamily: 'FontMain',
  //         ),
  //       ),
  //       const SizedBox(height: 4),
  //       DropdownButtonFormField<String>(
  //         value: value,
  //         onChanged: onChanged,
  //         isDense: true,
  //         style: const TextStyle(
  //           fontSize: 12,
  //           color: Colors.black,
  //           fontFamily: 'FontMain',
  //         ),
  //         decoration: const InputDecoration(
  //           contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
  //           border: OutlineInputBorder(),
  //         ),
  //         items: items
  //             .map((item) => DropdownMenuItem<String>(
  //                   value: item['id'],
  //                   child: Text(item['name'] ?? ''),
  //                 ))
  //             .toList(),
  //       ),
  //     ],
  //   );
  // }

  Widget buildProductTable() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columnSpacing: 15,
        border: TableBorder.all(color: Colors.black45),
        columns: const [
          DataColumn(label: Text("Edit", style: TextStyle(fontSize: 10))),
          DataColumn(label: Text("Delete", style: TextStyle(fontSize: 10))),
          DataColumn(label: Text("ProdCode", style: TextStyle(fontSize: 10))),
          DataColumn(label: Text("ProdName", style: TextStyle(fontSize: 10))),
        ],
        rows: data
            .map((item) => DataRow(
                  cells: [
                    DataCell(
                      Center(
                        child: IconButton(
                          icon: FaIcon(FontAwesomeIcons.pen, size: 9),
                          onPressed: () {
                            print("Editing product: ${item}");
                            setState(() {
                              // Populate text fields
                              productCode.text = item.productCode;
                              productName.text = item.productName;
                              box.text = item.boxPack ?? '';
                              rack.text = item.rack ?? '';
                              modelNo.text = item.modelNo ?? '';
                              createdBy.text = item.createdBy ?? '';

                              // Dropdown values
                              selectedCategory = item.category;
                              selectedMaterial = item.material;
                              selectedBrand = item.brand;
                              selectedSubBrand = item.subBrand;
                              selectedSize = item.size;
                              selectedColor = item.colors;
                              selectedLens1 = item.lensType1;
                              selectedLens2 = item.lensType2;
                              selectedShape = item.shape;
                              selectedGender = item.gender;
                              selectedNegativeStock =
                                  item.allowNegativeStock ? 'Yes' : 'No';

                              // Date
                              pickedDate = item.createdDate;
                              dateinput.text = item.createdDate != null
                                  ? DateFormat('dd-MM-yyyy')
                                      .format(item.createdDate!)
                                  : '';

                              // Store the ID in case you want to update later
                              editingProductId = item.id;
                            });
                          },
                        ),
                      ),
                    ),
                    DataCell(
                      Center(
                        child: IconButton(
                          icon: FaIcon(FontAwesomeIcons.xmark, size: 11),
                          onPressed: () async {
                            final confirm = await showDialog<bool>(
                              context: context,
                              builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                title: const Text('Confirm Delete'),
                                content: const Text(
                                    'Are you sure you want to delete this product?'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(false),
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(true),
                                    child: const Text('Delete'),
                                  ),
                                ],
                              ),
                            );
                            if (confirm == true) {
                              await db
                                  .deleteProduct(item.id); // delete from Drift
                              setState(() {
                                // Clear form fields and selections if the deleted product was being edited
                                if (editingProductId == item.id) {
                                  productCode.clear();
                                  productName.clear();
                                  selectedCategory = null;
                                  selectedMaterial = null;
                                  selectedBrand = null;
                                  selectedSubBrand = null;
                                  selectedSize = null;
                                  selectedColor = null;
                                  selectedLens1 = null;
                                  selectedLens2 = null;
                                  selectedShape = null;
                                  selectedGender = null;
                                  selectedNegativeStock = null;
                                  box.clear();
                                  rack.clear();
                                  modelNo.clear();
                                  createdBy.clear();
                                  dateinput.clear();
                                  pickedDate = null;
                                  editingProductId = null;
                                }
                                fetchAndSetProducts(); // refresh
                              });
                            }
                          },
                        ),
                      ),
                    ),
                    DataCell(
                      Center(
                        child: Text(
                          item.productCode,
                          style: TextStyle(
                            fontFamily: 'FontMain',
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    DataCell(
                      Center(
                        child: Text(
                          item.productName,
                          style: TextStyle(
                            fontFamily: 'FontMain',
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
            .toList(),
      ),
    );
  }
}
