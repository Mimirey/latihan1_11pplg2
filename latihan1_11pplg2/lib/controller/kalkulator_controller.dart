import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  final txtangka1= TextEditingController();
  final txtangka2= TextEditingController();
  var textHasil= "".obs;

  void tambah(){
    int angka1= int.parse(txtangka1.text);
    int angka2= int.parse(txtangka2.text);
    int hasil= angka1 + angka2;

    print("Hasil operasi:" + hasil.toString());
    textHasil.value=hasil.toString();  
  }

  void kurang(){
    int angka1= int.parse(txtangka1.text);
    int angka2= int.parse(txtangka2.text);
    int hasil= angka1 - angka2;

    print("Hasil operasi:" + hasil.toString());
    textHasil.value=hasil.toString();  
  }

   void kali(){
    int angka1= int.parse(txtangka1.text);
    int angka2= int.parse(txtangka2.text);
    int hasil= angka1 * angka2;

    print("Hasil operasi:" + hasil.toString());
    textHasil.value=hasil.toString();  
  }

   void bagi(){
    double angka1= double.parse(txtangka1.text);
    double angka2= double.parse(txtangka2.text);
    double hasil= angka1/angka2;

    print("Hasil operasi:" + hasil.toString());
    textHasil.value=hasil.toString();  
  }

  void clear(){
    txtangka1.text="";
    txtangka2.text="";
    textHasil.value="";
  }
}