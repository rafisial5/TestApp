import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:test_app/utils/screenBindings.dart';
import 'package:test_app/view/page_one_screen.dart';
import 'package:test_app/view/page_two_screen.dart';

import 'constants.dart';

class RouteManagement {
  static List<GetPage> getPages() {
    return [
      GetPage(
          name: kFirstPage,
          page: () => const SignupScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kSecondPage,
          page: () => const SecondScreen(),
          binding: ScreenBindings()),
    ];
  }
}
