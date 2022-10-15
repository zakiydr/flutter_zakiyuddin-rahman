import 'package:state_provider2/models/contact.dart';
import 'package:state_provider2/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
  
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Contact(),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
