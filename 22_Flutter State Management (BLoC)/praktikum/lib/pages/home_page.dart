import 'package:flutter/material.dart';
import 'package:state_management/pages/add_contact_page.dart';
import 'package:state_management/pages/contact_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: buildHomePage(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const AddContactPage();
              },
            ),
          );
        },
      ),
    );
  }

  Widget buildHomePage() {
    return const ContactPage();
  }
}
