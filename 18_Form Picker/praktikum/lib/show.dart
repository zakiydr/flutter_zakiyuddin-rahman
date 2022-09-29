import 'package:form_picker/main.dart';
import 'package:flutter/material.dart';


class Data {
  String? image;
  String? date;
  String? color;
  String? caption;

  Data({this.image, this.date, this.color, this.caption});
}

class Show extends StatelessWidget {
  const Show({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Preview"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          ],
        ),
      ),
    );
  }
}