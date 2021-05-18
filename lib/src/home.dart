import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/first.dart';
import 'package:flutter_getx/src/state/simple_state_manager.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('라우트 관리 홈')
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: () {
              //Get.to(FirstPage());
              Get.toNamed("/first_named");
            }, child: Text("getX Route")),
            ElevatedButton(onPressed: () {
              //Get.to(FirstPage());
              //Get.toNamed("/dummy", arguments: {"id":"paulook","age":45});
              Get.toNamed("/dummy", arguments: User(id:"dlgndud",email:"hooyoung.paul.lee@gmail.com",age:45));
            }, child: Text("Arguments")),
            ElevatedButton(onPressed: () {
              //Get.toNamed("/user/54314033?name=Paul&nickname=Hoolk");
              Get.toNamed("/user/54314033");
            }, child: Text("동적 URL")),
            ElevatedButton(onPressed: () {
              Get.to(SimpleStateManager());
            }, child: Text("단순 상태관리")),
          ],
        )
      ),
    );
  }

}

class User{
  String id;
  String email;
  int age;

  User({this.id, this.email, this.age});
}