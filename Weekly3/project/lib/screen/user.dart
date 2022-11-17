import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:weekly_project1/model/view_model.dart';

class UserData extends StatefulWidget {
  const UserData({super.key});

  @override
  State<UserData> createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<GetData>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Data"),
      ),
      body: modelView.data.isNotEmpty
          ? ListView.builder(
              itemCount: modelView.data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 1,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${modelView.data[index].firstName!} ${modelView.data[index].lastName!}",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                modelView.data[index].email!,
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                modelView.data[index].caption!,
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.cancel_presentation_sharp),
                  Text("Data is empty"),
                ],
              ),
            ),
    );
  }
}
