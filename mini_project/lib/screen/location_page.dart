import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/model/view_model.dart';
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

  @override
  Widget build(BuildContext context) {
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
                  onTap: () {
                    // TODO tambah tanggal line 49
                    Provider.of<GetSholat>(context, listen: false).getJadwal(
                        ('${modelView.kota[index].id}'), '2022/11/05');
                    Navigator.popAndPushNamed(context, '/');
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
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // final modelView = Provider.of<GetSholat>(context);
    // List listKota = modelView.kota[].lokasi;
    // List<String> matchQuery = [];
    // for (String fruit in modelView.kota.length);
    // return ListView.builder(itemBuilder: (context, index) {
    return Container();
    // },);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
}
