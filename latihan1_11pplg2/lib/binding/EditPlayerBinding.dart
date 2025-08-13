import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controller/editPlayer_controller.dart';

class EditPlayerbinding extends Bindings {
  @override
  void dependencies() {
    int index= Get.arguments;
    Get.put(EditplayerController(index));
  }

}