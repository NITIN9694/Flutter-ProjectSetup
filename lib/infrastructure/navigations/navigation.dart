import 'package:fluttersetupgetx/presentations/home/home_screen.dart';
import 'package:get/get.dart';
import '../../presentations/home/binding/home_binding.dart';
import 'routes.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.home,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),

  ];
}
