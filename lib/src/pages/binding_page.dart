import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/count_react.dart';
import 'package:get/get.dart';

class BindingPage extends StatelessWidget {
  const BindingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Binding"),
      ),
      body: Container(
        child: Column(
          children: [
            Obx(() {
              int count = Get.find<CountControllWithReactive>().count.value;
              return Center(
                child: Text(
                  "${count}",
                  style: TextStyle(fontSize: 150, color: Colors.amber),
                ),
              );
            }),
            ElevatedButton(
                onPressed: () =>
                    Get.find<CountControllWithReactive>().increase(),
                child: Text("Increase"))
          ],
        ),
      ),
    );
  }
}
