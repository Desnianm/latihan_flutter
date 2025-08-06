import 'package:flutter/material.dart';

class DateField extends StatelessWidget {
  final TextEditingController controller;

  const DateField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      readOnly: true, // supaya gak bisa ketik manual
      decoration: InputDecoration(
        labelText: "Tanggal Lahir",
        border: OutlineInputBorder(),
        suffixIcon: Icon(Icons.calendar_today),
      ),
      onTap: () async {
        DateTime? picked = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );

        if (picked != null) {
          controller.text = "${picked.day}/${picked.month}/${picked.year}";
        }
      },
    );
  }
}
