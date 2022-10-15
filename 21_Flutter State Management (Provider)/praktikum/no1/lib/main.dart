import 'package:flutter/material.dart';

import 'package:state_provider1/createcontact.dart';

void main() {
  runApp(const MyAppSetState());
}

class MyAppSetState extends StatelessWidget {
  const MyAppSetState({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class Contact {
  String name;
  String phone;

  Contact({
    required this.name,
    required this.phone,
  });
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Contact> contactList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: ((context, index) {
          Contact contact = contactList[index];
          return Container(
            margin: const EdgeInsets.all(5),
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.green,
                child: Text(
                  contact.name.split('').first,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              title: Text(
                contact.name,
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text(
                contact.phone,
                style: TextStyle(fontSize: 14),
              ),
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Contact newContact = await Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NewContact()));
          setState(() {
            contactList
                .add(Contact(name: newContact.name, phone: newContact.phone));
          });
        },
        child: Icon(
          Icons.person_add,
        ),
      ),
    );
  }
}
