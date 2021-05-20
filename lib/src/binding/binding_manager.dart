import 'package:flutter_getx/src/controller/count_react.dart';
import 'package:flutter_getx/src/controller/pixa_controller.dart';
import 'package:flutter_getx/src/repoistory/pixa_list.dart';
import 'package:get/instance_manager.dart';

import 'package:get/get.dart';

class BindingManager implements Bindings {
  @override
  void dependencies() {
    Get.put(CountControllWithReactive());
    Get.put(PixaRepository(), permanent: true);
  }
}
