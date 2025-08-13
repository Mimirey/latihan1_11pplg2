import 'package:get/get.dart';
import 'package:latihan1_11pplg2/model/football_model.dart';

class FootballController extends GetxController {
  var players=<Player>
  [
  Player(nama: "Harry Kane", posisi: "Striker", nomor: 9, foto:'assets/images/Harry.jpg'), 
  Player(nama: "Manuel Neuer", posisi: "Kiper", nomor: 1,foto:'assets/images/manuel.jpeg'), 
  Player(nama: "Jamal Musiala", posisi: "Gelandang", nomor: 10,foto:'assets/images/jamal.jpeg'), 
  Player(nama: "Kingsley Coman", posisi: "Sayap", nomor: 11,foto:'assets/images/kingsley.jpg'), 
  Player(nama: "Kim min-jae", posisi: "Bek tengah", nomor: 3,foto:'assets/images/kim.jpg'), 
  
  ].obs;

  void updatePlayer(int index, Player player) {
    players[index]= player;
  }
}
