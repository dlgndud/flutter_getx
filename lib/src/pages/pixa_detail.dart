import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/pixa_controller.dart';
import 'package:flutter_getx/src/models/pixa_model.dart';
import 'package:get/get.dart';

class PixaDetailView extends StatefulWidget {
  PixaDetailView({Key key}) : super(key: key);

  @override
  _PixaDetailViewState createState() => _PixaDetailViewState();
}

class _PixaDetailViewState extends State<PixaDetailView> {
  PixaController pixaController = Get.put(PixaController());

  String _idx = Get.parameters['param'];

  @override
  void initState() {
    super.initState();
    //print(pixaController.selectedHit.value.pageUrl);
  }

  @override
  Widget build(BuildContext context) {
    Hit _hit = pixaController.selectedHit.value;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Information"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: _hit.largeImageUrl,
            placeholder: (context, url) => Container(
              child: Center(child: CircularProgressIndicator()),
              height: 30,
            ),
            fit: BoxFit.fitWidth,
          ),
          Text('USER : ${_hit.userId}/${_hit.user}'),
          Text('${_hit.views}'),
          Text('${_hit.downloads}'),
          Text('${_hit.favorites}'),
        ],
      )),
    );
  }
}
