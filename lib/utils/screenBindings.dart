import 'package:get/get.dart';
import 'package:test_app/controller/page_one_controller.dart';
import 'package:test_app/controller/page_two_controller.dart';

class ScreenBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SignupScreenController());
    Get.lazyPut(() => SecondScreenController());
  }

}