import 'dart:developer';

import 'package:api_calling/Intermediate/API6/api_6_model.dart';
import 'package:dio/dio.dart';

Future<List<User6>> api6Caller() async {
  final dio = Dio();
  const uri = "https://jsonplaceholder.typicode.com/users";

  try {
    Response response = await dio.get(uri);

    log('statusCode : ${response.statusCode}');
    log('body : ${response.data}');

    if (response.statusCode == 200) {
      final List list = response.data;
      final result = List<User6>.from(list.map((e) => User6.fromJson(e)));
      return result;
    } else {
      return [];
    }
  } on DioException catch (e) {
    log('dioCatchError : $e');
    return [];
  } catch (e) {
    log('catchError : $e');
    return [];
  }
}
