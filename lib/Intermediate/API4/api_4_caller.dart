import 'dart:convert';

import 'package:api_calling/Intermediate/API4/api_4_user_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as h;
import 'package:http/http.dart';

Future<API4UserModel?> api4Caller() async {
  final uri = Uri.parse("https://jsonplaceholder.typicode.com/todos/1");

  try {
    Response response = await h.get(uri);
    // await Future.delayed(const Duration(seconds: 10));
    if (response.statusCode == 200) {
      final body = json.decode(response.body);
      final res = API4UserModel.fromJson(body);
      return res;
    } else {
      return null;
    }
  } catch (e) {
    debugPrint("CatchError : $e");
    return null;
  }
}
