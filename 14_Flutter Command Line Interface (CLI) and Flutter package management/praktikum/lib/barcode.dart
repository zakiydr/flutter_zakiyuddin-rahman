import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alterra Barcode"), leading: Icon(Icons.menu)),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Center(
                    child: BarcodeWidget(
                      barcode: Barcode.qrCode(),
                      data: 'Alterra Academy',
                    ),
                  ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Center(
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'Alterra Academy',
                    ),
                  ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Center(
                    child: BarcodeWidget(
                      barcode: Barcode.qrCode(),
                      data: 'Flutter Asik',
                    ),
                  ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Center(
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'Flutter Asik',
                    ),
                  ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Center(
                    child: BarcodeWidget(
                      barcode: Barcode.qrCode(),
                      data: 'Zakiyuddin Rahman',
                    ),
                  ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Center(
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'Zakiyuddin Rahman',
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
