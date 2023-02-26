import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'config.dart';

import 'infrastructure/local/app_translations.dart';
import 'infrastructure/navigations/navigation.dart';
import 'infrastructure/navigations/routes.dart';
import 'infrastructure/theme/theme.dart';

import 'initializer.dart';

Future<void> main() async {
  // await Initializer.init();
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: EnvironmentsBadge(
        child: GetMaterialApp(
          initialRoute: Routes.createProfile, //edit
          getPages: Nav.routes,
          theme: themeData,
          builder: (context, Widget? child) {
            final MediaQueryData data = MediaQuery.of(context);
            return MediaQuery(
              data: data.copyWith(textScaleFactor: 1.1),
              child: child!,
            );
          },
          debugShowCheckedModeBanner: false,
          supportedLocales: AppTranslations.locales,
          locale: AppTranslations.locale,
          fallbackLocale: AppTranslations.fallbackLocale,
          translations: AppTranslations(),
          // localizationsDelegates: const [
          //   GlobalMaterialLocalizations.delegate,
          //   GlobalWidgetsLocalizations.delegate,
          //   GlobalCupertinoLocalizations.delegate,
          // ],
        ),
      ),
    );
  }
}

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;

  const EnvironmentsBadge({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final env = ConfigEnvironments.getEnvironments()['env'];
    return SizedBox(child: child);
  }
}
