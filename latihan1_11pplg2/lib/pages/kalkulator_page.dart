import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:latihan1_11pplg2/controller/kalkulator_controller.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';
import 'package:latihan1_11pplg2/widget/register_Widget.dart';

class Calculator extends StatelessWidget {
  
  Calculator({super.key});
  final CalculatorController calculatorController= Get.put(CalculatorController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator"),),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Inputform(input: "Angka 1", controller: calculatorController.txtangka1, isShow: false, isNumber: true,),
            Inputform(input: "Angka 2", controller: calculatorController.txtangka2, isShow: false, isNumber: true,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(buttonName: "+", pressed:() {calculatorController.tambah();}),
                Button(buttonName: "-", 
                pressed:() {calculatorController.kurang();}
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(buttonName: "x", pressed:() {calculatorController.kali();}),
                Button(buttonName: "/", pressed:() {calculatorController.bagi();}), 
              ],
            ),
            Obx((){
              return Text("Hasil : " +calculatorController.textHasil.value);
            }),
            Button(buttonName: "Clear", pressed: (){calculatorController.clear();}),
            Button(buttonName: "Pindah halaman", pressed: (){Get.toNamed(AppRoutes.footballPage);}),
          ],
        ),
      ),
    );
  }
}