import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/utils/constants.dart';
import 'package:test_app/utils/route_management.dart';
import 'package:test_app/utils/screenBindings.dart';

void main() {
  runApp(GetMaterialApp(
    initialBinding: ScreenBindings(),
    initialRoute: kFirstPage,
    getPages: RouteManagement.getPages(),
    debugShowCheckedModeBanner: false,
  ));
}
