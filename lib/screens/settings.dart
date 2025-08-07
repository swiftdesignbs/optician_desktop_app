import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = "English";
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Settings", style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          Text("Preferred Language"),
          DropdownButton<String>(
            value: dropdownValue,
            items: ["English", "Hindi", "Spanish"]
                .map((lang) => DropdownMenuItem(
                      value: lang,
                      child: Text(lang),
                    ))
                .toList(),
            onChanged: (value) {},
          ),
          const SizedBox(height: 20),
          SwitchListTile(
            value: true,
            onChanged: (val) {},
            title: const Text("Enable Notifications"),
          ),
        ],
      ),
    );
  }
}
