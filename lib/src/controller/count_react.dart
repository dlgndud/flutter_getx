import 'package:get/get.dart';

class CountControllWithReactive {
  RxInt count = 0.obs;

  void increase() {
    count++;
  }

  void putNumber(int value) {
    // 한번 상태가 5로 변경되면 버튼 클릭이 일어나도 해당 로직을 호출하지 않음
    count(value); // RxInt is class!
  }
}
