import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/model/view_model.dart';
import 'package:provider/provider.dart';

class TafsirPage extends StatefulWidget {
  const TafsirPage({super.key});

  @override
  State<TafsirPage> createState() => _TafsirPageState();
}

class _TafsirPageState extends State<TafsirPage> {
  late int id;
  int _selectedIndex = 0;
  int selectedStyle = 0;

  List<Widget> imgOptions = [
    Image.asset('assets/images/tafsir-bg1.jpg'),
    Image.asset('assets/images/tafsir-bg2.jpg'),
    Image.asset('assets/images/tafsir-bg3.webp'),
  ];

  List styleOptions = [
    GoogleFonts.montserrat(color: Colors.white),
    GoogleFonts.montserrat(color: Colors.black),
    GoogleFonts.montserrat(color: Colors.black),
  ];

  void botNavbarTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool isShow = true;

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<GetSholat>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, '/');
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.teal,
          ),
        ),
        title: Text(
          'Tafsir',
          style: TextStyle(color: Colors.teal),
        ),
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
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              child: Text(
                '${modelView.tafsirData?.first.text}',
                style: GoogleFonts.montserrat(
                    fontSize: 16, fontWeight: FontWeight.w600),
                textAlign: TextAlign.justify,
              ),
            ),
          )
        ],
      ),
    );
  }
}
