import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:latihan1_11pplg2/controller/football_controller.dart';

class FootballBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<FootballController>(()=>FootballController());
  }

}