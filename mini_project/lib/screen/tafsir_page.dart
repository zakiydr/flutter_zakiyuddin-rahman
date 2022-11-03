import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mini_project/model/view_model.dart';
import 'package:provider/provider.dart';

class TafsirPage extends StatefulWidget {
  const TafsirPage({super.key});

  @override
  State<TafsirPage> createState() => _TafsirPageState();
}

class _TafsirPageState extends State<TafsirPage> {
  int _selectedIndex = 0;

  List<Widget> imgOptions = [
    Image.asset('assets/images/tafsir-bg1.jpg'),
    Image.asset('assets/images/tafsir-bg2.jpg'),
    Image.asset('assets/images/tafsir-bg3.webp'),
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
          BottomNavigationBarItem(
              icon: RotatedBox(
                quarterTurns: 1,
                child: ImageIcon(
                  AssetImage('assets/images/tafsir-bg1.jpg'),
                ),
              ),
              label: 'Image 1'),
          BottomNavigationBarItem(
              icon: RotatedBox(
                quarterTurns: 1,
                child: ImageIcon(
                  AssetImage('assets/images/tafsir-bg2.jpg'),
                ),
              ),
              label: 'Image 2'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/tafsir-bg3.webp'),
              ),
              label: 'Image 3'),
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
              padding: const EdgeInsets.all(50),
              child: Text(
                '${modelView.tafsirData.first.text}',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          )
        ],
      ),
    );
  }
}
