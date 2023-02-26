import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
      child: const CircularProgressIndicator(),
    );
  }
}
