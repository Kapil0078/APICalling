import 'package:api_calling/Intermediate/API6/api_6_caller.dart';
import 'package:api_calling/Intermediate/API6/api_6_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'api_6_model.dart';

class API6Home extends StatefulWidget {
  const API6Home({super.key});

  @override
  State<API6Home> createState() => _API6HomeState();
}

class _API6HomeState extends State<API6Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('API-6')),
      body: FutureBuilder(
        future: api6Caller(),
        builder: (context, AsyncSnapshot<List<User6>> snapshot) {
          if (snapshot.hasData) {
            return API6UI(users: snapshot.data!);
          } else if (snapshot.hasError) {
            throw Exception("Error : ${snapshot.error}");
          } else {
            return const Center(child: CupertinoActivityIndicator());
          }
        },
      ),
    );
  }
}
