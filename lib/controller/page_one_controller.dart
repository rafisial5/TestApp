import 'package:get/get.dart';
import 'package:test_app/utils/constants.dart';

class SignupScreenController extends GetxController {
  void moveToNextScreen() {
    Get.toNamed(kSecondPage);
  }
}
