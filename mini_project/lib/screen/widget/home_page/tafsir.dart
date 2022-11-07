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
  @override
  Widget build(BuildContext context) {
    Random random = Random();
    Random random2 = Random();
    int randomId1 = random.nextInt(6237);
    int randomId2 = random.nextInt(6237);
    final modelView = Provider.of<GetSholat>(context);
    final modelView2 = Provider.of<GetSholat>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            IconButton(
              onPressed: () {
                setState(() {
                  modelView.getTafsir(randomId1);
                  modelView2.getTafsir2(randomId2);
                });
              },
              icon: Icon(Icons.restart_alt_rounded, size: 30),
            )
          ],
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
                              child: Text(
                                  '${modelView.tafsirData?.first.ayaName}'),
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
                            child: Center(
                              child: Text(
                                  '${modelView2.tafsirData?.first.ayaName}'),
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
          ],
        ),
      ],
    );
  }
}
