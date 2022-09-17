import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff55879F),
        leading: Builder(
          builder: (context) => IconButton(onPressed: () => Scaffold.of(context).openDrawer(),
          icon: Icon(Icons.menu),
          ),
          ),
        title: Text(
          "Telegram",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.search,
                size: 30,
              ))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text('Zakiyuddin Rahman',
                style: TextStyle(
                  fontSize: 21.0,
                ),
                ),
                accountEmail: Text('zakiyuddinr@gmail.com'),
                currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/profiluser.jpg'),
              )
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('New Group'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.lock_outline_rounded),
              title: Text('New Secret Chat'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.create_new_folder),
              title: Text('New Channel'),
              onTap: () {},
            ),
            Divider(
              height: 0.2,
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contacts'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text('Invite Friends'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Telegram FAQ'),
              onTap: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit_rounded)
      ),
      body: Column(
        children: [
          list(
              url: 'assets/profil1.jpg',
              name: 'Cihuahua',
              time: '15.00',
              msg: 'maen yuk',
              num: '3'),
          Divider(
            height: 0.5,
          ),
          list(
              url: 'assets/profil2.jpg',
              name: 'Macan',
              time: 'Kemarin',
              msg: 'jadi daftar gak?',
              num: '1'),
          Divider(
            height: 0.5,
          ),
          list(
              url: 'assets/profil3.jpg',
              name: 'Singa',
              time: '12.51',
              msg: 'temenin gw yuk',
              num: '1'),
          Divider(
            height: 0.5,
          ),
          list(
              url: 'assets/profil4.jpg',
              name: 'Panda',
              time: '16.23',
              msg: 'Mager ah, mau tidur',
              num: ''),
          Divider(
            height: 0.5,
          ),
          list(
              url: 'assets/profil5.png',
              name: 'Babi',
              time: '11/22/99',
              msg: 'minjem duit dong',
              num: '3'),
          Divider(
            height: 0.5,
          ),
          list(
              url: 'assets/profil6.jpg',
              name: 'Kudanil',
              time: '16.34',
              msg: 'baru bangon sory',
              num: '3'),
          Divider(
            height: 0.5,
          ),
        ],
      ),
    );
  }

  ListTile list(
      {required String url,
      required String name,
      required String time,
      required String msg,
      required String num}) {
    return ListTile(
      contentPadding: EdgeInsets.only(top: 10, left: 10),
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: ExactAssetImage(url),
      ),
      title: Padding(
        padding: EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            Text(
              time,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
          ],
        ),
      ),
      subtitle: Padding(
        padding: EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              msg,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Container(
              child: Text(
                num,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              decoration: BoxDecoration(
                  border: Border(),
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.green),
            )
          ],
        ),
      ),
    );
  }
}
