import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/binding/EditPlayerBinding.dart';
import 'package:latihan1_11pplg2/pages/editPlayer_pages.dart';
import 'package:latihan1_11pplg2/pages/football_page.dart';
import 'package:latihan1_11pplg2/pages/kalkulator_page.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';
class AppPages{
  static final pages=[
    GetPage(name: AppRoutes.calculatorPage, page:()=> Calculator()),
    GetPage(name: AppRoutes.footballPage, page:()=>FootballPage()),
    GetPage(name: AppRoutes.editPlayerPages, page: ()=>EditplayerPages(), binding: EditPlayerbinding()),
  ];
}