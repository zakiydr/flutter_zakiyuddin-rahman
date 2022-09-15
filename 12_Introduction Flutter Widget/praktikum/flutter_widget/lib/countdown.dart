import 'package:flutter/material.dart';

class Interface extends StatelessWidget {
  const Interface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Alterra Flutter Widget")),
      ),
      body: Center(child: buildTime()),
    );
  }
}

Widget buildTime() {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  final minutes = twoDigits(duration.inMinutes.remainder(60));
  final seconds = twoDigits(duration.inSeconds.remainder(60));
  final hours = twoDigits(duration.inHours.remainder(24));

  return Text(
    '$hours:$minutes:$seconds',
    style: TextStyle(fontSize: 50),
  );
}
