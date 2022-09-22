import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:faker/faker.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        title: Text("Latihan Layouting"),        
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
           Container(
            margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 1,
                )
              ]
            ),
             child: Icon(Icons.shower, size: 50),
           ),
           Container(
            margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 1,
                )
              ]
            ),
             child: Icon(Icons.alarm, size: 50),
           ),
           Container(
            margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 1,
                )
              ]
            ),
             child: Icon(Icons.ring_volume, size: 50),
           ),
           Container(
            margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 1,
                )
              ]
            ),
             child: Icon(Icons.person, size: 50),
           ),
            ]
          ),
           Container(
            height: 200,
            width: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Image.network(
                      faker.image.image(
                        keywords: ['person'], random: true, height: 50, width: 50
                      ),
                    ),
                    Text(keywords: faker.person.firstName(),)
                  ],
                ),
              );   
              },
            ),
           ),
           SizedBox(
            height: 500,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3
                ),
                itemBuilder: (context, index) {              
                  
            },
            ),
           )
        ],
      ),
    );
  }
}


class Grid extends StatelessWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(faker.image.image(keywords: ['Nature'], random: true, height: 100, width: 100),
      ),
    );
  }

  haha(){
    Container(
    margin: const EdgeInsets.all(5),
    padding: const EdgeInsets.all(5),
    decoration: const BoxDecoration(
      color: Colors.white70,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: const Icon(Icons.heart_broken),
      );
  }
}