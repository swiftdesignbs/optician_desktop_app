import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:optician_desktop_app/data/app_database.dart';
import 'package:optician_desktop_app/screens/login_screen.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:window_size/window_size.dart';
import 'package:permission_handler/permission_handler.dart';
//import 'package:bluetooth_print_plus/bluetooth_print_plus.dart'; // Add this

Future<void> deleteDatabaseFile() async {
  final dbFolder = await getApplicationDocumentsDirectory();
  final dbFile = File(p.join(dbFolder.path, 'app_database.sqlite'));

  if (await dbFile.exists()) {
    await dbFile.delete();
    print("✅ Database deleted");
  } else {
    print("ℹ No database found to delete");
  }
}

Future<void> initializeSQLite() async {
  final db = AppDatabase();
}

Future<void> requestBluetoothPermissions() async {
  if (Platform.isAndroid) {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.bluetooth,
      Permission.bluetoothScan,
      Permission.bluetoothConnect,
      Permission.location,
    ].request();

    if (statuses[Permission.bluetoothScan]!.isGranted &&
        statuses[Permission.bluetoothConnect]!.isGranted) {
      print("✅ Bluetooth permissions granted");
    } else {
      print("❌ Bluetooth permissions denied");
      openAppSettings();
    }
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowMinSize(const Size(1000, 600));
    setWindowMaxSize(const Size(1920, 1080));
  } else if (Platform.isAndroid || Platform.isIOS) {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    await requestBluetoothPermissions(); // Request Bluetooth permissions for mobile
  }

  // await deleteDatabaseFile();
  await initializeSQLite();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Optician Desktop App',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}