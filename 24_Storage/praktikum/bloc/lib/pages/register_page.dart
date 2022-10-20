import '../bloc/user_bloc.dart';
import '../pages/home_page.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = BlocProvider.of<UserBloc>(context);
    userProvider.add(
      CheckUser(context: context),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Form(
            key: formKey,
            child: ListView(
              shrinkWrap: true,
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    fillColor: Colors.grey.withOpacity(.2),
                    filled: true,
                    border: const UnderlineInputBorder(),
                  ),
                  validator: (name) {
                    if (name!.isEmpty) {
                      return 'Invalid Name';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    fillColor: Colors.grey.withOpacity(.2),
                    filled: true,
                    border: const UnderlineInputBorder(),
                  ),
                  validator: (email) {
                    if (email != null && !EmailValidator.validate(email)) {
                      return 'Invalid Email';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: phoneNumberController,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    fillColor: Colors.grey.withOpacity(.2),
                    filled: true,
                    border: const UnderlineInputBorder(),
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (phoneNumber) {
                    if (phoneNumber!.isEmpty) {
                      return 'Invalid Phone Number';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                BlocBuilder<UserBloc, UserState>(
                  builder: (context, state) {
                    if (state is UserChanged) {
                      return TextFormField(
                        controller: passwordController,
                        obscureText: state.toggle,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              BlocProvider.of<UserBloc>(context)
                                  .add(PasswordToggle());
                            },
                            icon: Icon(state.toggle
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                          labelText: 'Password',
                          fillColor: Colors.grey.withOpacity(.2),
                          filled: true,
                          border: const UnderlineInputBorder(),
                        ),
                        validator: (password) {
                          if (password != null && password.length < 8) {
                            return 'Min. 8 characters';
                          }
                          return null;
                        },
                      );
                    }
                    return const Text('Something went wrong');
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    final isValidForm = formKey.currentState!.validate();
                    String username = nameController.text;
                    String email = emailController.text;

                    if (isValidForm) {
                      userProvider.add(IsLogin(newUser: false));
                      userProvider.add(AddName(username: username));
                      userProvider.add(AddEmail(email: email));
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                        (route) => false,
                      );
                    }
                  },
                  child: const Text('Register'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
