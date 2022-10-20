import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../pages/register_page.dart';
import '../providers/user_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  late SharedPreferences registerdata;
  String name = '';
  String email = '';

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    userProvider.initial();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<UserProvider>(
                  builder: (BuildContext context, value, child) {
                    return Text(
                      'Hello, ${value.name}',
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    );
                  },
                ),
                Consumer<UserProvider>(
                  builder: (BuildContext context, value, child) {
                    return Text(
                      value.email,
                      style: const TextStyle(fontSize: 30),
                    );
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      userProvider.isLogin(true);
                      userProvider.deleteName(name);
                      userProvider.deleteEmail(email);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterPage(),
                        ),
                      );
                    },
                    child: const Text('Sign Out'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
