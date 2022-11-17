import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weekly_project1/screen/user.dart';

class EndDrawer extends StatelessWidget {
  EndDrawer({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.cover),
                ),
              ),
              const Divider(
                color: Colors.blueAccent,
                height: 1,
                thickness: .5,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.person_outline_rounded,
                            size: 24, color: Colors.blueAccent),
                      ),
                      Text('Contact Us',
                          style: GoogleFonts.sora(
                            textStyle: const TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.more_horiz_rounded,
                            size: 24, color: Colors.blueAccent),
                      ),
                      Text('About Us',
                          style: GoogleFonts.sora(
                            textStyle: const TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              const Divider(
                color: Colors.blueAccent,
                height: 1,
                thickness: 1,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.login_rounded,
                            size: 24, color: Colors.blueAccent),
                      ),
                      Text('Login',
                          style: GoogleFonts.sora(
                            textStyle: const TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UserData()));
                },
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.manage_search,
                            size: 24, color: Colors.blueAccent),
                      ),
                      Text('Check Data User',
                          style: GoogleFonts.sora(
                            textStyle: const TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
