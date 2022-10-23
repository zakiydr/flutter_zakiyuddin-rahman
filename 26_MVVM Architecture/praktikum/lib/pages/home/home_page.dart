import 'package:restapi/models/user_model.dart';
import 'package:restapi/pages/home/home_view_model.dart';
import 'package:restapi/pages/user/user_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String resultDio = '';
  List<UserDio> user = [];

  final nameController = TextEditingController();
  final jobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<HomeViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                controller: jobController,
                decoration: const InputDecoration(
                  labelText: 'Job',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      Provider.of<HomeViewModel>(context, listen: false)
                          .getAllUsers();
                    },
                    child: const Text('GET'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      Provider.of<HomeViewModel>(context, listen: false)
                          .createUser(
                        nameController.text,
                        jobController.text,
                      );
                    },
                    child: const Text('POST'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      Provider.of<HomeViewModel>(context, listen: false)
                          .updateUser(
                        nameController.text,
                        jobController.text,
                      );
                    },
                    child: const Text('PUT'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      Provider.of<HomeViewModel>(context, listen: false)
                          .deleteUser();
                    },
                    child: const Text('DELETE'),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Result',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                modelView.result.toString(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.person),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const UserPage(),
            ),
          );
        },
      ),
    );
  }
}
