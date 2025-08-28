import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/fragments/calculator_fragment.dart';
import 'package:latihan1_11pplg2/fragments/home_fragment.dart';
import 'package:latihan1_11pplg2/fragments/profile_fragment.dart';

class MainmenuController extends GetxController {
  var selectedIndex=0.obs;

  final List<Widget> pages=[
    HomeFragment(),
    CalculatorFragment(),
    ProfileFragment()
  ];

  void changePage(int index){
    selectedIndex.value=index;
  }
}