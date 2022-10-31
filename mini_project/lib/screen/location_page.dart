import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Location'),
      ),
      body: ListView.separated(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 40,
                child: Text(
                  'Lokasi',
                  style: GoogleFonts.lato(fontSize: 20),
                ),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 5,
            color: Colors.black.withOpacity(.5),
          );
        },
      ),
    );
  }
}
