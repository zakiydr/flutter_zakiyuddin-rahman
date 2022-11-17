import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          alignment: Alignment.center,
          child: Text(
            "About Us",
            style: GoogleFonts.sora(
              textStyle:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              flex: 1,
              child: Card(
                margin: const EdgeInsets.all(8),
                child: Container(
                  padding: const EdgeInsets.all(24),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2, 2),
                        blurRadius: 4,
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(4),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://cdn.imgbin.com/17/21/25/imgbin-monkey-cartoon-drawing-face-cute-monkey-hB0bGh4VpZCZdbTHKypRWZfg1.jpg'),
                          radius: 25,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                        child: Center(
                          child: Text(
                            "Paket Satu",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const Text(
                          textAlign: TextAlign.justify,
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius vel sapien non iaculis. Ut dictum porttitor interdum")
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Card(
                margin: const EdgeInsets.all(8),
                child: Container(
                  padding: const EdgeInsets.all(24),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2, 2),
                        blurRadius: 4,
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(4),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://cdn.imgbin.com/17/21/25/imgbin-monkey-cartoon-drawing-face-cute-monkey-hB0bGh4VpZCZdbTHKypRWZfg1.jpg'),
                          radius: 25,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                        child: Center(
                          child: Text(
                            "Paket Dua",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const Text(
                          textAlign: TextAlign.justify,
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius vel sapien non iaculis. Ut dictum porttitor interdum")
                    ],
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
