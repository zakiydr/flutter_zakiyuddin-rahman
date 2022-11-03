import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mini_project/model/model.dart';
import 'package:mini_project/model/view_model.dart';
import 'package:mini_project/screen/widget/home_page/date.dart';
import 'package:mini_project/screen/widget/home_page/list_sholat.dart';
import 'package:mini_project/screen/location_page.dart';
import 'package:mini_project/screen/widget/home_page/tafsir.dart';
import 'package:mini_project/service/api/services.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TimeOfDay _timeOfDay = TimeOfDay.now();
  SholatAPI services = SholatAPI();

  final currentDate = DateTime.now();
  // String dateFormat = DateFormat('yyyy/MM/dd').format(currentDate);

  @override
  void initState() {
    super.initState();
    // TODO get formattedDate 2022/11/1 pass ke line 30

    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (_timeOfDay.minute != TimeOfDay.now().minute) {
          setState(() {
            _timeOfDay = TimeOfDay.now();
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Jam
    final hour =
        _timeOfDay.hour < 10 ? '0${_timeOfDay.hour}' : '${_timeOfDay.hour}';
    final minute = _timeOfDay.minute < 10
        ? '0${_timeOfDay.minute}'
        : '${_timeOfDay.minute}';
    // Waktu Sholat
    final modelView = Provider.of<GetSholat>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("Religi"),
        ),
        body: modelView.jadwalSholat != null
            ? ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LocationPage(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 4.0),
                                  child: Icon(
                                    Icons.location_pin,
                                    size: 25,
                                  ),
                                ),
                                Text('${modelView.jadwalSholat?.lokasi}',
                                    style: GoogleFonts.lato(fontSize: 16))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 12),
                          decoration: BoxDecoration(
                            color: Colors.teal[400],
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          width: double.infinity,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(24),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Waktu saat ini',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        ),
                                        Text('$hour:$minute',
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayMedium),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          'Waktu Isya',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        ),
                                        Text(
                                          '${modelView.jadwalSholat?.jadwal?.isya}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayMedium,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        HomeDate(),
                        SholatList(),
                        TafsirPart(),
                      ],
                    ),
                  ),
                ],
              )
            : Center(
                child: CircularProgressIndicator(
                  strokeWidth: 5,
                ),
              ));
  }
}


// FutureBuilder(
//         future: services.fetchJadwal(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(
//               child: SizedBox(
//                 width: 50,
//                 height: 50,
//                 child: CircularProgressIndicator(strokeWidth: 5),
//               ),
//             );
//           } else {
//             if (snapshot.hasData) {
//               return 