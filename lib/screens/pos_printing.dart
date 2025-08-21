import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:collection/collection.dart';
import 'package:image/image.dart' as im;
import 'package:flutter/scheduler.dart';
import 'package:flutter_thermal_printer/flutter_thermal_printer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_thermal_printer/utils/printer.dart';
import 'package:optician_desktop_app/util.dart/shared_pref.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:http/http.dart' as http;
import 'package:printing/printing.dart' as pr;

// void main() {
//   runApp(const PosPrintingScreen());
// }

class PosPrintingScreen extends StatefulWidget {
  const PosPrintingScreen({key});

  @override
  State<PosPrintingScreen> createState() => _PosPrintingScreenState();
}

extension PdfRasterExt on pr.PdfRaster {
  im.Image asImage(bytes) {
    return im.Image.fromBytes(height: height, width: width, bytes: bytes);
  }
}

class _PosPrintingScreenState extends State<PosPrintingScreen> {
  final _flutterThermalPrinterPlugin = FlutterThermalPrinter.instance;

  List<Printer> printers = [];

  StreamSubscription<List<Printer>>? _devicesStreamSubscription;

  Future<void> checkAndRequestBluetoothPermission() async {
    PermissionStatus status = await Permission.bluetooth.status;

    if (status.isDenied || status.isRestricted) {
      PermissionStatus newStatus = await Permission.bluetooth.request();
      if (newStatus.isGranted) {
        print("Bluetooth permission granted");
      } else {
        print("Bluetooth permission denied");
      }
    } else {
      print("Bluetooth permission already granted");
    }

    status = await Permission.bluetoothScan.status;

    if (status.isDenied || status.isRestricted) {
      // Request permission if not granted
      PermissionStatus newStatus = await Permission.bluetooth.request();
      if (newStatus.isGranted) {
        print("Bluetooth Scan permission granted");
      } else {
        print("Bluetooth Scan permission denied");
      }
    } else {
      print("Bluetooth Scan permission already granted");
    }
  }

  // Get Printer List
  void startScan() async {
    // Ensure Bluetooth permission is granted before scanning
    await checkAndRequestBluetoothPermission();
    _devicesStreamSubscription?.cancel();

    // Scan for USB and Bluetooth devices
    await _flutterThermalPrinterPlugin.getPrinters();

    _devicesStreamSubscription = _flutterThermalPrinterPlugin.devicesStream
        .listen((List<Printer> event) {
      log(event.map((e) => e.name).toList().toString());
      setState(() {
        printers = event;
        printers.removeWhere(
            (element) => element.name == null || element.name == '');
      });
    });
  }

  stopScan() {
    _devicesStreamSubscription?.cancel();
    _flutterThermalPrinterPlugin.stopScan();
  }

  Printer? savedPrinter;

  @override
  initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (printers.isEmpty) {
        startScan();

        Future.delayed(const Duration(seconds: 5)).then((_) => stopScan());
      }

      getSavedPrinterAddress().then((printer) {
        print(printer);
        setState(() {
          savedPrinter = printer;
        });
      });
    });
  }

  Future<Printer?> getSavedPrinterAddress() async {
    Printer? printer;

    if (printers.isEmpty) {
      startScan();
      Future.delayed(const Duration(seconds: 5)).then((_) => stopScan());
    }

    if (await SharedPreferencesUtilities.isPrinterDetailAvailable()) {
      String savedPrinterJSON =
          (await SharedPreferencesUtilities.getPrinterDetails()).last;

      print('previously saved');

      savedPrinter = Printer.fromJson(jsonDecode(savedPrinterJSON));
    }

    return savedPrinter;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('Thermal printer set as default'),
        //   systemOverlayStyle: const SystemUiOverlayStyle(
        //     statusBarColor: Colors.transparent,
        //   ),
        // ),
        body: savedPrinter != null
            ? Column(
                children: [
                  const Text(
                    'Selected printer is : ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontFamily: 'FontMain'),
                  ),
                  //For Printing KOT File
                  ListTile(
                    onTap: () async {
                      if (savedPrinter!.isConnected ?? false) {
                        await _flutterThermalPrinterPlugin
                            .disconnect(savedPrinter!);
                      } else {
                        final isConnected = await _flutterThermalPrinterPlugin
                            .connect(savedPrinter!);
                        log("Devices: $isConnected");
                      }
                    },
                    title: Text(
                      savedPrinter!.name ?? 'No Name',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: 'FontMain'),
                    ),
                    subtitle: Text(
                      "Connected: ${savedPrinter!.isConnected}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: 'FontMain'),
                    ),
                    trailing: IconButton(
                        icon: const Icon(Icons.connect_without_contact),
                        onPressed: () async {
                          try {
                            // Load printer profile
                            final profile = await CapabilityProfile.load();
                            final generator =
                                Generator(PaperSize.mm80, profile);

                            // Initialize bytes as a growable list
                            List<int> bytes = List<int>.empty(growable: true);

                            // Fetch image from the internet
                            // const imageUrl =
                            //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4t9vpA10BPXL9Mj2GnFQPSEkgwcFAMcGlBg&s'; // Replace with your image URL
                            // final response =
                            //     await http.get(Uri.parse(imageUrl));
                            //
                            // if (response.statusCode == 200) {
                            //   // Decode the image
                            //   final image =
                            //       im.decodeImage(response.bodyBytes);
                            //   if (image != null) {
                            //     // Convert the image to raster format suitable for the printer
                            //     final rasterImage = generator.imageRaster(
                            //         image,
                            //         align: PosAlign.center);
                            //     bytes.addAll(rasterImage);
                            //   } else {
                            //     print('Failed to decode image');
                            //   }
                            // } else {
                            //   print(
                            //       'Failed to load image. Status code: ${response.statusCode}');
                            // }

                            // Add space below the image
                            bytes.addAll(generator.text(""));

                            // Add header text "Swift Designs"
                            bytes.addAll(generator.text(
                              "AAI BHAVANI ENTERPRISES",
                              styles: const PosStyles(
                                align: PosAlign.center,
                                bold: true,
                                height: PosTextSize.size1,
                                width: PosTextSize.size1,
                              ),
                            ));

                            // Add space below header
                            bytes.addAll(generator.text(""));

                            // Add address
                            bytes.addAll(generator.text(
                              "Ghatkopar(W)\nKOT",
                              styles: const PosStyles(align: PosAlign.center),
                            ));
                            // Add KOT NO. and Date
                            bytes.addAll(generator.row(
                              [
                                PosColumn(
                                    width: 6,
                                    text: 'KOT NO.: 12345',
                                    styles:
                                        const PosStyles(align: PosAlign.left)),
                                PosColumn(
                                    width: 6,
                                    text: 'Date: 01/01/2023',
                                    styles:
                                        const PosStyles(align: PosAlign.right)),
                              ],
                            ));

                            // Add Table NO. and Time
                            bytes.addAll(generator.row(
                              [
                                PosColumn(
                                    width: 6,
                                    text: 'Table NO.: 10',
                                    styles:
                                        const PosStyles(align: PosAlign.left)),
                                PosColumn(
                                    width: 6,
                                    text: 'Time: 12:00 PM',
                                    styles:
                                        const PosStyles(align: PosAlign.right)),
                              ],
                            ));

                            // Add Waiter and User
                            bytes.addAll(generator.row(
                              [
                                PosColumn(
                                    width: 6,
                                    text: 'Counter: C-1',
                                    styles:
                                        const PosStyles(align: PosAlign.left)),
                                PosColumn(
                                    width: 6,
                                    text: 'User: Admin',
                                    styles:
                                        const PosStyles(align: PosAlign.right)),
                              ],
                            ));
                            // Add Category
                            bytes.addAll(generator.text(
                              "Category: Food",
                              styles: const PosStyles(align: PosAlign.left),
                            ));
                            bytes.addAll(generator.text(
                              "Waiter: John",
                              styles: const PosStyles(align: PosAlign.left),
                            ));
                            bytes.addAll(generator.hr()); // Add horizontal line

                            // Add dynamic product rows
                            final products = [
                              {'item': 'Product A', 'qty': 2, 'price': 100},
                              {'item': 'Product B', 'qty': 1, 'price': 200},
                              {'item': 'Product C', 'qty': 3, 'price': 150},
                            ];

                            // Add dynamic table header
                            bytes.addAll(generator.row(
                              [
                                PosColumn(
                                    width: 5,
                                    text: 'Item',
                                    styles:
                                        const PosStyles(align: PosAlign.left)),
                                PosColumn(
                                    width: 2,
                                    text: 'Qty',
                                    styles:
                                        const PosStyles(align: PosAlign.right)),
                                PosColumn(
                                    width: 2,
                                    text: 'Price',
                                    styles:
                                        const PosStyles(align: PosAlign.right)),
                                PosColumn(
                                    width: 3,
                                    text: 'Amount',
                                    styles:
                                        const PosStyles(align: PosAlign.right)),
                              ],
                            ));

                            int grandTotal = 0; // Initialize Grand Total

                            for (var product in products) {
                              int amount = (product['qty'] as int) *
                                  (product['price'] as int);
                              bytes.addAll(generator.row(
                                [
                                  PosColumn(
                                      width: 5,
                                      text: '${product['item']}',
                                      styles: const PosStyles(
                                          align: PosAlign.left)),
                                  PosColumn(
                                      width: 2,
                                      text: '${product['qty']}',
                                      styles: const PosStyles(
                                          align: PosAlign.right)),
                                  PosColumn(
                                      width: 2,
                                      text: '${product['price']}',
                                      styles: const PosStyles(
                                          align: PosAlign.right)),
                                  PosColumn(
                                      width: 3,
                                      text: '$amount',
                                      styles: const PosStyles(
                                          align: PosAlign.right)),
                                ],
                              ));

                              // Calculate Grand Total
                              grandTotal += amount;
                            }

                            for (var product in products) {
                              // Calculate Grand Total
                              grandTotal += product['price'] as int;
                            }

                            bytes.addAll(generator
                                .hr()); // Add horizontal line after table

                            // Display Grand Total
                            bytes.addAll(generator.row(
                              [
                                PosColumn(
                                    width: 8,
                                    text: 'Grand Total',
                                    styles: const PosStyles(
                                        align: PosAlign.right, bold: true)),
                                PosColumn(
                                    width: 4,
                                    text: 'Rs$grandTotal',
                                    styles: const PosStyles(
                                        align: PosAlign.right, bold: true)),
                              ],
                            ));

                            bytes.addAll(
                                generator.hr()); // Add another horizontal line

                            // Add footer
                            bytes.addAll(generator.text(
                              "Thank you for your business!",
                              styles: const PosStyles(align: PosAlign.center),
                            ));

                            bytes.addAll(generator.cut()); // Add cut command

                            //bytes = [];

                            // var pdfBytes =
                            // (await rootBundle.load('assets/files/test_document.pdf')).buffer.asUint8List();
                            // // File('assets/files/test_document.pdf').readAsBytesSync();

                            // await for (var page
                            // in pr.Printing.raster(pdfBytes, dpi: 203.0)) {
                            //   final image = page.asImage();
                            //   bytes += generator.image(image);
                            // }

                            // bytes.addAll(generator.cut()); // Add cut command

                            // Send data to printer
                            await _flutterThermalPrinterPlugin.printData(
                              savedPrinter!,
                              bytes,
                              longData: true,
                            );

                            print("Receipt printed successfully.");
                          } catch (e) {
                            print("Error printing receipt: $e");
                          }
                        }),
                  ),
//For Printing TAX Invoice File
                  ListTile(
                    onTap: () async {
                      if (savedPrinter!.isConnected ?? false) {
                        await _flutterThermalPrinterPlugin
                            .disconnect(savedPrinter!);
                      } else {
                        final isConnected = await _flutterThermalPrinterPlugin
                            .connect(savedPrinter!);
                        log("Devices: $isConnected");
                      }
                    },
                    title: Text(
                      savedPrinter!.name ?? 'No Name',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: 'FontMain'),
                    ),
                    subtitle: Text(
                      "Connected: ${savedPrinter!.isConnected}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: 'FontMain'),
                    ),
                    trailing: IconButton(
                        icon: const Icon(Icons.connect_without_contact),
                        onPressed: () async {
                          try {
                            // Load printer profile
                            final profile = await CapabilityProfile.load();
                            final generator =
                                Generator(PaperSize.mm80, profile);

                            // Initialize bytes as a growable list
                            List<int> bytes = List<int>.empty(growable: true);

                            // Fetch image from the internet
                            // const imageUrl =
                            //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4t9vpA10BPXL9Mj2GnFQPSEkgwcFAMcGlBg&s'; // Replace with your image URL
                            // final response =
                            //     await http.get(Uri.parse(imageUrl));
                            //
                            // if (response.statusCode == 200) {
                            //   // Decode the image
                            //   final image =
                            //       im.decodeImage(response.bodyBytes);
                            //   if (image != null) {
                            //     // Convert the image to raster format suitable for the printer
                            //     final rasterImage = generator.imageRaster(
                            //         image,
                            //         align: PosAlign.center);
                            //     bytes.addAll(rasterImage);
                            //   } else {
                            //     print('Failed to decode image');
                            //   }
                            // } else {
                            //   print(
                            //       'Failed to load image. Status code: ${response.statusCode}');
                            // }

                            // Add space below the image
                            bytes.addAll(generator.text(""));

                            // Add header text "Swift Designs"
                            bytes.addAll(generator.text(
                              "AAI BHAVANI ENTERPRISES",
                              styles: const PosStyles(
                                align: PosAlign.center,
                                bold: true,
                                height: PosTextSize.size2,
                                width: PosTextSize.size2,
                              ),
                            ));

                            // Add space below header
                            // bytes.addAll(generator.text(""));

                            // Add address
                            bytes.addAll(generator.text(
                              "Ghatkopar(W)",
                              styles: const PosStyles(
                                bold: true,
                                align: PosAlign.center,
                                height: PosTextSize.size2,
                                width: PosTextSize.size2,
                              ),
                            ));
                            bytes.addAll(
                                generator.hr()); // Add another horizontal line
                            // Add box with border and content
                            bytes.addAll(generator.text(
                              "Shop No.7,Sunil Shopping Center,\nNew Meneklal Mehta Estate S N Mehta Road,\nGhatkopar (W)\nMumbai - 400006\nFSSAI: sdfsrg\nGST: sdfsrg",
                              styles: const PosStyles(
                                align: PosAlign.center,
                                height: PosTextSize.size1,
                                width: PosTextSize.size1,
                                bold: true,
                              ),
                              linesAfter: 1,
                            ));
                            bytes.addAll(
                                generator.hr()); // Add another horizontal line
                            // Add address
                            bytes.addAll(generator.text(
                              "Tax Invoice",
                              styles: const PosStyles(
                                bold: true,
                                align: PosAlign.center,
                                height: PosTextSize.size1,
                                width: PosTextSize.size1,
                              ),
                            ));

                            bytes.addAll(generator.hr()); // Add horizontal line

                            // Add Invoice No. and Date/Time
                            bytes.addAll(generator.row(
                              [
                                PosColumn(
                                    width: 6,
                                    text: 'Inv No.: GDUSN9000',
                                    styles:
                                        const PosStyles(align: PosAlign.left)),
                                PosColumn(
                                    width: 6,
                                    text: 'Dt: 01/01/2023 12:00 PM',
                                    styles:
                                        const PosStyles(align: PosAlign.right)),
                              ],
                            ));

                            // Add Counter and User
                            bytes.addAll(generator.row(
                              [
                                PosColumn(
                                    width: 6,
                                    text: 'Counter: C-1',
                                    styles:
                                        const PosStyles(align: PosAlign.left)),
                                PosColumn(
                                    width: 6,
                                    text: 'User: Admin',
                                    styles:
                                        const PosStyles(align: PosAlign.right)),
                              ],
                            ));

                            bytes.addAll(generator.hr()); // Add horizontal line

                            // Add dynamic product rows
                            final products = [
                              {
                                'item': 'CELEBRATIONS CHOCOLATE MUG BOUQUET',
                                'qty': 2,
                                'price': 100
                              },
                              {
                                'item':
                                    'CELEBRATIONS CHOCOLATE WITH TEDDY CANE BASKET - 200GMS',
                                'qty': 1,
                                'price': 200
                              },
                              {
                                'item': 'FERERO ROCHER BOUQUET',
                                'qty': 3,
                                'price': 150
                              },
                            ];

                            // Add dynamic table header
                            bytes.addAll(generator.row(
                              [
                                PosColumn(
                                    width: 5,
                                    text: 'Item',
                                    styles:
                                        const PosStyles(align: PosAlign.left)),
                                PosColumn(
                                    width: 2,
                                    text: 'Qty',
                                    styles:
                                        const PosStyles(align: PosAlign.right)),
                                PosColumn(
                                    width: 2,
                                    text: 'Price',
                                    styles:
                                        const PosStyles(align: PosAlign.right)),
                                PosColumn(
                                    width: 3,
                                    text: 'Amount',
                                    styles:
                                        const PosStyles(align: PosAlign.right)),
                              ],
                            ));

                            int grandTotal = 0; // Initialize Grand Total

                            for (var product in products) {
                              int amount = (product['qty'] as int) *
                                  (product['price'] as int);
                              bytes.addAll(generator.row(
                                [
                                  PosColumn(
                                      width: 5,
                                      text: '${product['item']}',
                                      styles: const PosStyles(
                                          align: PosAlign.left)),
                                  PosColumn(
                                      width: 2,
                                      text: '${product['qty']}',
                                      styles: const PosStyles(
                                          align: PosAlign.right)),
                                  PosColumn(
                                      width: 2,
                                      text: '${product['price']}',
                                      styles: const PosStyles(
                                          align: PosAlign.right)),
                                  PosColumn(
                                      width: 3,
                                      text: '$amount',
                                      styles: const PosStyles(
                                          align: PosAlign.right)),
                                ],
                              ));

                              // Calculate Grand Total
                              grandTotal += amount;
                            }

                            for (var product in products) {
                              // Calculate Grand Total
                              grandTotal += product['price'] as int;
                            }

                            bytes.addAll(generator
                                .hr()); // Add horizontal line after table

                            // Display Grand Total
                            // Display Sub Total
                            bytes.addAll(generator.row(
                              [
                                PosColumn(
                                    width: 8,
                                    text: 'Sub Total',
                                    styles: const PosStyles(
                                        align: PosAlign.right, bold: true)),
                                PosColumn(
                                    width: 4,
                                    text: 'Rs$grandTotal',
                                    styles: const PosStyles(
                                        align: PosAlign.right, bold: true)),
                              ],
                            ));

                            int discount = 50;
                            bytes.addAll(generator.row(
                              [
                                PosColumn(
                                    width: 8,
                                    text: 'Discount',
                                    styles: const PosStyles(
                                        align: PosAlign.right, bold: true)),
                                PosColumn(
                                    width: 4,
                                    text: '-Rs$discount',
                                    styles: const PosStyles(
                                        align: PosAlign.right, bold: true)),
                              ],
                            ));

                            int extraCharges = 30;
                            bytes.addAll(generator.row(
                              [
                                PosColumn(
                                    width: 8,
                                    text: 'Extra Charges',
                                    styles: const PosStyles(
                                        align: PosAlign.right, bold: true)),
                                PosColumn(
                                    width: 4,
                                    text: 'Rs$extraCharges',
                                    styles: const PosStyles(
                                        align: PosAlign.right, bold: true)),
                              ],
                            ));

                            int finalTotal =
                                grandTotal - discount + extraCharges;

                            bytes.addAll(generator.row(
                              [
                                PosColumn(
                                    width: 8,
                                    text: 'Grand Total',
                                    styles: const PosStyles(
                                        align: PosAlign.right, bold: true)),
                                PosColumn(
                                    width: 4,
                                    text: 'Rs$finalTotal',
                                    styles: const PosStyles(
                                        align: PosAlign.right, bold: true)),
                              ],
                            ));

                            bytes.addAll(
                                generator.hr()); // Add another horizontal line
                            bytes.addAll(generator.text(
                              "Payment Mode: Cash",
                              styles: const PosStyles(align: PosAlign.left),
                            ));
                            bytes.addAll(
                                generator.hr()); // Add another horizontal line
                            // Add footer
                            bytes.addAll(generator.text(
                              "Thank you for your business!\nNo Refund, No Exchange",
                              styles: const PosStyles(align: PosAlign.center),
                            ));

                            bytes.addAll(generator.cut()); // Add cut command

                            //bytes = [];

                            // var pdfBytes =
                            // (await rootBundle.load('assets/files/test_document.pdf')).buffer.asUint8List();
                            // // File('assets/files/test_document.pdf').readAsBytesSync();

                            // await for (var page
                            // in pr.Printing.raster(pdfBytes, dpi: 203.0)) {
                            //   final image = page.asImage();
                            //   bytes += generator.image(image);
                            // }

                            // bytes.addAll(generator.cut()); // Add cut command

                            // Send data to printer
                            await _flutterThermalPrinterPlugin.printData(
                              savedPrinter!,
                              bytes,
                              longData: true,
                            );

                            print("Receipt printed successfully.");
                          } catch (e) {
                            print("Error printing receipt: $e");
                          }
                        }),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await SharedPreferencesUtilities.clearPrinterAddress();

                      setState(() {
                        savedPrinter = null;
                      });
                    },
                    child: const Text(
                      'Remove selected printer',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: 'FontMain'),
                    ),
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: printers.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () async {
                            if (printers[index].isConnected ?? false) {
                              await _flutterThermalPrinterPlugin
                                  .disconnect(printers[index]);
                            } else {
                              final isConnected =
                                  await _flutterThermalPrinterPlugin
                                      .connect(printers[index]);
                              log("Devices: $isConnected");
                            }
                          },
                          title: Text(
                            printers[index].name ?? 'No Name',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'FontMain'),
                          ),
                          subtitle: Text(
                            "Connected: ${printers[index].isConnected}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'FontMain'),
                          ),
                          leading: IconButton(
                            icon: const Icon(Icons.check),
                            onPressed: () async {
                              print('selected printer to save');
                              print(printers[index].toJson());

                              await SharedPreferencesUtilities
                                  .savePrinterDetails(
                                printers[index].name ?? '',
                                printers[index].address ?? '',
                                jsonEncode(printers[index].toJson()),
                              );

                              setState(() {
                                savedPrinter = printers[index];
                              });
                            },
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.connect_without_contact),
                            onPressed: () async {
                              final profile = await CapabilityProfile.load();
                              final generator =
                                  Generator(PaperSize.mm80, profile);
                              List<int> bytes = [];

                              bytes += generator.text(
                                "Swift Designs",
                                styles: const PosStyles(
                                  bold: true,
                                  height: PosTextSize.size3,
                                  width: PosTextSize.size3,
                                ),
                              );

                              bytes += generator.row(
                                [
                                  PosColumn(width: 4, text: 'abc'),
                                  PosColumn(width: 4, text: 'xyx'),
                                  PosColumn(width: 4, text: 'xyx'),
                                ],
                              );
                              bytes += generator.text(
                                "Swift Designs",
                                styles: const PosStyles(
                                  width: PosTextSize.size3,
                                  align: PosAlign.center,
                                ),
                              );
                              bytes += generator.cut();
                              await _flutterThermalPrinterPlugin.printData(
                                printers[index],
                                bytes,
                                longData: true,
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ));
  }

  Widget receiptWidget() {
    return Container(
        padding: const EdgeInsets.all(8),
        color: Colors.white,
        width: 300,
        height: 300,
        child: const Center(
          child: Column(
            children: [
              Text(
                "FLUTTER THERMAL PRINTER",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'FontMain',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Hello World",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'FontMain',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "This is a test receipt",
                style: TextStyle(
                  fontFamily: 'FontMain',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ));
  }
}
