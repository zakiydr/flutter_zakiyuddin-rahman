import 'package:flutter/material.dart';
import 'package:mini_project/model/provider.dart';
import 'package:mini_project/screen/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GetSholat(),
        )
      ],
      child: MaterialApp(
        title: 'Mini Project',
        theme: ThemeData(
          primarySwatch: Colors.teal,
          textTheme: TextTheme(
            titleMedium: TextStyle(color: Colors.white),
            displayMedium: TextStyle(color: Colors.white),
          ),
        ),
        home: const Home(),
      ),
    );
  }
}
