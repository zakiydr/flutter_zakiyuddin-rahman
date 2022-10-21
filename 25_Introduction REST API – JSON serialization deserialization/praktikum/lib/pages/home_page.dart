import 'package:restapi/service/services.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String resultDio = '';

  final nameController = TextEditingController();
  final jobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: jobController,
                decoration: const InputDecoration(
                  labelText: 'Job',
                  border: OutlineInputBorder(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      final response = await MyService().fetchUser();
                      resultDio = response.toString();
                      setState(() {});
                    },
                    child: const Text('GET'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final response = await MyService().createUser(
                        name: nameController.text,
                        job: jobController.text,
                      );
                      resultDio = response.toString();
                      setState(() {});
                    },
                    child: const Text('POST'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final response = await MyService().updateUser(
                        name: nameController.text,
                        job: jobController.text,
                      );
                      resultDio = response.toString();
                      setState(() {});
                    },
                    child: const Text('PUT'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final response = await MyService().deleteUser();
                      resultDio = response.toString();
                      setState(() {});
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
              Text(resultDio.toString())
            ],
          ),
        ),
      ),
    );
  }
}
