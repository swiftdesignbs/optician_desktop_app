import 'package:flutter/material.dart';
import 'package:optician_desktop_app/data/app_database.dart';
import 'package:optician_desktop_app/widgets/custom_textField.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:drift/drift.dart' as drift;

class EmailBookScreen extends StatefulWidget {
  const EmailBookScreen({super.key});

  @override
  State<EmailBookScreen> createState() => _EmailBookScreenState();
}

class _EmailBookScreenState extends State<EmailBookScreen> {
  final AppDatabase db = AppDatabase();

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _createdByController =
      TextEditingController(text: "Admin");

  int? _editingId;

  Future<void> _addOrUpdateEmail() async {
    if (_firstNameController.text.isEmpty ||
        _lastNameController.text.isEmpty ||
        _emailController.text.isEmpty) {
      return;
    }

    if (_editingId == null) {
      await db.insertEmailBook(EmailBookCompanion.insert(
        firstName: _firstNameController.text,
        lastName: _lastNameController.text,
        emailId: _emailController.text,
        createdBy: drift.Value(_createdByController.text),
      ));
    } else {
      await db.updateEmailBook(EmailBookData(
        id: _editingId!,
        firstName: _firstNameController.text,
        lastName: _lastNameController.text,
        emailId: _emailController.text,
        createdBy: _createdByController.text,
        createdDate: DateTime.now(),
      ));
      _editingId = null;
    }

    _firstNameController.clear();
    _lastNameController.clear();
    _emailController.clear();
    _createdByController.text = "Admin";

    setState(() {});
  }

  Future<void> _deleteEmail(int id) async {
    await db.deleteEmailBook(id);
    setState(() {});
  }

  void _editEmail(EmailBookData data) {
    _editingId = data.id;
    _firstNameController.text = data.firstName;
    _lastNameController.text = data.lastName;
    _emailController.text = data.emailId;
    _createdByController.text = data.createdBy ?? "Admin";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Form
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                      controller: _firstNameController, ddName: "First Name"),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: CustomTextField(
                      controller: _lastNameController, ddName: "Last Name"),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                      controller: _emailController, ddName: "Email ID"),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: CustomTextField(
                      controller: _createdByController, ddName: "Created By"),
                ),
                const SizedBox(width: 16),
              ],
            ),
            const SizedBox(height: 16),

            Row(
              children: [
                Buttons(
                  onPressed: _addOrUpdateEmail,
                  ddName: _editingId == null ? 'Add' : 'Update',
                  height: 40,
                  width: 120,
                  colors: const Color(0xff5793CE),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // List Table
            Expanded(
              child: FutureBuilder<List<EmailBookData>>(
                future: db.getAllEmailBooks(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  final emails = snapshot.data!;
                  if (emails.isEmpty) {
                    return const Center(
                        child: Text("No entries added yet",
                            style: TextStyle(fontFamily: 'FontMain')));
                  }

                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      border: TableBorder.all(color: Colors.grey.shade300),
                      columns: const [
                        DataColumn(
                            label: Text("ID",
                                style:
                                    TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("First Name",
                                style:
                                    TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("Last Name",
                                style:
                                    TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("Email ID",
                                style:
                                    TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("Created By",
                                style:
                                    TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("Actions",
                                style:
                                    TextStyle(fontFamily: 'FontMain'))),
                      ],
                      rows: emails.map((email) {
                        return DataRow(cells: [
                          DataCell(Text(email.id.toString(),
                              style: const TextStyle(fontFamily: 'FontMain'))),
                          DataCell(Text(email.firstName,
                              style: const TextStyle(fontFamily: 'FontMain'))),
                          DataCell(Text(email.lastName,
                              style: const TextStyle(fontFamily: 'FontMain'))),
                          DataCell(Text(email.emailId,
                              style: const TextStyle(fontFamily: 'FontMain'))),
                          DataCell(Text(email.createdBy ?? "Admin",
                              style: const TextStyle(fontFamily: 'FontMain'))),
                          DataCell(Row(
                            children: [
                              IconButton(
                                  icon: const Icon(Icons.edit,
                                      color: Colors.blue),
                                  onPressed: () => _editEmail(email)),
                              IconButton(
                                  icon: const Icon(Icons.delete,
                                      color: Colors.red),
                                  onPressed: () async =>
                                      await _deleteEmail(email.id)),
                            ],
                          )),
                        ]);
                      }).toList(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
