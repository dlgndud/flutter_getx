import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterControllerGetX extends GetxController {
  int count = 0;

  void increase() {
    count++;
    update();
  }

  void decrease() {
    count--;
    update();
  }
}
