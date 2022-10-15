import 'package:state_provider2/models/contact.dart';
import 'package:state_provider2/pages/add_contact_page.dart';
import 'package:state_provider2/pages/contact_page.dart';
import 'package:state_provider2/pages/empty_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Home'),
      ),
      body: buildHomePage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const AddContactPage();
              },
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget buildHomePage() {
    return Consumer<Contact>(
      builder: (context, contact, child) {
        if (contact.contacts.isNotEmpty) {
          return ContactPage(contact: contact);
        } else {
          return const EmptyPage();
        }
      },
    );
  }
}
