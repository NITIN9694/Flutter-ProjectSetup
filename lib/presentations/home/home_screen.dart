import 'package:flutter/material.dart';
import 'package:fluttersetupgetx/infrastructure/theme/colors.theme.dart';
import 'package:fluttersetupgetx/infrastructure/theme/text.theme.dart';

import '../../infrastructure/core/base/base_view.dart';

import 'controllers/home_contorller.dart';

class HomeScreen extends BaseView<HomeController> {
  @override
  Brightness statusBarBrightness() => Brightness.light;

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello Flutter",
        style: boldTextStyle(fontSize: dimen22, color:ColorsTheme.colA8B6B9),
        )
      ),
    );
  }
}
