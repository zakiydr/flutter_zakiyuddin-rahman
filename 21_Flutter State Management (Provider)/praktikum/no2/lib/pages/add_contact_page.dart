import 'package:flutter/services.dart';
import 'package:state_provider2/models/contact.dart';
import 'package:state_provider2/models/getcontacts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddContactPage extends StatefulWidget {
  const AddContactPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AddContactPage> createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<Contact>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Contact'),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  fillColor: Colors.grey.withOpacity(0.2),
                  labelText: 'Name',
                  border: const UnderlineInputBorder(),
                  filled: true,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Invalid Name';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: phoneController,
                decoration: InputDecoration(
                  fillColor: Colors.grey.withOpacity(0.2),
                  labelText: 'Phone Number',
                  border: const UnderlineInputBorder(),
                  filled: true,
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'(\d+)'))
                ],
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Invalid Phone Number';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        formKey.currentState!.validate();
                      });
                      if (nameController.text.isEmpty ||
                          phoneController.text.isEmpty) {
                        return null;
                      }
                      final contactItem = GetContact(
                        name: nameController.text,
                        phone: phoneController.text,
                      );
                      contactProvider.add(contactItem);
                      Navigator.pop(context);
                    },
                    child: const Text('Add Contact')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
