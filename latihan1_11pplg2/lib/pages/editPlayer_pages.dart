import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:latihan1_11pplg2/controller/editPlayer_controller.dart';
import 'package:latihan1_11pplg2/widget/Input.dart';
import 'package:latihan1_11pplg2/widget/register_Widget.dart';

class EditplayerPages extends StatelessWidget {
 
 
  EditplayerPages({super.key});

  @override
  Widget build(BuildContext context) {
    final int index= Get.arguments;
    final editplayerController= Get.put(EditplayerController());
    

    return Scaffold(
      appBar: AppBar(title: Text("Edit data pemain"),),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Input(input: "Nama", controller: editplayerController.namaEditingController),
            Input(input: "Posisi", controller: editplayerController.posisiEditingController),
            Input(input: "Nomor", controller: editplayerController.nomorEditingController),
            
            Button(buttonName: "Update", pressed: (){editplayerController.updatePlayer();})
          ],
        ),
      ),
    );
  }
}