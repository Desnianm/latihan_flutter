import 'package:flutter/material.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
TextEditingController txtUser = TextEditingController();
TextEditingController txtPassword = TextEditingController();

String statuslogin = "login status";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Container(
        margin: EdgeInsets.all(10),


        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to our application",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            Text(
              "please fill your email and your username below",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 39, 236, 9)),
            ),
            
            Center(
              child: Container(
                width: 100,
                child: Image.asset("assets/cas.png"),
              ),
              ),

            Container(
              margin: EdgeInsets.only(top: 10,bottom: 10),
              child: TextField(
                controller: txtUser,
                decoration: InputDecoration(
                  labelText: "username",
                  border: OutlineInputBorder()
                ),
              ),
            ), 
            
            Container(
              margin: EdgeInsets.only(top: 10,bottom: 10),
              child: TextField(
                controller: txtPassword,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

          Container(
              margin: EdgeInsets.all(10),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                   
                    String username = txtUser.text;
                    String password = txtPassword.text;

                    setState(() {
                      if (username == "admin" && password == "admin") {
                        statuslogin = "Login berhasil";
                      } else {
                        statuslogin = "Login gagal";
                      }
                    });
                  },
                  child: Text("Login"),
                ),
              ),
            ),
             Text(statuslogin),
             TextButton (
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),                 
                );
              },
               child: Text("Apakah kamu belum punya akun? ayo daftar"),
             ),
          ],
        ),
      ),
    );
  }
}
