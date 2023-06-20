import 'package:api_calling/Intermediate/API5/api_5_caller.dart';
import 'package:api_calling/Intermediate/API5/api_5_model.dart';
import 'package:api_calling/Intermediate/API5/api_5_ui.dart';
import 'package:flutter/material.dart';

class API5Home extends StatefulWidget {
  const API5Home({super.key});

  @override
  State<API5Home> createState() => _API5HomeState();
}

class _API5HomeState extends State<API5Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API-5"),
      ),
      body: FutureBuilder(
        future: api5Caller(),
        builder: (context, AsyncSnapshot<List<API5Model>> snapshot) {
          if (snapshot.hasData) {
            return API5UI(users: snapshot.data!);
          } else if (snapshot.hasError) {
            throw Exception("Error : ${snapshot.error}");
          } else {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.black,
                strokeWidth: 2.5,
                backgroundColor: Colors.brown,
              ),
            );
          }
        },
      ),
    );
  }
}
