import 'package:flutter/material.dart';
import 'package:flutter_getx/src/home.dart';
import 'package:flutter_getx/src/pages/dummy.dart';
import 'package:flutter_getx/src/pages/user.dart';
import 'package:flutter_getx/src/pages/firstnamed.dart';
import 'package:flutter_getx/src/pages/secondnamed.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      //getx version, you don't need to home
      getPages: [
        GetPage(name: "/", page: () => Home()),
        GetPage(name: "/first_named", page: () => FirstNamedPage(), transition: Transition.leftToRight), // transition
        GetPage(name: "/second_named", page: () => SecondNamedPage()),
        GetPage(name: "/dummy", page: () => DummyPage()),
        GetPage(name: "/user/value", page: () => UserPage()),
      ],
    );
  }
}

