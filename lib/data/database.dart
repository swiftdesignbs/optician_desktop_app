import 'dart:ffi';
import 'dart:io';

import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3/open.dart';

void initializeSQLite() {
  if (Platform.isWindows) {
    open.overrideFor(OperatingSystem.windows, () {
      return DynamicLibrary.open('sqlite3.dll');
    });
  } else if (Platform.isLinux) {
    open.overrideFor(OperatingSystem.linux, () {
      return DynamicLibrary.open('libsqlite3.so');
    });
  } else if (Platform.isMacOS) {
    open.overrideFor(OperatingSystem.macOS, () {
      return DynamicLibrary.open('/usr/lib/libsqlite3.dylib');
    });
  }
  // No override needed for Android/iOS — handled by `sqlite3_flutter_libs`
}

/// Call this when you need to open the DB
Database openDatabase() {
  return sqlite3.openInMemory(); // Or open a file: sqlite3.open('path/to/file.sqlite')
}
