import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:optician_desktop_app/data/app_database.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/custom_dropdown.dart';
import 'package:optician_desktop_app/widgets/custom_textField.dart';
import 'package:optician_desktop_app/widgets/outline_btn.dart';
import 'package:drift/drift.dart' as drift;

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final AppDatabase db = AppDatabase();
  List<Category> _savedcategory = [];

  TextEditingController categoryCode = TextEditingController();
  TextEditingController descrption = TextEditingController();
  TextEditingController commission = TextEditingController();
  TextEditingController classification = TextEditingController();
  TextEditingController dpt = TextEditingController();
  TextEditingController dst = TextEditingController();
  TextEditingController createdBy = TextEditingController();
  TextEditingController createdDate = TextEditingController();

  final List<Map<String, String>> data = [
    {
      "prodCode": "PRODUCT_984994",
      "description": "description_1",
      "comm": "hello",
      "billing": "Yes"
    },
    {
      "prodCode": "PRODUCT_984994",
      "description": "description_2",
      "comm": "hello",
      "billing": "Yes"
    },
    {
      "prodCode": "PRODUCT_984994",
      "description": "description_3",
      "comm": "hello",
      "billing": "No"
    },
    {
      "prodCode": "PRODUCT_984994",
      "description": "description_4",
      "comm": "hello",
      "billing": "Yes"
    },
  ];
  final List<Map<String, String>> allowBilling = [
    {"id": "", "name": "Select"},
    {"id": "1", "name": "Yes"},
    {"id": "2", "name": "No"},
  ];

  final List<Map<String, String>> maintainQty = [
    {"id": "", "name": "Select"},
    {"id": "1", "name": "Yes"},
    {"id": "2", "name": "No"},
  ];

  String? selectedBilling;
  String? selectedQty;
  int? _editingId;
  @override
  void initState() {
    super.initState();
    _loadCategories();
  }

  void _resetForm() {
    categoryCode.clear();
    descrption.clear();
    commission.clear();
    classification.clear();
    dpt.clear();
    dst.clear();
    createdBy.clear();

    selectedBilling = null;
    selectedQty = null;
  }

  Future<void> _loadCategories() async {
    final categoryList = await db.getAllCategories();
    setState(() {
      _savedcategory = categoryList;
    });
  }

  Future<void> _saveOrUpdateCategory() async {
    if (categoryCode.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Category code is required')),
      );
      return;
    }

    final categoryCompanion = CategoriesCompanion(
      categoryCode: drift.Value(categoryCode.text.trim()),
      description: drift.Value(descrption.text.trim()),
      commission: drift.Value(commission.text.trim()),
      classification: drift.Value(classification.text.trim()),
      allowBilling: drift.Value(selectedBilling ?? ''),
      maintainSingleQty: drift.Value(selectedQty ?? ''),
      defaultPurchaseTax: drift.Value(dpt.text.trim()),
      defaultSalesTax: drift.Value(dst.text.trim()),
      createdBy: drift.Value(createdBy.text.trim()),
    );

    if (_editingId == null) {
      await db.insertCategory(categoryCompanion);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Category added successfully!')),
      );
    } else {
      await db.updateCategory(Category(
        id: _editingId!,
        categoryCode: categoryCompanion.categoryCode.value,
        description: categoryCompanion.description.value,
        commission: categoryCompanion.commission.value,
        classification: categoryCompanion.classification.value,
        allowBilling: categoryCompanion.allowBilling.value,
        maintainSingleQty: categoryCompanion.maintainSingleQty.value,
        defaultPurchaseTax: categoryCompanion.defaultPurchaseTax.value,
        defaultSalesTax: categoryCompanion.defaultSalesTax.value,
        createdBy: categoryCompanion.createdBy.value,
        createdDate: DateTime.now(),
      ));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Category updated successfully!')),
      );
    }

    _resetForm();
    await _loadCategories();
  }

  Future<void> _deleteCategory(int id) async {
    await db.deleteCategory(id);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Category deleted successfully!')),
    );
    await _loadCategories();
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
                    'Category',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'FontMain',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: CustomTextField(
                                            controller: categoryCode,
                                            ddName: 'Category Code',
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: CustomTextField(
                                            controller: descrption,
                                            ddName: 'Description',
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Commission',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'FontMain',
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        TextField(
                                          controller: commission,
                                          maxLines: 3,
                                          style: TextStyle(
                                            fontFamily: 'FontMain',
                                            fontWeight: FontWeight.bold,
                                          ),
                                          decoration: const InputDecoration(
                                            hintText: ' ',
                                            hintStyle: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'FontMain',
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 217, 215, 215),
                                                width: 1,
                                              ),
                                              borderRadius: BorderRadius.zero,
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.zero,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: CustomTextField(
                                            controller: classification,
                                            ddName: 'Classification',
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: CustomDropdown(
                                            ddName: 'Allow Billing',
                                            items: allowBilling,
                                            value: selectedBilling,
                                            onChanged: (newValue) {
                                              setState(() {
                                                selectedBilling = newValue;
                                                print(
                                                    "Selected Billing: $selectedBilling");
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: CustomDropdown(
                                            ddName: 'Maintain Single Qty',
                                            items: maintainQty,
                                            value: selectedQty,
                                            onChanged: (newValue) {
                                              setState(() {
                                                selectedQty = newValue;
                                                print(
                                                    "Selected Qty: $selectedQty");
                                              });
                                            },
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: CustomTextField(
                                            controller: dpt,
                                            ddName: 'Default Purchase Tax',
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: CustomTextField(
                                            controller: dst,
                                            ddName: 'Default Sales Tax',
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: CustomTextField(
                                            controller: createdBy,
                                            ddName: 'Created By',
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
                                flex: 1,
                                child: Column(
                                  children: [
                                    const Text(
                                      'Category Table',
                                      style: TextStyle(
                                          fontFamily: 'FontMain',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 3),
                                    DataTable(
                                      border: TableBorder.all(
                                          color: Colors.black45),
                                      columnSpacing: 15,
                                      columns: const [
                                        DataColumn(
                                            label: Text('Edit',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontFamily: 'FontMain',
                                                    fontWeight:
                                                        FontWeight.w600))),
                                        DataColumn(
                                            label: Text('Delete',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontFamily: 'FontMain',
                                                    fontWeight:
                                                        FontWeight.w600))),
                                        DataColumn(
                                            label: Text('Category Code',
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    fontFamily: 'FontMain',
                                                    fontWeight:
                                                        FontWeight.w600))),
                                        DataColumn(
                                            label: Text('Billing',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontFamily: 'FontMain',
                                                    fontWeight:
                                                        FontWeight.w600))),
                                      ],
                                      rows: _savedcategory.map((cat) {
                                        return DataRow(
                                          cells: [
                                            DataCell(IconButton(
                                              icon: const Icon(Icons.edit,
                                                  size: 12),
                                              onPressed: () {
                                                setState(() {
                                                  _editingId = cat.id;
                                                  categoryCode.text =
                                                      cat.categoryCode;
                                                  descrption.text =
                                                      cat.description!;
                                                  commission.text =
                                                      cat.commission ?? '';
                                                  classification.text =
                                                      cat.classification ?? '';
                                                  selectedBilling =
                                                      cat.allowBilling;
                                                  selectedQty =
                                                      cat.maintainSingleQty;
                                                  dpt.text =
                                                      cat.defaultPurchaseTax ??
                                                          '';
                                                  dst.text =
                                                      cat.defaultSalesTax ?? '';
                                                  createdBy.text =
                                                      cat.createdBy ?? '';
                                                });
                                              },
                                            )),
                                            DataCell(
                                              IconButton(
                                                icon: const FaIcon(
                                                    FontAwesomeIcons.xmark,
                                                    size: 11),
                                                onPressed: () {
                                                  _showDeleteConfirmationDialog(
                                                      cat.id);
                                                },
                                              ),
                                            ),
                                            DataCell(Text(cat.categoryCode,
                                                style: const TextStyle(
                                                    fontSize: 10))),
                                            DataCell(Text(
                                                cat.allowBilling ?? '',
                                                style: const TextStyle(
                                                    fontSize: 10))),
                                          ],
                                        );
                                      }).toList(),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Buttons(
                                            onPressed: () {
                                              _saveOrUpdateCategory();
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
                        )
                      ]),
                ],
              ));
        },
      ),
    );
  }

  void _showDeleteConfirmationDialog(int categoryId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
          title: const Text("Confirm Delete",
              style: TextStyle(
                fontFamily: 'FontMain',
                fontWeight: FontWeight.bold,
              )),
          content: const Text("Are you sure you want to delete this category?",
              style: TextStyle(
                fontFamily: 'FontMain',
                fontWeight: FontWeight.bold,
              )),
          actions: [
            OutLineBtn(
              onPressed: () {
                Navigator.of(context).pop(); // close dialog
              },
              ddName: 'Cancel',
              height: 40,
              width: 70,
              colors: const Color(0xff5793CE),
            ),
            Buttons(
                onPressed: () {
                  Navigator.of(context).pop();
                  _deleteCategory(categoryId);
                },
                ddName: 'Delete',
                height: 40,
                width: 70,
                colors: const Color(0xff5793CE)),
          ],
        );
      },
    );
  }
}
