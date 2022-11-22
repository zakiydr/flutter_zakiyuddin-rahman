import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:state_management/bloc/contact/contact_bloc.dart';
import 'package:state_management/models/model.dart';
import 'package:state_management/pages/add_contact_page.dart';
import 'package:state_management/pages/contact_page.dart';
import 'package:state_management/pages/empty_page.dart';

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
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddContactPage(),
            ),
          );
        },
      ),
    );
  }

  Widget buildHomePage() {
    return BlocBuilder<ContactBloc, ContactState>(
      builder: (context, state) {
        BlocProvider.of<ContactBloc>(context).add(CheckContact());
        if (state is ContactLoading) {
          return const CircularProgressIndicator();
        } else if (state is ContactLoaded) {
          return state.isEmpty ? const EmptyPage() : const ContactPage();
        }
        return const Text('Something went wrong');
      },
    );
  }
}
