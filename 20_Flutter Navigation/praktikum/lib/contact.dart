import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:contacts/main.dart';

class NewContact extends StatefulWidget {
  const NewContact({Key? key}) : super(key: key);

  @override
  State<NewContact> createState() => _ContactsState();
}

class _ContactsState extends State<NewContact> {
  final formKey = GlobalKey<FormState>();
  TextEditingController controllerNama = TextEditingController();
  TextEditingController controllerNomor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Contact'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Nama tidak valid";
                  }
                  return null;
                },
                controller: controllerNama,
                decoration: InputDecoration(hintText: "Masukkan Nama"),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Nomor tidak valid";
                  }
                  return null;
                },
                controller: controllerNomor,
                decoration: InputDecoration(hintText: "Masukkan Nomor Telepon"),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'\d'))
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                alignment: Alignment.centerLeft,
                child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Success"),
                              content: Text("Kontak berhasil ditambahkan"),
                            );
                          },
                          
                        );
                      }
                    },
                    child: const Text("Submit")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
