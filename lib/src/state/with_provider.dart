import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/count_provider.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text("Provider"),
          // Consumer part만 build 됨, 전체 페이지가 해당되지 않음
          Consumer<CounterControllerProvider>(builder: (context, value, child) {
            return Text("${value.count}");
          },),

          ElevatedButton(onPressed: () {
            Provider.of<CounterControllerProvider>(context, listen: false).increase();
          }, child: Text("+", style: TextStyle(fontSize: 30),)),
          ElevatedButton(onPressed: () {
            Provider.of<CounterControllerProvider>(context, listen: false).decrease();
          }, child: Text("-", style: TextStyle(fontSize: 30))),
        ],
      ),
    );
  }
}
