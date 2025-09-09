import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controller/kalkulator_controller.dart';

class CalculatorBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<CalculatorController>(()=> CalculatorController());
  }

}