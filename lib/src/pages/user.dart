import 'package:flutter/material.dart';
import 'package:flutter_getx/src/home.dart';
import 'package:flutter_getx/src/pages/second.dart';
import 'package:get/get.dart';

class UserPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text('UserPage Page')
      ),
      body: Center(
        child: Column (
          children: <Widget>[
            Text(Get.parameters['param']),
            //Text(Get.parameters['name']),Text(Get.parameters['nickname']),
            ElevatedButton(onPressed: () {
              //Get.to(SecondPage());
              Get.offNamed("/");
            }, child: Text("Route Home")),

          ],
        ),
      ),
    );
  }
}
