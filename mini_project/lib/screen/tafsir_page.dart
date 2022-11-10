import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/model/view_model.dart';
import 'package:provider/provider.dart';
import 'package:html/parser.dart';

class TafsirPage extends StatefulWidget {
  const TafsirPage({super.key});

  @override
  State<TafsirPage> createState() => _TafsirPageState();
}

class _TafsirPageState extends State<TafsirPage> {
  late int id;
  int _selectedIndex = 0;

  List<Widget> imgOptions = [
    Image.asset('assets/images/tafsir-bgtes7.jpg'),
    Image.asset('assets/images/tafsir-bg2.jpg'),
    Image.asset('assets/images/tafsir-bg3.webp'),
  ];

  List styleOptions = [
    GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600),
    GoogleFonts.lato(color: Colors.black, fontWeight: FontWeight.w600),
    GoogleFonts.cookie(color: Colors.black, fontSize: 24),
  ];
  List appBarColors = [Colors.white, Colors.black, Colors.black];

  void botNavbarTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<GetSholat>(context);
    var document = parse('${modelView.tafsirData!.first.html}');
    Random random = Random();

    int randomId = random.nextInt(6237);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, '/');
          },
          icon: Icon(
            Icons.arrow_back,
            color: appBarColors[_selectedIndex],
          ),
        ),
        title: Text(
          'Tafsir',
          style: TextStyle(color: appBarColors[_selectedIndex]),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                modelView.getTafsir(randomId);
              });
            },
            icon: Icon(
              Icons.restart_alt_rounded,
              color: appBarColors[_selectedIndex],
              size: 30,
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Image 1'),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Image 2'),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Image 3'),
        ],
        currentIndex: _selectedIndex,
        onTap: botNavbarTapped,
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: FittedBox(
              fit: BoxFit.cover,
              child: imgOptions.elementAt(_selectedIndex),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: SingleChildScrollView(
                child: Text(
                  '${document.body!.text}',
                  style: styleOptions.elementAt(_selectedIndex),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
