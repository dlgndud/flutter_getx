import 'package:flutter/material.dart';
import 'package:flutter_getx/src/state/simple_state_manager.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _current_idx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('라우트 관리 홈')),
      drawer: Drawer(
        child: Text("Drawer Menu"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset("assets/svg/iron_man.svg",
              semanticsLabel: 'Acme Logo'),
          ElevatedButton(
              onPressed: () {
                //Get.to(FirstPage());
                Get.toNamed("/first_named");
              },
              child: Text("getX Route")),
          ElevatedButton(
              onPressed: () {
                //Get.to(FirstPage());
                //Get.toNamed("/dummy", arguments: {"id":"paulook","age":45});
                Get.toNamed("/dummy",
                    arguments: User(
                        id: "dlgndud",
                        email: "hooyoung.paul.lee@gmail.com",
                        age: 45));
              },
              child: Text("argument transport")),
          ElevatedButton(
              onPressed: () {
                //Get.toNamed("/user/12345?name=Paul&nickname=Hoolk");
                Get.toNamed("/user/12345");
              },
              child: Text("동적 URL")),
          ElevatedButton(
              onPressed: () {
                Get.to(SimpleStateManager());
              },
              child: Text("단순 상태관리")),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/reactive_state/12345",
                    arguments: {'name': 'dlgndud'});
              },
              child: Text("반응형 상태관리")),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/dependency/12345");
              },
              child: Text("의존성주입")),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/binding");
              },
              child: Text("바인딩")),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/pixa/pixa");
              },
              child: Text("Pixa"))
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _current_idx,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: "받은견적",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_camera_mic), label: "보낸견적"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "요청"),
        ],
        onTap: (value) {
          setState(() {
            _current_idx = value;
          });
        },
      ),
    );
  }
}

class User {
  String id;
  String email;
  int age;

  User({this.id, this.email, this.age});
}
