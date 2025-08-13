import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/edit_player_controllers.dart';

class EditPlayerPage extends StatelessWidget {
  final EditPlayerController controller = Get.put(EditPlayerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Player")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller.nameController,
              decoration: InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: controller.positionController,
              decoration: InputDecoration(labelText: "Position"),
            ),
            TextField(
              controller: controller.numberController,
              decoration: InputDecoration(labelText: "Number"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.savePlayer,
              child: Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}
