import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/bloc/contact/contact_bloc.dart';
import 'package:state_management/components/task_item.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    context.read<ContactBloc>().add(LoadContact());
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: BlocBuilder<ContactBloc, ContactState>(
        builder: (context, state) {
          if (state is ContactLoading) {
            return CircularProgressIndicator(value: controller.value);
          } else if (state is ContactLoaded) {
            return ListView.separated(
              itemCount: state.items.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    TaskItem(states: state.items[index]),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 16,
                );
              },
            );
          }
          return const Text('Something went wrong');
        },
      ),
    );
  }
}
