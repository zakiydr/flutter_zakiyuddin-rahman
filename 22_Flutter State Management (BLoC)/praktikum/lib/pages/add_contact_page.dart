import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/bloc/contact/contact_bloc.dart';
import 'package:state_management/models/m_contacts.dart';

class AddContactPage extends StatefulWidget {
  const AddContactPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AddContactPage> createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {

  final formKey = GlobalKey<FormState>();
  final controllerName = TextEditingController();
  final controllerPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {

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
                controller: controllerName,
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
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: controllerPhone,
                decoration: InputDecoration(
                  fillColor: Colors.grey.withOpacity(0.2),
                  labelText: 'Phone Number',
                  border: const UnderlineInputBorder(),
                  filled: true,
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Invalid Phone Number';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        formKey.currentState!.validate();
                      });
                      if (controllerName.text.isEmpty ||
                          controllerPhone.text.isEmpty) {
                        return;
                      }
                      final contactItem = ContactModel(
                        name: controllerName.text,
                        phone: controllerPhone.text,
                      );
                      context
                          .read<ContactBloc>()
                          .add(AddContact(contact: contactItem));

                      Navigator.pop(context);
                    },
                    child: const Text('Create Contact')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
