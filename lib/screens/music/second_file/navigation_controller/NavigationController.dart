

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../SecondScreen.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 3.obs;

  final screens = [
    Container(
      color: CupertinoColors.activeBlue,
    ),
    Container(
      color: CupertinoColors.destructiveRed,
    ),
    Container(
      color: CupertinoColors.activeGreen,
    ),
    const SecondScreen()
  ];
}