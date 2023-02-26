// import 'package:raakatdaan/infrastructure/firebase/firebase_database.dart';
// import 'package:raakatdaan/infrastructure/shared/progress_dialog.dart';
// import 'package:raakatdaan/infrastructure/storage/pref_manager.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/get.dart';

// import '../constants/app_constants.dart';
// import '../navigations/routes.dart';
// import '../shared/utils/snackbar.util.dart';

// class FirebaseService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final firebaseStorage = FirebaseFirestore.instance;

//   sendOtp(
//       {required String mobile,
//       required ProgressDialog progressDialog,
//       required Function verificationComplete,
//       required Function customCodeSent,
//       required Function codeAutoRetrievalTimeout}) {
//     _auth.verifyPhoneNumber(
//       phoneNumber: mobile,
//       timeout: const Duration(seconds: 60),
//       verificationCompleted: (AuthCredential authCredential) {
//         verificationComplete(authCredential);
//       },
//       verificationFailed: (FirebaseAuthException authException) {
//         progressDialog.dismiss();
//         handleException(authException);
//       },
//       codeSent: (String verificationId, [int? forceResendingToken]) {
//         customCodeSent(verificationId, forceResendingToken);
//       },
//       codeAutoRetrievalTimeout: (String verificationId) {
//         codeAutoRetrievalTimeout(verificationId);
//       },
//     );
//   }

//   verifyOtp(progressDialog,{required String verificationID, required String otp}) async {
//     print('verificationID--$verificationID');
//     try {
//       PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationID, smsCode: otp);
//       var user = await _auth.signInWithCredential(credential);
//       print('userPhoneNumber--${user.user!.phoneNumber}');
//       return user.user!.phoneNumber;
//     } catch (error) {
//       progressDialog.dismiss();
//       print('verifyOtpError--$error');
//       SnackBarUtil.showError(message: error.toString());
//     }
//   }

//   /*loginUser(phoneNumber) async {
//     var checkUserResult = await FirebaseDatabase().checkUserPhoneNumber(phoneNumber);
//     if (checkUserResult != null) {
//       PrefManager.putBool(AppConstants.loggedIn, true);
//       Get.offAllNamed(Routes.home);
//     } else {
//       Get.offAllNamed(Routes.createProfile, arguments: ["createProfile", phoneNumber]);
//     }
//   }*/

//   void handleException(Exception e) {
//     print('handleException--$e');
//     if (e is FirebaseAuthException) {
//       switch (e.code) {
//         case "invalid-phone-number":
//           {
//             SnackBarUtil.showError(message: "invalid_phone_number".tr);
//             break;
//           }
//         case "quota-exceeded":
//           {
//             SnackBarUtil.showError(message: "quota_exceeded".tr);
//             break;
//           }
//         case "too-many-requests":
//           {
//             SnackBarUtil.showError(message: "too-many-requests".tr);
//             break;
//           }
//         case "user-disabled":
//           {
//             SnackBarUtil.showError(message: "user_disabled".tr);
//             break;
//           }
//         case "operation-not-allowed":
//           {
//             SnackBarUtil.showError(message: "operation_not_allowed");
//             break;
//           }
//         case "network-request-failed":
//           {
//             SnackBarUtil.showError(message: "network_request_failed".tr);
//             break;
//           }
//         case "invalid-verification-code":
//           {
//             SnackBarUtil.showError(message: "invalid_verification_code".tr);
//             break;
//           }
//         default:
//           {
//             SnackBarUtil.showError(message: "error_default".tr);
//           }
//       }
//     } else {
//       SnackBarUtil.showError(message: "error_default".tr);
//     }
//   }
// }
