import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mini_project/model/model.dart';
import 'package:mini_project/model/view_model.dart';
import 'package:mini_project/screen/home_page.dart';
import 'package:mini_project/service/api/services.dart';
import 'package:provider/provider.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  void initState() {
    super.initState();
    Provider.of<GetSholat>(context, listen: false).getKota();
  }

  searchKota(String query) {
    final listKota = Provider.of<GetSholat>(context, listen: false).kota;

    final suggestion = listKota.where((element) {
      final namaKota = element.lokasi!.toLowerCase();
      final input = query.toLowerCase();
      return namaKota.contains(input);
    }).toList();

    setState(() {
      // listCariKota = suggestion;
    });
  }

  //   // TODO tambah tanggal line 49
  // setState(() {
  //   Provider.of<GetSholat>(context, listen: false).getJadwal(
  //       ('${modelView.kota[index].id}'), '2022/11/05');
  // });

  @override
  Widget build(BuildContext context) {
    final currentDate = DateTime.now();
    final modelView = Provider.of<GetSholat>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Location'),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: Scrollbar(
        child: ListView.separated(
          itemCount: modelView.kota.length,
          itemBuilder: (context, index) {
            final listKota = modelView.kota[index].lokasi.toString();
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () async {
                    final selectDate = await showDatePicker(
                      context: context,
                      initialEntryMode: DatePickerEntryMode.calendar,
                      initialDate: currentDate,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(currentDate.year + 5),
                    );
                    if (selectDate != null) {
                      String id = modelView.kota[index].id!;
                      String dateFormat = DateFormat('yyyy/MM/dd')
                          .format(selectDate)
                          .toString();
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
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 40,
                    child: Text(
                      '${modelView.kota[index].lokasi}',
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              indent: 10,
              endIndent: 10,
              thickness: 1,
              color: Colors.blueGrey.withOpacity(.2),
            );
          },
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final modelView = Provider.of<GetSholat>(context);
    List<String> matchQuery = [];
    // for (String kota in searchTerms) {
    //   if (kota.toLowerCase().contains(query.toLowerCase())) {
    //     matchQuery.add(kota);
    //   }
    // }
    return ListView.builder(
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    // for (String kota in searchTerms) {
    //   if (kota.toLowerCase().contains(query.toLowerCase())) {
    //     matchQuery.add(kota);
    //   }
    // }
    return ListView.builder(
      itemBuilder: (context, index) {
        String result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
