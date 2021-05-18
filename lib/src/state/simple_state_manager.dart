import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/count_getx.dart';
import 'package:flutter_getx/src/controller/count_provider.dart';
import 'package:flutter_getx/src/state/with_getx.dart';
import 'package:flutter_getx/src/state/with_provider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class SimpleStateManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Simple State Manager'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: WithGetX()),
            Expanded(
                child: ChangeNotifierProvider<CounterControllerProvider>(
                    create: (context) => CounterControllerProvider(), child: WithProvider(),)
            )
          ],
        ),
      ),
    );
  }
}
