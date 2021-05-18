import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text('Second Page')
      ),
      body: Center(
        child: Column (
          children: <Widget>[
            Text("Second Page"),
            ElevatedButton(onPressed: () {
              Get.back();
            }, child: Text("Next Page"))
          ],
        ),
      ),
    );
  }
}
