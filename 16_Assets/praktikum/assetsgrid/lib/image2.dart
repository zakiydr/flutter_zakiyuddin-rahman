import 'package:flutter/material.dart';

class PageImage2 extends StatelessWidget {
  const PageImage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gambar Kedua'),
      ),
      body: Center(
        child: Image.asset(
          'assets/images/2.jpg',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}