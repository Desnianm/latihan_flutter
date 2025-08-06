import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/calculator_controllers.dart';
import 'package:latihan1_11pplg2/widget/custom_button.dart';
import 'package:latihan1_11pplg2/widget/custom_textfield.dart';

class CalculatorPages extends StatelessWidget {
  final CalculatorControllers calculatorController =
      Get.put(CalculatorControllers());

  CalculatorPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextfield(
              controller: calculatorController.txtAngka1,
              label: "Masukkan angka 1",
              labelColor: Colors.blueAccent,
              pass: false,
              isNumber: true,
            ),
            const SizedBox(height: 12),
            CustomTextfield(
              controller: calculatorController.txtAngka2,
              label: "Masukkan angka 2",
              labelColor: Colors.blueAccent,
              pass: false,
              isNumber: true,
            ),
            const SizedBox(height: 20),

            
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    myText: "+",
                    myTextColor: const Color.fromARGB(255, 243, 5, 5),
                    onPressed: calculatorController.tambah,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomButton(
                    myText: "-",
                    myTextColor: const Color.fromARGB(255, 241, 5, 5),
                    onPressed: calculatorController.kurang,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

          
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    myText: "×",
                    myTextColor: const Color.fromARGB(255, 255, 0, 0),
                    onPressed: calculatorController.kali,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomButton(
                    myText: "÷",
                    myTextColor: const Color.fromARGB(255, 249, 2, 2),
                    onPressed: calculatorController.bagi,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

           
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    myText: "Clear",
                    myTextColor: const Color.fromARGB(255, 253, 5, 5),
                    onPressed: calculatorController.clear,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

           
            Obx(() {
              return Text(
                "Hasil: ${calculatorController.textHasil.value}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
