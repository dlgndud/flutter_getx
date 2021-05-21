import 'package:flutter/material.dart';
import 'package:flutter_getx/src/models/pixa_model.dart';
import 'package:flutter_getx/src/repoistory/pixa_list.dart';
import 'package:get/get.dart';

class PixaController extends GetxController {
  static PixaController get to => Get.find();

  Rx<PixaModel> pixalist = PixaModel(hits: []).obs;
  RxInt _page = 1.obs;

  ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    _pixaLoad();
    _scrollEVent();
    super.onInit();
  }

  _scrollEVent() {
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        //print('reload list!!!');
        _page++;
        _pixaLoad();
      }
    });
  }

  void _pixaLoad() async {
    print('Reload ${_page.value}');
    // way 1
    //PixaModel pixamodel = await PixaRepository().loadPixaImages();

    // way 2
    //PixaModel pixamodel = await Get.find<PixaRepository>().loadPixaImages();  // not working

    // way 3
    PixaModel pixamodel =
        await PixaRepository.to.loadPixaImages(_page.value); // not working

    if (pixamodel != null &&
        pixamodel.hits != null &&
        pixamodel.hits.length > 0) {
      pixalist.update((val) {
        val.hits.addAll(pixamodel.hits);
      });
    }
  }
}
