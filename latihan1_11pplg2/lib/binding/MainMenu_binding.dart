import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:latihan1_11pplg2/controller/editPlayer_controller.dart';
import 'package:latihan1_11pplg2/controller/football_controller.dart';
import 'package:latihan1_11pplg2/controller/kalkulator_controller.dart';
import 'package:latihan1_11pplg2/controller/mainMenu_controller.dart';

class MainmenuBinding extends Bindings{
  @override
  void dependencies() {
    //inject Playercontroller, Calculatorcontoroller, Editplayercptroller
    Get.lazyPut<FootballController>(()=>FootballController());
    Get.lazyPut<EditplayerController>(()=>EditplayerController());
    Get.lazyPut<CalculatorController>(()=>CalculatorController());

    Get.lazyPut<MainmenuController>(()=>MainmenuController());
  }

}