import 'package:flutter/material.dart';
import 'widget/textfield.dart';
import 'widget/Kelamin.dart';
import 'widget/date_field.dart'; 

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController namaController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Daftar Akun")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            InputField(
              hintText: 'Nama lengkap anda',
              controller: namaController,
            ),
            InputField(
              hintText: 'Username Anda',
              controller: usernameController,
            ),
            InputField(
              hintText: 'Password Anda',
              controller: passwordController,
              isPassword: true,
            ),
            SizedBox(height: 10),
            GenderPicker(
              value: selectedGender,
              onChanged: (val) {
                setState(() {
                  selectedGender = val;
                });
              },
            ),
            SizedBox(height: 10),
            DateField(controller: dateController),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String nama = namaController.text;
                String username = usernameController.text;
                String password = passwordController.text;
                String? gender = selectedGender;
                String tanggal = dateController.text;

                if (nama.isEmpty || username.isEmpty || password.isEmpty || gender == null || tanggal.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Harap lengkapi semua data anda!'),
                      backgroundColor: Colors.red,
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Berhasil daftar sebagai $nama ($gender), lahir $tanggal'),
                      backgroundColor: Colors.green,
                    ),
                  );
                }
              },
              child: Text('Daftar'),
            ),
          ],
        ),
      ),
    );
  }
}
