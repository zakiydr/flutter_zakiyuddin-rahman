import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:weekly_project1/model/model.dart';
import 'package:weekly_project1/model/view_model.dart';
import 'package:weekly_project1/screen/user.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final formKey = GlobalKey<FormState>();

  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var captionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<GetData>(context);
    return Column(
      children: [
        Stack(
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
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5),
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
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5),
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
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
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
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
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
                                  final data = Data(
                                      firstName: firstNameController.text,
                                      lastName: lastNameController.text,
                                      email: emailController.text,
                                      caption: captionController.text);
                                  modelView.addUser(data);
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: const Text("Success"),
                                        content: Text(
                                            "Name: ${firstNameController.text + lastNameController.text}\nEmail: ${emailController.text}\nMessage: ${captionController.text}"),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                return Navigator.pop(
                                                  context,
                                                );
                                              },
                                              child: Text('OK'))
                                        ],
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
        ),
      ],
    );
  }
}
