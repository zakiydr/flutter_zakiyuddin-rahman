import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> images = [
    "https://assets.pikiran-rakyat.com/crop/18x86:1079x857/x/photo/2021/07/12/4187991904.jpg",
    "https://en.kepoper.com/wp-content/uploads/2021/01/twice-mina-profile-1-wm.jpg",
    "https://en.kepoper.com/wp-content/uploads/2021/01/twice-momo-profile-1-resized-wm.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery"),
      ),
      body: GridView.builder(
        itemCount: images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Tampilkan gambar?"),
                    content: SizedBox(
                      width: 200,
                      height: 200,
                      child: PhotoView(
                        imageProvider: NetworkImage(images[index]),
                      ),
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20))),
                                context: context,
                                builder: (context) {
                                  return Container(
                                    padding: EdgeInsets.all(50),
                                    child: PhotoView(
                                      imageProvider:
                                          NetworkImage(images[index]),
                                    ),
                                  );
                                });
                          },
                          child: Text("Ya")),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Tidak"))
                    ],
                  );
                },
              );
            },
            onLongPress: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Container(
                        height: 700,
                        width: 400,
                        child: PhotoView(
                          imageProvider: NetworkImage(images[index]),
                        ),
                      ),
                    );
                  });
            },
            child: Image.network(
              images[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
