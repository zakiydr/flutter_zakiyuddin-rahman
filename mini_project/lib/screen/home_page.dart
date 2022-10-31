import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/model/model.dart';
import 'package:mini_project/model/provider.dart';
import 'package:mini_project/screen/location_page.dart';
import 'package:mini_project/service/api/services.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TimeOfDay _timeOfDay = TimeOfDay.now();
  String resultDio = '';
  SholatAPI services = SholatAPI();
  List<JadwalSholat> sholat = [];
  late Future<JadwalSholat> jadwalSholat;

  @override
  void initState() {
    super.initState();
    Provider.of<GetSholat>(context, listen: false).getJadwal();
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
    final jadwalProvider = Provider.of<GetSholat>(context);
    final model = jadwalProvider.jadwal;
    print('${model}wadidaw');
    // final jadwal = jadwalProvider.jadwal;

    return Scaffold(
      appBar: AppBar(
        title: Text("Religi"),
      ),
      body: ListView(
        children: [
          Column(
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Icon(
                          Icons.location_pin,
                          size: 25,
                        ),
                      ),
                      Text('', style: GoogleFonts.lato())
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 32),
                decoration: BoxDecoration(
                  color: Colors.teal[400],
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                width: double.infinity,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Waktu saat ini',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text('$hour:$minute',
                              style: Theme.of(context).textTheme.displayMedium),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Waktu (Sholat)',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            'Jam',
                            style: Theme.of(context).textTheme.displayMedium,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
