import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mini_project/model/model.dart';
import 'package:mini_project/model/view_model.dart';
import 'package:mini_project/screen/home_page.dart';
import 'package:mini_project/screen/widget/location_page.dart/searchbar.dart';
import 'package:mini_project/service/api/services.dart';
import 'package:provider/provider.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  List<Lokasi> _kota = [];
  @override
  void initState() {
    final semuaKota = Provider.of<GetSholat>(context, listen: false).kota;
    _kota = semuaKota;
    Provider.of<GetSholat>(context, listen: false).getKota();
    super.initState();
  }

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

  //   // TODO tambah tanggal line 49
  // setState(() {
  //   Provider.of<GetSholat>(context, listen: false).getJadwal(
  //       ('${_kota[index].id}'), '2022/11/05');
  // });

  @override
  Widget build(BuildContext context) {
    final currentDate = DateTime.now();
    final modelView = Provider.of<GetSholat>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Location'),
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       showSearch(context: context, delegate: CustomSearchDelegate());
        //     },
        //     icon: Icon(Icons.search),
        //   ),
        // ],
      ),
      body: modelView.kota.isNotEmpty
          ? Column(
              children: [
                Searchbar(),
                Expanded(
                  child: Scrollbar(
                    child: ListView.separated(
                      itemCount: _kota.length,
                      itemBuilder: (context, index) {
                        final listKota = _kota[index].lokasi.toString();
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () async {
                                final selectDate = await showDatePicker(
                                  context: context,
                                  initialEntryMode:
                                      DatePickerEntryMode.calendar,
                                  initialDate: currentDate,
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(currentDate.year + 5),
                                );
                                if (selectDate != null) {
                                  String id = _kota[index].id!;
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
                                  '${_kota[index].lokasi}',
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
                ),
              ],
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}

// class CustomSearchDelegate extends SearchDelegate {
//   // TODO Masukkin list kota;
//   List<Lokasi> searchTerms = [];
  
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//         onPressed: () {
//           query = '';
//         },
//         icon: Icon(Icons.clear),
//       ),
//     ];
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(
//       onPressed: () {
//         close(context, null);
//       },
//       icon: Icon(Icons.arrow_back),
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     var semuaKota = Provider.of<GetSholat>(context, listen: false);
//     List<Lokasi> matchQuery = [];
//     for (Lokasi kota in semuaKota.kota) {
//       if (kota.lokasi!.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(kota);
//       }
//     }

//     return ListView.builder(
//       itemCount: matchQuery.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Text('${matchQuery[index]}'),
//         );
//       },
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//         var semuaKota = Provider.of<GetSholat>(context, listen: false);

//     List<Lokasi> matchQuery = [];
//     for (Lokasi kota in semuaKota.kota) {
//       if (kota.lokasi!.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(kota);
//       }
//     }

//     return ListView.builder(
//       itemCount: matchQuery.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Text('${matchQuery[index]}'),
//         );
//       },
//     );
//   }
// }
