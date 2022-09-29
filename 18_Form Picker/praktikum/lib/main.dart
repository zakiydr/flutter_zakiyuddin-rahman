// ignore_for_file: avoid_print

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:form_picker/show.dart';

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

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

// class Data {
//   String? image;
//   String? date;
//   String? color;
//   String? caption;

//   Data({this.image, this.date, this.color, this.caption});
// }

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text("Create Post"),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 700,
            width: double.infinity,
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildFilePicker(context),
                buildDatePicker(context),
                buildColorTheme(context),
                buildCaption(context),
                Container(
                  padding: EdgeInsets.all(70),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Show()
                          ),
                    );
                    },
                      child: Text("Submit"))),
                ),
              ],
            ),
          ),
        ));
  }

  Widget buildFilePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: const Text(
            "Cover",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () async {
                    final result = await FilePicker.platform.pickFiles();
                    if (result == null) return;
                    File file;
                      setState(() {
                        file = File(result.files.first.path.toString());
                        });
              },
              child: const Text("Pilih File")),
        )
      ],
    );
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }

  Widget buildDatePicker(BuildContext context) {
    DateTime _dueDate = DateTime.now();
    final currentDate = DateTime.now();
    TextEditingController dateController = TextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: const Text(
            "Published at",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 40,
          child: TextField(
            textAlignVertical: TextAlignVertical.bottom,
            controller: dateController,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.date_range),
                border: OutlineInputBorder(borderSide: BorderSide(width: 1)),
                hintText: "dd/mm/yyyy"),
            readOnly: true,
            onTap: () async {
              final selectDate = await showDatePicker(
                context: context,
                initialDate: currentDate,
                firstDate: DateTime(2000),
                lastDate: DateTime(currentDate.year + 5),
              );
              if (selectDate != null) {
                print(selectDate);
                String dateFormat = DateFormat('dd/MM/yyyy').format(selectDate);
                print(dateFormat);

                setState(() {
                  dateController.text = dateFormat;
                });
              } else {
                print("Date is not selected");
              }
            },
          ),
        )
      ],
    );
  }

  Widget buildColorTheme(BuildContext context) {
    Color _currentColor = Colors.blueAccent;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: const Text(
            "Color Theme",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 80,
          color: _currentColor,
        ),
        SizedBox(
          child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Pilih warna"),
                        content: ColorPicker(
                          pickerColor: _currentColor,
                          onColorChanged: (color) {
                            setState(() {
                              _currentColor = color;
                            });
                          },
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Simpan"))
                        ],
                      );
                    });
              },
              child: const Text("Pilih warna")),
        )
      ],
    );
  }

  Widget buildCaption(BuildContext context) {
    TextEditingController controllerCaption = TextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "Caption",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        TextField(
          controller: controllerCaption,
          keyboardType: TextInputType.multiline,
          maxLines: null,
          decoration: InputDecoration(
            hintText: "Masukkan Caption",
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.black)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1)
            )
          ),
        )
      ],
    );
  }
}
