import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:latihan1_11pplg2/controller/mainMenu_controller.dart';

class MainMenuPage extends StatelessWidget {
   MainMenuPage({super.key});
  //  MainmenuController mainmenuController= Get.put(MainmenuController());
  final mainmenuController=Get.find<MainmenuController>();

  @override
  Widget build(BuildContext context) {
    return Obx(()=> Scaffold(
      appBar: AppBar(title: Text("My Menu Example"),),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text("Menu"),
            ),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text("Player"),
              onTap: (){
                mainmenuController.selectedIndex.value=0;
                Navigator.pop(context);
              },
            ),
            ListTile(
               leading: const Icon(Icons.calculate),
                  title: const Text("Calculator"),
                  onTap: () {
                    mainmenuController.selectedIndex.value = 1;
                    Navigator.pop(context);
                  },
            ),
            ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text("Profile"),
                  onTap: () {
                    mainmenuController.selectedIndex.value = 2;
                    Navigator.pop(context);
                  },
            ),
          ],
          ),
        ),
      
      body: mainmenuController.pages[mainmenuController.selectedIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: mainmenuController.selectedIndex.value,
            onTap: (index) {
              mainmenuController.selectedIndex.value = index;
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Player"),
              BottomNavigationBarItem(icon: Icon(Icons.calculate), label: "Calculator"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            ],
          ),
          
    ));
    
  }
}