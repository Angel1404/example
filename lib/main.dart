import 'package:example/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.RESETPASSWORD,
    defaultTransition: Transition.downToUp,
    getPages: AppPages.pages,
  ));
}
