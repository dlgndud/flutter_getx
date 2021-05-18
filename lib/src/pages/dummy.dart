import 'package:flutter/material.dart';
import 'package:flutter_getx/src/home.dart';
import 'package:flutter_getx/src/pages/second.dart';
import 'package:get/get.dart';

class DummyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    User _user = Get.arguments as User;
    return Scaffold(
      appBar: AppBar(
          title:Text('Dummy Page')
      ),
      body: Center(
        child: Column (
          children: <Widget>[
            Row(
              children: [
                Text(_user.id), Text(_user.email), Text(_user.age.toString()),
              ],
            ),
            //Text(Get.arguments['id']+","+Get.arguments['age'].toString()),
            ElevatedButton(onPressed: () {
              Get.to(SecondPage());
            }, child: Text("Next Page")),

          ],
        ),
      ),
    );
  }
}
