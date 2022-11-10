import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mini_project/model/view_model.dart';
import 'package:mini_project/screen/tafsir_page.dart';
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
      'https://static.vecteezy.com/system/resources/previews/002/294/267/non_2x/flat-background-mosque-ramadan-kareem-sunset-landscape-cartoon-illustration-vector.jpg';
  late String id;
  late String tanggal;
  SholatAPI services = SholatAPI();

  DateTime currentDate = DateTime.now();

  int _selectedIndex = 0;
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
    Provider.of<GetSholat>(context, listen: false).getListKota();

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

  void botNavbarTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<GetSholat>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Salam'),
      ),
      body: modelView.jadwalSholat != null
          ? ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 400,
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
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              DateFormat.EEEE('id_ID').format(currentDate),
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(DateFormat.Hm().format(currentDate),
                                style:
                                    Theme.of(context).textTheme.displayMedium),
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
            )
          : Center(
              child: CircularProgressIndicator(
                strokeWidth: 5,
              ),
            ),
    );
  }
}
