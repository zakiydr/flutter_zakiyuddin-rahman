import 'package:flutter/material.dart';
import 'package:contacts/contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.green),
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
        leading: Icon(Icons.menu),
        title: Text("Contacts"),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            width: double.infinity,
            height: 70,
            child: ListTile(
              onTap: () {
                
              },
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.lightGreen,
              ),
              title: Text("Name"),
              subtitle: Text("Number"),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            width: double.infinity,
            height: 70,
            child: ListTile(
              onTap: () {
                
              },
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.lightGreen,
              ),
              title: Text("Name"),
              subtitle: Text("Number"),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            width: double.infinity,
            height: 70,
            child: ListTile(
              onTap: () {
                
              },
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.lightGreen,
              ),
              title: Text("Name"),
              subtitle: Text("Number"),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            width: double.infinity,
            height: 70,
            child: ListTile(
              onTap: () {
                
              },
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.lightGreen,
              ),
              title: Text("Name"),
              subtitle: Text("Number"),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            width: double.infinity,
            height: 70,
            child: ListTile(
              onTap: () {
                
              },
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.lightGreen,
              ),
              title: Text("Name"),
              subtitle: Text("Number"),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            width: double.infinity,
            height: 70,
            child: ListTile(
              onTap: () {
                
              },
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.lightGreen,
              ),
              title: Text("Name"),
              subtitle: Text("Number"),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            width: double.infinity,
            height: 70,
            child: ListTile(
              onTap: () {
                
              },
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.lightGreen,
              ),
              title: Text("Name"),
              subtitle: Text("Number"),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            width: double.infinity,
            height: 70,
            child: ListTile(
              onTap: () {
                
              },
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.lightGreen,
              ),
              title: Text("Name"),
              subtitle: Text("Number"),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
          context, MaterialPageRoute(
            builder: (context) => const NewContact(),
        ),
        );
      },
      child: Icon(Icons.add),
      ),
    );
  }
}