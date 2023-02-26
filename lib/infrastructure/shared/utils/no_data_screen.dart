import 'package:flutter/cupertino.dart';

import '../../theme/colors.theme.dart';
import '../../theme/text.theme.dart';


class NoDataScreen extends StatelessWidget {
  const NoDataScreen({Key? key, required this.title, required this.subtitle, required this.image}) : super(key: key);

  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 250,
            height: dimen25 * 10,
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
            child: Text(
              title,
              style: boldTextStyle(fontSize: dimen16, color: ColorsTheme.colA8B6B9),
            ),
          ),
          Text(
            subtitle,
            style: regularTextStyle(fontSize: dimen13, color: ColorsTheme.colA8B6B9),
          ),
        ],
      ),
    );
  }
}
