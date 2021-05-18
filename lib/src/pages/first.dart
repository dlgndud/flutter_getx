import 'package:flutter/material.dart';
import 'package:flutter_getx/src/home.dart';
import 'package:flutter_getx/src/pages/second.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text('First Page')
      ),
      body: Center(
        child: Column (
          children: <Widget>[
            Text("Frist Page"),
            ElevatedButton(onPressed: () {
              Get.to(SecondPage());
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
