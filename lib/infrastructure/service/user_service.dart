// import 'dart:io';

// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/cupertino.dart';

// import '../constants/app_constants.dart';
// import '../storage/pref_manager.dart';

// class UserService{
//   Future<UserService> init() async {
//     getDeviceToken();
//     return this;
//   }

//   static getDeviceToken() async {
//     var deviceToken = await PrefManager.getString(AppConstants.fcmToken);
//     if (deviceToken.toString().isNotEmpty) {
//       return deviceToken;
//     } else {
//       try {
//         String? token = '';
//         token = await FirebaseMessaging.instance.getToken();
//         print('fcmSToken:>>>$token');
//         await PrefManager.putString(AppConstants.fcmToken, token);
//         return token;
//       } catch (e) {
//         debugPrint('failed>>>${e.toString()}');
//       }
//     }
//   }
//   static getDeviceType() {
//     if (Platform.isAndroid) {
//       return 'android';
//     } else if (Platform.isIOS) {
//       return 'iOS';
//     }
//     return '';
//   }
// }