import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:latihan1_11pplg2/controller/football_controller.dart';
import 'package:latihan1_11pplg2/pages.dart';
import 'package:latihan1_11pplg2/pages/kalkulator_page.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';
import 'login_page.dart';

void main() {
  Get.put(FootballController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    initialRoute: AppRoutes.footballPage,
    getPages: AppPages.pages,
    );
  }
}



 