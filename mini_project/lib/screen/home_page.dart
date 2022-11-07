import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mini_project/model/view_model.dart';
import 'package:mini_project/screen/widget/home_page/date.dart';
import 'package:mini_project/screen/widget/home_page/list_sholat.dart';
import 'package:mini_project/screen/location_page.dart';
import 'package:mini_project/screen/widget/home_page/tafsir.dart';
import 'package:mini_project/service/api/services.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  // final String id;
  // final String tanggal;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final imageBg =
      'https://static.vecteezy.com/system/resources/thumbnails/006/255/895/small_2x/islamic-background-with-desert-and-mosque-free-vector.jpg';
  late String id;
  late String tanggal;
  TimeOfDay _timeOfDay = TimeOfDay.now();
  SholatAPI services = SholatAPI();

  DateTime currentDate = DateTime.now();
  // String dateFormat = DateFormat('yyyy/MM/dd').format(currentDate);

  @override
  void initState() {
    super.initState();
    // id = widget.id;
    // tanggal = widget.tanggal;
    // ignore: todo
    // TODO get formattedDate 2022/11/1 pass ke line 30
    String dateFormat = DateFormat('yyyy/MM/dd').format(currentDate).toString();
    Provider.of<GetSholat>(context, listen: false)
        .getJadwal('1301', dateFormat);
    Provider.of<GetSholat>(context, listen: false).getTafsir(1);
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (currentDate != DateTime.now()) {
          setState(() {
            currentDate = DateTime.now();
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<GetSholat>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Yusholat'),
      ),
      body: modelView.jadwalSholat != null
          ? ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
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
                          Text(
                            '${modelView.jadwalSholat?.data?.lokasi}',
                            style: GoogleFonts.lato(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(5)),
                            image: DecorationImage(
                              image: NetworkImage(imageBg),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 80,
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 12),
                            decoration: BoxDecoration(
                              gradient: RadialGradient(
                                  colors: [
                                    Colors.teal.shade400,
                                    Colors.teal.shade700
                                  ],
                                  center: Alignment.topLeft,
                                  radius: .8,
                                  tileMode: TileMode.mirror),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                opacity: .2,
                                image: AssetImage('assets/images/home-bg.png'),
                              ),
                            ),
                            width: double.infinity,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(24),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                          Text(
                                              DateFormat.Hm()
                                                  .format(currentDate),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium),
                                          SizedBox(height: 10),
                                          Text(
                                            '',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            '${modelView.jadwalSholat?.data?.jadwal?.tanggal}',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SholatList(),
                          TafsirPart(),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          : Center(
              child: CircularProgressIndicator(
                strokeWidth: 5,
              ),
            ),
    );
  }
}
