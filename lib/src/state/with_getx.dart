import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/count_getx.dart';
import 'package:get/get.dart';

class WithGetX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(
        CounterControllerGetX()); // GetX 상태관리자를 사용하는 선언... Provider와 달리 어디서든 선언할 수 있다

    return Center(
      child: Column(
        children: <Widget>[
          Text("Getx"),
          GetBuilder<CounterControllerGetX>(
            builder: (controller) {
              return Text("${controller.count}");
            },
          ),
          ElevatedButton(
              onPressed: () {
                Get.find<CounterControllerGetX>()
                    .increase(); // don't need to context!!!
              },
              child: Text(
                "+",
                style: TextStyle(fontSize: 30),
              )),
          ElevatedButton(
              onPressed: () {
                Get.find<CounterControllerGetX>().decrease();
              },
              child: Text(
                "-",
                style: TextStyle(fontSize: 30),
              )),
        ],
      ),
    );
  }
}
