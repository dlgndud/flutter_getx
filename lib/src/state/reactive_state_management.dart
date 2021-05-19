import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/count_react.dart';
import 'package:get/get.dart';

class ReactiveStateManagement extends StatelessWidget {
  const ReactiveStateManagement({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String id = Get.parameters['param'];
    String name = Get.arguments['name'];

    Get.put(CountControllWithReactive());

    return Scaffold(
      appBar: AppBar(
        title: Text("${id} ${name} 반응형 상태관리"),
      ),
      body: Column(
        children: [
          Container(
            child: Text(
              "Reactive!",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Obx(() {
            // recomment!
            int count = Get.find<CountControllWithReactive>().count.value;
            return Text("${count}", style: TextStyle(fontSize: 150));
          }),
          Container(
            child: null,
          ),
          ElevatedButton(
              onPressed: () {
                Get.find<CountControllWithReactive>().increase();
              },
              child: Text("Increase!")),
          GetX(builder: (_) {
            // other way!!!
            int count = Get.find<CountControllWithReactive>().count.value;
            return Text("${count}",
                style: TextStyle(fontSize: 150, color: Colors.amber));
          }),
          ElevatedButton(
              onPressed: () =>
                  Get.find<CountControllWithReactive>().putNumber(5),
              child: Text("5로 변경"))
        ],
      ),
    );
  }
}
