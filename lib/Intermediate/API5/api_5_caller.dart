import 'dart:developer';
import 'dart:convert';
import 'package:api_calling/Intermediate/API5/api_5_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

Future<List<API5Model>> api5Caller() async {
  final uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");

  try {
    Response response = await http.get(uri);

    log("statusCode : ${response.statusCode}");
    log("body : ${response.body}");
    if (response.statusCode == 200) {
      final list = jsonDecode(response.body);
      // final result = List<API5Model>.from(
      //   list.map(
      //     (e) => API5Model.fromJson(e),
      //   ),
      // );

      final result = List<API5Model>.from(
        list.map(
          (e) => API5Model.fromJson(e),
        ),
      );

      return result;
    } else {
      return [];
    }
  } catch (e) {
    log("catchError : $e");
    return [];
  }
}
