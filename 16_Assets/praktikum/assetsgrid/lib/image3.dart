import 'package:flutter/material.dart';

class PageImage3 extends StatelessWidget {
  const PageImage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gambar Ketiga'),
      ),
      body: Center(
        child: Image.asset(
          'assets/images/3.jpg',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}