import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/model/view_model.dart';
import 'package:provider/provider.dart';

class SholatList extends StatefulWidget {
  const SholatList({super.key});

  @override
  State<SholatList> createState() => _SholatListState();
}

class _SholatListState extends State<SholatList> {
  @override
  Widget build(BuildContext context) {
    final jadwalProvider = Provider.of<GetSholat>(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.teal.shade600,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shubuh',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Icon(
                          Icons.timer_sharp,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      Text(
                        '${jadwalProvider.jadwalSholat?.jadwal?.subuh}',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.teal.shade600,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dzuhur',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Icon(
                          Icons.timer_sharp,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      Text(
                        '${jadwalProvider.jadwalSholat?.jadwal?.dzuhur}',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.teal.shade600,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ashar',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Icon(
                          Icons.timer_sharp,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      Text(
                        '${jadwalProvider.jadwalSholat?.jadwal?.ashar}',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.teal.shade600,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Maghrib',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Icon(
                          Icons.timer_sharp,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      Text(
                        '${jadwalProvider.jadwalSholat?.jadwal?.maghrib}',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.teal.shade600,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Isya',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Icon(
                          Icons.timer_sharp,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      Text(
                        '${jadwalProvider.jadwalSholat?.jadwal?.isya}',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
