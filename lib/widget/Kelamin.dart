import 'package:flutter/material.dart';

class GenderPicker extends StatelessWidget {
  final String? value;
  final Function(String?) onChanged;

  const GenderPicker({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: value,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: 'Jenis Kelamin',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      items: const [
        DropdownMenuItem(
          value: 'Laki-laki',
          child: Text('Laki-laki'),
        ),
        DropdownMenuItem(
          value: 'Perempuan',
          child: Text('Perempuan'),
        ),
      ],
    );
  }
}