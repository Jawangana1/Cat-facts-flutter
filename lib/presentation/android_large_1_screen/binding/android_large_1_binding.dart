import '../controller/android_large_1_controller.dart';
import 'package:get/get.dart';

class AndroidLarge1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLarge1Controller());
  }
}
