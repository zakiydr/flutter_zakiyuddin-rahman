import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mini_project/model/view_model.dart';
import 'package:mini_project/screen/location_page.dart';
import 'package:provider/provider.dart';

class HomeDate extends StatefulWidget {
  const HomeDate({super.key});

  @override
  State<HomeDate> createState() => _HomeDateState();
}

class _HomeDateState extends State<HomeDate> {
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<GetSholat>(context);
    final currentDate = DateTime.now();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LocationPage(),
                ),
              );
            },
            child: Container(
              width: double.infinity,
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 1,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 1,
                      offset: Offset(3, 0), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    child: Text(
                      '${modelView.jadwalSholat?.data?.lokasi}',
                      style: GoogleFonts.lato(fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Text(
                          '${modelView.jadwalSholat?.data?.jadwal?.tanggal}',
                          style: GoogleFonts.lato(fontSize: 16),
                        ),
                        Icon(Icons.arrow_forward_ios, size: 16)
                      ],
                    ),
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
