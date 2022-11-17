import 'package:flutter/material.dart';
import 'package:weekly_project1/screen/widgets/about_us.dart';
import 'package:weekly_project1/screen/widgets/contact_us.dart';
import 'package:weekly_project1/screen/widgets/drawer.dart';
import 'package:weekly_project1/screen/widgets/header.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    void openEndDrawer() {
      scaffoldKey.currentState!.openEndDrawer();
    }

    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          leading: Image(
            image: const AssetImage('assets/images/logo.png'),
            color: Colors.white.withOpacity(0.8),
          ),
          title: const Text("JekDev"),
          actions: [
            IconButton(
              onPressed: () => openEndDrawer(),
              icon: const Icon(Icons.menu),
            ),
          ],
        ),
        endDrawer: EndDrawer(),
        body: buildBody(context));
  }

  Widget buildBody(BuildContext context) {
    return ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Header(),
            AboutUs(),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        const Divider(
          thickness: 3,
          height: 2,
          color: Colors.black,
        ),
        ContactUs(),
      ],
    );
  }
}
