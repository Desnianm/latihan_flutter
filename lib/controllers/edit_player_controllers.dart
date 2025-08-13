import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/football_player_controller.dart';
import '../models/football_player_model.dart';

class EditPlayerController extends GetxController {
  final nameController = TextEditingController();
  final positionController = TextEditingController();
  final numberController = TextEditingController();

  final FootballPlayerController footballController = Get.find();
  late int playerIndex;

  @override
  void onInit() {
    super.onInit();
    playerIndex = Get.arguments as int;
    FootballPlayer player = footballController.players[playerIndex];
    nameController.text = player.name;
    positionController.text = player.position;
    numberController.text = player.number.toString();
  }

  void savePlayer() {
    footballController.updatePlayer(
      playerIndex,
      nameController.text,
      positionController.text,
      int.tryParse(numberController.text) ?? 0,
    );
    Get.back();
    Get.snackbar("Success", "Player updated successfully");
  }
}
