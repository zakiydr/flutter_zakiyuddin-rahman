import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://1z1euk35x7oy36s8we4dr6lo-wpengine.netdna-ssl.com/wp-content/uploads/2020/08/zymr8_steps_the_mobile_app_dev_lifecycle_cover.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20, 50, 220, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "JekDev",
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Text(
                "JekDev help you to build your mobile apps.",
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
