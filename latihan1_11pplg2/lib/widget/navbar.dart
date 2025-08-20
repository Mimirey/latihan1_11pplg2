import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:latihan1_11pplg2/controller/buttomNav_controller.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';

class CustomNavbar extends StatelessWidget {
 final NavbarController c= Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(()=> BottomNavigationBar(
      currentIndex : c.currentIndex.value, 
      onTap: (index) {
        switch (index) {
          case 0:
          Get.toNamed(AppRoutes.footballPage);
          break;

          case 1:
          Get.toNamed(AppRoutes.calculatorPage);
          break;

          case 2:
          Get.toNamed(AppRoutes.profilePage);
          break;
          default:
        }
      },
      items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.calculate), label: 'Kalkulator'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],

    ));
  }
}