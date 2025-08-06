import 'package:flutter/material.dart';
import 'package:latihan1_11pplg2/widget/custom_button.dart';
import 'package:latihan1_11pplg2/widget/custom_textfield.dart';
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
              child: CustomTextfield(controller: txtUser,
               label: "username",
                labelColor: Colors.cyan,
                 pass: false,
                 isNumber: false)
            ), 
            
            Container(
              margin: EdgeInsets.only(top: 10,bottom: 10),
              child: CustomTextfield(controller: txtPassword,
               label: "Password",
               labelColor: Colors.amberAccent,
               pass: true,
               isNumber: false)
            ),

          Container(
              margin: EdgeInsets.all(10),
              child: CustomButton(myText: "Login", myTextColor: Colors.greenAccent, onPressed: (){
                 print("login button clicked");
              },
              )
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
