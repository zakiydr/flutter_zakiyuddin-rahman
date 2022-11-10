import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mini_project/model/model.dart';
import 'package:mini_project/model/view_model.dart';
import 'package:provider/provider.dart';
import 'package:mini_project/screen/location_page.dart';

class Searchbar extends StatefulWidget {
  const Searchbar({super.key});

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  List<Lokasi> _kota = [];

  void cariKota(String query) {
    final semuaKota = Provider.of<GetSholat>(context, listen: false).kota;
    List<Lokasi> results = [];
    if (query.isEmpty) {
      results = semuaKota;
    } else {
      results = semuaKota
          .where((lokasi) =>
              lokasi.lokasi!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }

    setState(() {
      _kota = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentDate = DateTime.now();
    final modelView = Provider.of<GetSholat>(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
          child: Container(
            height: 50,
            child: TextField(
              textAlignVertical: TextAlignVertical(y: 1),
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                color: Colors.black,
              )),
              onChanged: (value) {
                cariKota(value);
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.teal),
                ),
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ),
        ListTile(
          onTap: () async {
            final selectDate = await showDatePicker(
              context: context,
              initialEntryMode: DatePickerEntryMode.calendar,
              initialDate: currentDate,
              firstDate: DateTime(2000),
              lastDate: DateTime(currentDate.year + 5),
            );
            if (selectDate != null) {
              String id = modelView.jadwalSholat!.data!.id!;
              String dateFormat =
                  DateFormat('yyyy/MM/dd').format(selectDate).toString();
              modelView.getJadwal(id, dateFormat);
              WidgetsBinding.instance.addPostFrameCallback(
                (_) {
                  Navigator.pop(context);
                },
              );
            } else {
              selectDate;
            }
          },
          title: Text(
            'Current Location',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          textColor: Colors.black,
          subtitle: Text(
            '${modelView.jadwalSholat!.data!.lokasi}',
            style: TextStyle(fontSize: 16),
          ),
        ),
        Divider(
          height: 1,
          thickness: 1,
          color: Colors.grey.withOpacity(.5),
        ),
      ],
    );
  }
}
