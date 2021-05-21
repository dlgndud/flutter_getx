import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/pixa_controller.dart';
import 'package:flutter_getx/src/models/pixa_model.dart';
import 'package:get/get.dart';

class PixaPage extends StatefulWidget {
  PixaPage({Key key}) : super(key: key);

  @override
  _PixaPageState createState() => _PixaPageState();
}

class _PixaPageState extends State<PixaPage> {
  PixaController pixaController = Get.put(PixaController());
  Size _size;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _size = MediaQuery.of(context).size;
  }

  String title = Get.parameters['param'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => CustomScrollView(
        controller: pixaController.scrollController,
        slivers: [
          SliverAppBar(
            title: Text("Pixabay API"),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, idx) {
            //pixaController.pixalist.value.hits[idx];
            Hit hit = pixaController.pixalist.value.hits[idx];
            print(hit.previewUrl);
            return Stack(children: [
              GestureDetector(
                  onTap: () {
                    print(idx);
                  },
                  child: Container(
                    width: _size.width,
                    // child: FadeInImage.assetNetwork(
                    //   placeholder: 'assets/images/loading-buffering.gif',
                    //   image: hit.previewUrl,
                    //   fit: BoxFit.fitWidth,
                    // )),
                    child: CachedNetworkImage(
                      imageUrl: hit.previewUrl,
                      placeholder: (context, url) => Container(
                        child: Center(child: CircularProgressIndicator()),
                        height: 30,
                      ),
                      fit: BoxFit.fitWidth,
                    ),
                  )),
              Text(
                hit.user,
                style: TextStyle(fontSize: 40, color: Colors.amber),
              ),
            ]);
          },
                  childCount: pixaController.pixalist.value.hits == null
                      ? 0
                      : pixaController.pixalist.value.hits.length))
        ],
      ),
    ));
  }
}
