import 'package:flutter/material.dart';

import 'api_4_user_model.dart';

class API4UI extends StatelessWidget {
  final API4UserModel? user;
  const API4UI({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    return user != null
        ? Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("ID : ${user!.id}"),
                Text("userID : ${user!.userId}"),
                Text("title : ${user!.title}"),
                Text("completed : ${user!.completed}"),
              ],
            ),
          )
        : const Center(child: Text("EmptyUser"));
  }
}
