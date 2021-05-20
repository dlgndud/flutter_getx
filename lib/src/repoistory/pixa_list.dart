import 'package:flutter_getx/src/models/pixa_model.dart';
import 'package:get/get.dart';

// https://github.com/jonataslaw/getx/blob/master/README.ko-kr.md
class PixaRepository extends GetConnect {
  static PixaRepository get to => Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    httpClient.baseUrl = 'https://pixabay.com';

    // httpClient.addRequestModifier((request) {
    //   request.headers['key'] = '20798682-40cc45bff917604b921e5fc66';
    //   return request;
    // });
  }

  Future<PixaModel> loadPixaImages() async {
    String url =
        '/api/?key=USER_API&q=yellow flowers&per_page=10&image_type=photo&pretty=true';
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
