import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mini_project/model/view_model.dart';
import 'package:mini_project/screen/home_page.dart';
import 'package:mini_project/screen/location_page.dart';
import 'package:mini_project/screen/tafsir_page.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id_ID', null)
      .then((_) => runApp(const MyApp()));
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
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/location': (context) => LocationPage(),
          '/tafsir': (context) => TafsirPage(),
        },
        theme: ThemeData(
          primarySwatch: Colors.teal,
          scrollbarTheme: const ScrollbarThemeData(
              minThumbLength: 50,
              mainAxisMargin: 2,
              thumbVisibility: MaterialStatePropertyAll(true),
              interactive: true,
              crossAxisMargin: 5,
              thickness: MaterialStatePropertyAll(10),
              radius: Radius.circular(10)),
          textTheme: const TextTheme(
            titleMedium: TextStyle(color: Colors.white),
            displayMedium: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
