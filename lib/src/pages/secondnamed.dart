import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondNamedPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text('Second Named Page')
      ),
      body: Center(
        child: Column (
          children: <Widget>[
            Text("Second Named Page"),
            ElevatedButton(onPressed: () {
              Get.back();
            }, child: Text("Next Page"))
          ],
        ),
      ),
    );
  }
}
