import 'package:flutter_getx/src/controller/count_react.dart';
import 'package:get/instance_manager.dart';

import 'package:get/get.dart';

class BindingManager implements Bindings {
  @override
  void dependencies() {
    Get.put(CountControllWithReactive());
  }
}
