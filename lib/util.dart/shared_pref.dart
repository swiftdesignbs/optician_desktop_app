import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtilities {
  static const String _printerNameKey = 'printer_name';
  static const String _printerAddressKey = 'printer_address';
  static const String _printerJSONKey = 'printer_json';

  static Future<SharedPreferences> _getSharedPreferencesInstance() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences;
  }

  static Future<bool> isPrinterDetailAvailable() async {
    final sharedPreferences = await _getSharedPreferencesInstance();
    return sharedPreferences.containsKey(_printerAddressKey);
  }

  static Future<List<String>> getPrinterDetails() async {
    final sharedPreferences = await _getSharedPreferencesInstance();
    return [
      sharedPreferences.getString(_printerNameKey)!,
      sharedPreferences.getString(_printerAddressKey)!,
      sharedPreferences.getString(_printerJSONKey)!,
    ];
  }

  static Future<String> getPrinterName() async {
    final sharedPreferences = await _getSharedPreferencesInstance();
    return sharedPreferences.getString(_printerNameKey)!;
  }

  static Future<String> getPrinterAddress() async {
    final sharedPreferences = await _getSharedPreferencesInstance();
    return sharedPreferences.getString(_printerAddressKey)!;
  }

  static Future<void> savePrinterDetails(
      String printerName, String printerAddress, String printerJSON) async {
    final sharedPreferences = await _getSharedPreferencesInstance();
    sharedPreferences.setString(_printerNameKey, printerName);
    sharedPreferences.setString(_printerAddressKey, printerAddress);
    sharedPreferences.setString(_printerJSONKey, printerJSON);
  }

  static Future<void> savePrinterAddress(String printerAddress) async {
    final sharedPreferences = await _getSharedPreferencesInstance();
    sharedPreferences.setString(_printerAddressKey, printerAddress);
  }

  static Future<void> clearPrinterAddress() async {
    final sharedPreferences = await _getSharedPreferencesInstance();
    sharedPreferences.remove(_printerNameKey);
    sharedPreferences.remove(_printerAddressKey);
    sharedPreferences.remove(_printerJSONKey);
  }
}
