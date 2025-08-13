import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/football_player_controller.dart';
import '../routes/routes.dart';

class FootballPage extends StatelessWidget {
  final FootballPlayerController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Football Players")),
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.players.length,
          itemBuilder: (context, index) {
            final player = controller.players[index];
            return ListTile(
            leading: Image.network(
            player.imageUrl,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
              title: Text(player.name),
              subtitle: Text("${player.position} • #${player.number}"),
              onTap: () {
                Get.toNamed(AppRoutes.editPlayer, arguments: index);
              },
            );
          },
        );
      }),
    );
  }
}
