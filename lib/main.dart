import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/football_player_controller.dart';
import 'routes/routes.dart';
import 'routes/pages.dart';

void main() {
  Get.put(FootballPlayerController()); // inisialisasi controller sekali di awal
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.calculator,
      getPages: AppPages.pages,
    );
  }
}
