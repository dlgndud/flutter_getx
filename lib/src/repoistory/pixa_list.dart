import 'package:flutter_getx/src/models/pixa_model.dart';
import 'package:get/get.dart';

// https://github.com/jonataslaw/getx/blob/master/README.ko-kr.md
class PixaRepository extends GetConnect {
  static PixaRepository get to => Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    httpClient.baseUrl = 'https://pixabay.com';
  }

  Future<PixaModel> loadPixaImages(int page) async {
    String current_page = '${page}';

    String url =
        '/api/?key=KEY&q=yellow flowers&per_page=10&image_type=photo&pretty=true&page=${current_page}';
    print(url);

    final response = await get(url);
    if (response.hasError) {
      return Future.error(response.statusText);
    } else {
      if (response.body != null) {
        return PixaModel.fromJson(response.body);
      }
      //print(response.body);
    }
  }
}
