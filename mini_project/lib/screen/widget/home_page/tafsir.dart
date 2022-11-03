import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/model/view_model.dart';
import 'package:provider/provider.dart';

class TafsirPart extends StatefulWidget {
  const TafsirPart({super.key});

  @override
  State<TafsirPart> createState() => _TafsirPartState();
}

class _TafsirPartState extends State<TafsirPart> {
  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<GetSholat>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tafsir of the Day',
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: SizedBox(
                height: 70,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/tafsir');
                  },
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.green,
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Container(
                            child: Center(
                              child: Text('Sample'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    shadowColor: Colors.grey,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: SizedBox(
                height: 70,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/tafsir');
                  },
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.green,
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Container(
                            child: Center(child: Text('Sample')),
                          ),
                        ),
                      ],
                    ),
                    shadowColor: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
