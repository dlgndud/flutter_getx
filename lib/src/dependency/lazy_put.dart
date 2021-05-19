import 'package:flutter/material.dart';
import 'package:flutter_getx/src/dependency/dependency_controller.dart';
import 'package:get/get.dart';

class LazyGetPutDummy extends StatelessWidget {
  const LazyGetPutDummy({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              Obx(() {
                int count = Get.find<DependencyController>().count.value;
                return Text("${count}");
              }),
              ElevatedButton(
                onPressed: () {
                  Get.find<DependencyController>().increase();
                },
                child: Text("Event"),
              ),
            ],
          ),
        ));
  }
}
