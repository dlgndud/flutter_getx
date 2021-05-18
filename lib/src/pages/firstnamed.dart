import 'package:flutter/material.dart';
import 'package:flutter_getx/src/home.dart';
import 'package:flutter_getx/src/pages/second.dart';
import 'package:get/get.dart';

class FirstNamedPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text('First Named Page')
      ),
      body: Center(
        child: Column (
          children: <Widget>[
            Text("Frist Named Page"),
            ElevatedButton(onPressed: () {
              //Get.to(SecondPage());
              Get.toNamed("/second_named");
              //Get.offNamed("/home");
            }, child: Text("Next Page")),
            ElevatedButton(onPressed: () {
              //Get.to(Home());
              Get.offAll(Home());
            }, child: Text("getX Home"))
          ],
        ),
      ),
    );
  }
}
