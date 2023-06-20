import 'package:api_calling/Intermediate/API5/api_5_model.dart';
import 'package:flutter/material.dart';

class API5UI extends StatelessWidget {
  final List<API5Model> users;
  const API5UI({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      child: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final API5Model user = users.elementAt(index);
          return Container(
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.brown,
                width: 0.8,
              ),
              color: Colors.brown.shade50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("ID : ${user.id}"),
                const SizedBox(height: 5),
                Text("UserID : ${user.userId}"),
                const SizedBox(height: 5),
                Text("Title : ${user.title}"),
                const SizedBox(height: 5),
                Text("Body : ${user.body}"),
              ],
            ),
          );
        },
      ),
    );
  }
}
