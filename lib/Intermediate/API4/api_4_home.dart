import 'package:api_calling/Intermediate/API4/api_4_caller.dart';
import 'package:api_calling/Intermediate/API4/api_4_ui.dart';
import 'package:flutter/material.dart';

import 'api_4_user_model.dart';

class API4Home extends StatefulWidget {
  const API4Home({super.key});

  @override
  State<API4Home> createState() => _API4HomeState();
}

class _API4HomeState extends State<API4Home> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        api4Caller();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API-4"),
      ),
      body: FutureBuilder(
        future: api4Caller(),
        builder: (context, AsyncSnapshot<API4UserModel?> snapshot) {
          if (snapshot.hasData) {
            return API4UI(user: snapshot.data);
          } else if (snapshot.hasError) {
            return Text('error : ${snapshot.error}');
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
