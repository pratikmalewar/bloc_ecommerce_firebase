import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppNavigator {

  static pushReplacement(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => widget));
  }

    static push(BuildContext context, Widget widget) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => widget));
  }


}
