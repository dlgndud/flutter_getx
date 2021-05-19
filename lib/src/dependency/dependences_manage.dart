import 'package:flutter/material.dart';
import 'package:flutter_getx/src/dependency/dependency_controller.dart';
import 'package:flutter_getx/src/dependency/get_put.dart';
import 'package:flutter_getx/src/dependency/lazy_put.dart';
import 'package:get/get.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title = Get.parameters['param'];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
          child: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  // GetX를 통해서 페이지를 호출할 때에 바인딩 작업을 수행, 컨트롤로가 호출될 때에 메모리에 올리고 내리는(close, delete) 것을 위임하는 방식
                  Get.to(GetPutDuumy(), binding: BindingsBuilder(() {
                    Get.put(DependencyController());
                  }));
                },
                child: Text("GetPut")),
            ElevatedButton(
                onPressed: () {
                  Get.to(LazyGetPutDummy(), binding: BindingsBuilder(() {
                    Get.lazyPut(() => DependencyController());
                  }));
                },
                child: Text("Lazy Put")),
            ElevatedButton(
                onPressed: () {
                  // 비동기 처리후 put
                  Get.to(GetPutDuumy(), binding: BindingsBuilder(() async {
                    await Future.delayed(Duration(seconds: 3));
                    return DependencyController();
                  }));
                },
                child: Text("Get.putAsync")),
            ElevatedButton(
                onPressed: () {
                  // 모든 instance는 싱글톤이기 때문에 하나만 생성되나, 이것은 매번 생성하는 방식이다.
                  Get.to(LazyGetPutDummy(), binding: BindingsBuilder(() {
                    Get.create(() => DependencyController());
                  }));
                },
                child: Text("Get.Create"))
          ],
        ),
      )),
    );
  }
}
