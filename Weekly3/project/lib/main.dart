import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weekly_project1/model/view_model.dart';
import 'package:weekly_project1/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GetData()),
      ],
      child: const MaterialApp(
        home: Home(),
      ),
    );
  }
}
