import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:api_calling/Advanced/responce_class.dart';

class ServiceProvider extends ChangeNotifier {
  final Dio dio = Dio();

  bool isLoadingForService = false;
  Future<ResponseClass> readService() async {
    const uri = "https://garage.logispire.in/api/service/garage/1";

    ResponseClass responseClass = ResponseClass(
      message: "API is Calling",
      success: false,
    );
    try {
      isLoadingForService = true;
      notifyListeners();
      await Future.delayed(const Duration(seconds: 0));
      Response response = await dio.get(
        uri,
        options: Options(
          validateStatus: (status) {
            return status == 200 ||
                status == 400 ||
                status == 404 ||
                status == 500;
          },
        ),
      );

      log("statusCode : ${response.statusCode}");
      log("Msg : ${response.data["msg"]}");

      if (response.statusCode == 200) {
        responseClass.success = true;
        responseClass.message = response.data['msg'];
        responseClass.data = response.data['data'];
        isLoadingForService = false;
        notifyListeners();
        return responseClass;
      } else {
        responseClass.success = false;
        responseClass.message = "Somthing Went Wrong";
        isLoadingForService = false;
        notifyListeners();
        return responseClass;
      }
    } on DioException catch (e) {
      log("DioCatchError : $e");
      isLoadingForService = false;
      notifyListeners();
      return responseClass;
    } catch (e) {
      log("CatchError : $e");
      isLoadingForService = false;
      notifyListeners();
      return responseClass;
    }
  }
}
