
// import 'package:flutter/services.dart';
// import 'package:flutter/widgets.dart';
// import 'fire';

// import 'infrastructure/shared/log.dart';

// class Initializer {
//   static Future<void> init() async {
//     try {
//       WidgetsFlutterBinding.ensureInitialized();
//       Firebase.initializeApp();
//       UserService().init();
//       _initLog();
//       _initScreenPreference();
//     } catch (err) {
//       rethrow;
//     }
//   }


//   static _initLog() {
//     Log.init();
//     Log.setLevel(Level.ALL);
//   }

  
//   static void _initScreenPreference() {
//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.portraitUp,
//       DeviceOrientation.portraitDown,
//     ]);
//   }


// }
