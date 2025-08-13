import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controller/football_controller.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';

class FootballPage extends StatelessWidget {
  final FootballController footballController= Get.put(FootballController());
  FootballPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Pemain"),),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Obx(()=> ListView.builder(
          itemCount: footballController.players.length,
          itemBuilder: (context, index) { 
            return ListTile(
              leading: Image.asset(
                footballController.players[index].foto,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(footballController.players[index].nama),
              subtitle: Text(
                "Posisi ${footballController.players[index].posisi} - No : ${footballController.players[index].nomor}",
          
              ),
              
              onTap: ()=>{Get.toNamed(AppRoutes.editPlayerPages, arguments: index)},
            );
          },
          

        ))
      ),
    );
  }
}