// import 'dart:io';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/cupertino.dart';

// class FirebaseDatabase {
//   final _instance = FirebaseFirestore.instance;
//   final storageRef = FirebaseStorage.instance.ref();

//   Future registerUser(authData) async {
//     var connectivityResult = await (Connectivity().checkConnectivity());
//     if (connectivityResult == ConnectivityResult.none) {
//       throw 'Connection lost please check connection is not available';
//     } else {
//       try {
//         QuerySnapshot querySnapshot;
//         DocumentReference documentReference = _instance.collection('users').doc();
//         authData['userId'] = documentReference.id;
//         await _instance.collection('users').doc(documentReference.id).set(authData);
//         querySnapshot = await _instance.collection('users').where('userId', isEqualTo: documentReference.id).get();
//         return querySnapshot.docs;
//       } on FirebaseException catch (e) {
//         throw e.message ?? 'Something went wrong';
//       }
//     }
//   }

//   Future checkUserPhoneNumber(phoneNumber) async {
//     var connectivityResult = await (Connectivity().checkConnectivity());
//     if (connectivityResult == ConnectivityResult.none) {
//       throw 'Connection lost please check connection is not available';
//     }else{
//       try {
//         QuerySnapshot querySnapshot = await _instance.collection("users").where("phone", isEqualTo: phoneNumber).get();
//         return querySnapshot.docs;
//       } on FirebaseException catch (e) {
//         throw e.message ?? 'Something went wrong';
//       }
//     }
//   }

//   Future updateUser(authData) async {
//     var connectivityResult = await (Connectivity().checkConnectivity());
//     if (connectivityResult == ConnectivityResult.none) {
//       throw 'Connection lost please check connection is not available';
//     }else{
//       try {
//         await _instance.collection('users').doc(authData['userId']).update(authData);
//         QuerySnapshot querySnapshot = await _instance.collection('users').where("userId", isEqualTo: authData['userId']).get();
//         return querySnapshot.docs;
//       } on FirebaseException catch (e) {
//         throw e.message ?? 'Something went wrong';
//       }
//     }
//   }
// }
