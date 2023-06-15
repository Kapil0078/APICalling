import 'package:api_calling/Intermediate/API3/api3_caller.dart';
import 'package:api_calling/Intermediate/API3/api3_ui.dart';
import 'package:flutter/material.dart';

class API3Home extends StatefulWidget {
  const API3Home({super.key});

  @override
  State<API3Home> createState() => _API3HomeState();
}

class _API3HomeState extends State<API3Home> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      api3Caller();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API-3"),
      ),
      body: FutureBuilder(
        future: api3Caller(),
        builder: (context, AsyncSnapshot<Map<String, dynamic>?> snapshot) {
          if (snapshot.hasData) {
            return API3UI(user: snapshot.data);
          } else if (snapshot.hasError) {
            return Text('YourErrorUI : ${snapshot.error}');
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
