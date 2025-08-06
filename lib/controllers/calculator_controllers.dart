import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorControllers extends GetxController {
  final txtAngka1 = TextEditingController();
  final txtAngka2 = TextEditingController();
  var textHasil = "".obs;

  void tambah() {
    int angka1 = int.tryParse(txtAngka1.text) ?? 0;
    int angka2 = int.tryParse(txtAngka2.text) ?? 0;
    int hasil = angka1 + angka2;
    textHasil.value = hasil.toString();
  }

  void kurang() {
    int angka1 = int.tryParse(txtAngka1.text) ?? 0;
    int angka2 = int.tryParse(txtAngka2.text) ?? 0;
    int hasil = angka1 - angka2;
    textHasil.value = hasil.toString();
  }

  void kali() {
    int angka1 = int.tryParse(txtAngka1.text) ?? 0;
    int angka2 = int.tryParse(txtAngka2.text) ?? 0;
    int hasil = angka1 * angka2;
    textHasil.value = hasil.toString();
  }

  void bagi() {
    double angka1 = double.tryParse(txtAngka1.text) ?? 0;
    double angka2 = double.tryParse(txtAngka2.text) ?? 0;
    if (angka2 == 0) {
      textHasil.value = "Tidak bisa dibagi 0";
    } else {
      double hasil = angka1 / angka2;
      textHasil.value = hasil.toString();
    }
  }

  void clear() {
    txtAngka1.clear();
    txtAngka2.clear();
    textHasil.value = "";
  }
}
