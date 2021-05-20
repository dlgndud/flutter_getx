import 'package:flutter_getx/src/models/pixa_model.dart';
import 'package:flutter_getx/src/repoistory/pixa_list.dart';
import 'package:get/get.dart';

class PixaController extends GetxController {
  static PixaController get to => Get.find();

  Rx<PixaModel> pixalist = PixaModel().obs;

  @override
  void onInit() {
    _pixaLoad();
    super.onInit();
  }

  void _pixaLoad() async {
    // way 1
    //PixaModel pixamodel = await PixaRepository().loadPixaImages();

    //PixaModel pixamodel = await Get.find<PixaRepository>().loadPixaImages();  // not working

    PixaModel pixamodel =
        await PixaRepository.to.loadPixaImages(); // not working

    if (pixamodel != null &&
        pixamodel.hits != null &&
        pixamodel.hits.length > 0) {
      pixalist(pixamodel);
    }
  }
}
