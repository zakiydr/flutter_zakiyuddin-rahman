import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/model/view_model.dart';
import 'package:mini_project/screen/tafsir_page.dart';
import 'package:provider/provider.dart';

class TafsirPart extends StatefulWidget {
  const TafsirPart({super.key});

  @override
  State<TafsirPart> createState() => _TafsirPartState();
}

class _TafsirPartState extends State<TafsirPart> {
  final tafsirImage =
      'https://media.istockphoto.com/id/520709232/vector/islamic-book-holy-quran.jpg?s=612x612&w=0&k=20&c=NIzrJrap9TNIbvFpD4P5b7R4N2kLa2PcuJsUwcEmXvg=';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 5,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(.2)),
              BoxShadow(color: Colors.white, spreadRadius: -10, blurRadius: 30)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            autofocus: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TafsirPage()),
              );
            },
            child: Card(
              elevation: 0,
              child: Container(
                clipBehavior: Clip.antiAlias,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber.shade400,
                  image: DecorationImage(
                      opacity: .2,
                      image: NetworkImage(tafsirImage),
                      fit: BoxFit.cover),
                ),
                child: Center(
                  child: Text(
                    'Tafsir of the Day',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
