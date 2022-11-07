import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mini_project/model/view_model.dart';
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
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: Icon(
            Icons.date_range,
            size: 25,
          ),
        ),
        Text('${modelView.jadwalSholat?.data?.jadwal?.tanggal}',
            style: GoogleFonts.lato(fontSize: 16))
      ],
    );
  }
}
