import 'package:restapi/pages/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:restapi/pages/home/home_page.dart';

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
          create: (context) => HomeViewModel(),
        ),
      ],
      child: MaterialApp(
        home: const HomePage(),
      ),
    );
  }
}
