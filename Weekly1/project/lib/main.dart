import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
  final formKey = GlobalKey<FormState>();

  var firstNameController = TextEditingController();

  var lastNameController = TextEditingController();

  var emailController = TextEditingController();

  var captionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    void openEndDrawer() {
      scaffoldKey.currentState!.openEndDrawer();
    }

    void closeEndDrawer() {
      Navigator.of(context).pop();
    }

    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          leading: Image(
            image: const AssetImage('assets/images/logo.png'),
            color: Colors.white.withOpacity(0.8),
          ),
          title: const Text("Zaki App"),
          actions: [
            IconButton(
              onPressed: () => openEndDrawer(),
              icon: const Icon(Icons.menu),
            ),
          ],
        ),
        endDrawer: buildDrawer(context),
        body: buildBody(context));
  }

  Widget buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.cover),
                ),
              ),
              const Divider(
                color: Colors.blueAccent,
                height: 1,
                thickness: .5,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.person_outline_rounded,
                            size: 36, color: Colors.blueAccent),
                      ),
                      Text('Contact Us',
                          style: GoogleFonts.sora(
                            textStyle: const TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.more_horiz_rounded,
                            size: 36, color: Colors.blueAccent),
                      ),
                      Text('About Us',
                          style: GoogleFonts.sora(
                            textStyle: const TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              const Divider(
                color: Colors.blueAccent,
                height: 1,
                thickness: 1,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.login_rounded,
                            size: 36, color: Colors.blueAccent),
                      ),
                      Text('Login',
                          style: GoogleFonts.sora(
                            textStyle: const TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              fit: StackFit.passthrough,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://1z1euk35x7oy36s8we4dr6lo-wpengine.netdna-ssl.com/wp-content/uploads/2020/08/zymr8_steps_the_mobile_app_dev_lifecycle_cover.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 50, 220, 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "JekDev",
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Text(
                        "JekDev help you to build your mobile apps.",
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(16),
              alignment: Alignment.center,
              child: Text(
                "About Us",
                style: GoogleFonts.sora(
                  textStyle: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 1,
                  child: Card(
                    margin: const EdgeInsets.all(8),
                    child: Container(
                      padding: const EdgeInsets.all(24),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2, 2),
                            blurRadius: 4,
                            spreadRadius: 1,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(4),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://cdn.imgbin.com/17/21/25/imgbin-monkey-cartoon-drawing-face-cute-monkey-hB0bGh4VpZCZdbTHKypRWZfg1.jpg'),
                              radius: 25,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                            child: Center(
                              child: Text(
                                "Paket Satu",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          const Text(
                              textAlign: TextAlign.justify,
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius vel sapien non iaculis. Ut dictum porttitor interdum")
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Card(
                    margin: const EdgeInsets.all(8),
                    child: Container(
                      padding: const EdgeInsets.all(24),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2, 2),
                            blurRadius: 4,
                            spreadRadius: 1,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(4),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://cdn.imgbin.com/17/21/25/imgbin-monkey-cartoon-drawing-face-cute-monkey-hB0bGh4VpZCZdbTHKypRWZfg1.jpg'),
                              radius: 25,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                            child: Center(
                              child: Text(
                                "Paket Dua",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          const Text(
                              textAlign: TextAlign.justify,
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius vel sapien non iaculis. Ut dictum porttitor interdum")
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 100,
        ),
        const Divider(
          thickness: 3,
          height: 2,
          color: Colors.black,
        ),
        buildForm(context),
      ],
    );
  }

  Widget buildForm(BuildContext context) {
    return Stack(
      children: [
        RotatedBox(
          quarterTurns: 1,
          child: Container(
              width: 600,
              height: 700,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://img.freepik.com/free-photo/gray-abstract-wireframe-technology-background_53876-101941.jpg?w=2000"),
                    fit: BoxFit.cover),
              )),
        ),
        Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(bottom: 30),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Contact Us",
                      style: GoogleFonts.sora(
                        textStyle: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Form(
                autovalidateMode: AutovalidateMode.always,
                key: formKey,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: const Text(
                                    "First name",
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Fill the name";
                                      }
                                      return null;
                                    },
                                    controller: firstNameController,
                                    onChanged: (value) {
                                      value = firstNameController as String;
                                    },
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      fillColor: Colors.grey[200],
                                      filled: true,
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide(width: 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: const Text("Last name"),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Fill the name";
                                      }
                                      return null;
                                    },
                                    controller: lastNameController,
                                    onChanged: (value) {
                                      value = lastNameController as String;
                                    },
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      fillColor: Colors.grey[200],
                                      filled: true,
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide(width: 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: const Text("Email"),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5),
                            child: TextFormField(
                              validator: (value) =>
                                  EmailValidator.validate(value!)
                                      ? null
                                      : "Invalid Email",
                              controller: emailController,
                              onChanged: (value) {
                                value = emailController as String;
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                fillColor: Colors.grey[200],
                                filled: true,
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(width: 1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: const Text("What we can help you with?"),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter Message";
                                }
                                return null;
                              },
                              controller: captionController,
                              onChanged: (value) {
                                value = captionController as String;
                              },
                              minLines: 5,
                              maxLines: null,
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                fillColor: Colors.grey[200],
                                filled: true,
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(width: 1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text("Success"),
                                    content: Text(
                                        "Name: ${firstNameController.text + lastNameController.text}\nEmail: ${emailController.text}\nMessage: ${captionController.text}"),
                                  );
                                },
                              );
                            }
                          },
                          child: const Text("Submit"),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
