import 'package:flutter/material.dart';

class PageImage1 extends StatelessWidget {
  const PageImage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gambar Pertama'),
      ),
      body: Center(
        child: Image.asset(
          'assets/images/1.jpg',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}