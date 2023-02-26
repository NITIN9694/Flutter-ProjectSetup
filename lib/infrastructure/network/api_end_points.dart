// ignore: import_of_legacy_library_into_null_safe
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class ApiEndPoints {
  handleException(error, stacktrace, DioError dioError) {
    debugPrint("Exception occurred: $error stackTrace: $stacktrace");
    if (_checkSocketException(dioError)) {
      throwIfNoSuccess('no_internet_connection'.tr);
    } else if (dioError.type == DioErrorType.connectTimeout) {
      throwIfNoSuccess("Connection  Timeout Exception");
    } else if (dioError.type == DioErrorType.receiveTimeout) {
      throwIfNoSuccess("Connection  Timeout Exception");
    } else {
      if (dioError.response!.statusCode == 401 ||
          dioError.response!.statusCode == 403) {
        //UserServices authService ;
        /*if(Get.isRegistered<UserServices>()){
          authService  = Get.put(UserServices());
        }
        else{
          authService = Get.find<UserServices>();
        }
        authService.logOutAfterExpCode();*/
        throwIfNoSuccess("access_denied".tr);
      } else if (dioError.response!.statusCode == 400) {
        throwIfNoSuccess("invalid_request".tr);
      } else if (dioError.response!.statusCode == 500) {
        throwIfNoSuccess("server_error".tr);
      } else {
        if (dioError.response!.data == null) {
          throwIfNoSuccess("something_went_wrong".tr);
        } else {
          throwIfNoSuccess(dioError.response!.data['message']);
        }
      }
    }
  }

  void throwIfNoSuccess(String response) {
    throw HttpException(response);
  }

  bool _checkSocketException(DioError err) {
    return err.type == DioErrorType &&
        err.error != null &&
        err.error is SocketException;
  }
}
