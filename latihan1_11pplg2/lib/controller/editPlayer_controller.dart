import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controller/football_controller.dart';
import 'package:latihan1_11pplg2/model/football_model.dart';


class EditplayerController extends GetxController{
  final FootballController footballController= Get.find<FootballController>();
  final int? index;
  late TextEditingController namaEditingController;
  late TextEditingController posisiEditingController;
  late TextEditingController nomorEditingController;
  late TextEditingController fotoEditingController;

EditplayerController([this.index]);

  @override
  void onInit() {
    super.onInit();

     if (index != null) {
    namaEditingController = TextEditingController(
      text: footballController.players[index!].nama,
    );
    posisiEditingController = TextEditingController(
      text: footballController.players[index!].posisi,
    );
    nomorEditingController = TextEditingController(
      text: footballController.players[index!].nomor.toString(),
    );
     fotoEditingController = TextEditingController(text: footballController.players[index!].foto);
    } else {
     
      namaEditingController = TextEditingController();
      posisiEditingController = TextEditingController();
      nomorEditingController = TextEditingController();
      fotoEditingController = TextEditingController();
    }
  
  }

  void updatePlayer() {
    if (index != null) {
    footballController.updatePlayer(index!, Player(
      nama: namaEditingController.text,
      posisi: posisiEditingController.text,
      nomor: int.parse(nomorEditingController.text),
      foto: fotoEditingController.text,
    ));
    Get.back();
    }
  }
}