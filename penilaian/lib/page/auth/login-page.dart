// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penilaian/routes/RouteHelper.dart';
import 'package:penilaian/util/colors.dart';
import 'package:penilaian/widget/BigTextt.dart';
import 'package:http/http.dart' as http;
import 'package:penilaian/widget/TextStryle.dart';
import 'package:penilaian/widget/textField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _idToken;
  String? _tempidToken;

  bool ishiddenPassword = true;

  Future<void> login() async {
    // var response = await http.post(Uri.parse("http://127.0.0.1:8000/api/login"),

    ///url mobile
    var response = await http.post(Uri.parse("https://reqres.in/api/login"),
        body: ({
          'email': emailController.text,
          'password': passContrloller.text
        }));

    var responeData = json.decode(response.body);

    _tempidToken = responeData['token'];

    if (response.statusCode == 200) {
      Get.toNamed(RouteHelper.getHomepageGu());
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("login berhasil")));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(responeData['error'].toString())));
    }
  }

  var emailController = TextEditingController();
  var passContrloller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: 800,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [AppColors.backgroundcolor1, AppColors.backgroundcolor2],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 120,
              ),
              TextSty(text: "E-Task", size: 40),
              BigText(
                  text: "MAKE EASIER BECOME GREAT EARLIER",
                  size: 18,
                  color: Colors.white),
              SizedBox(height: 40),
              Container(
                height: 380,
                width: 330,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: SizedBox(
                  width: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BigText(text: "Username", size: 17, color: Colors.black),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "Email",
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white) //<-- SEE HERE
                              ),
                          // border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      BigText(text: "password", size: 17, color: Colors.black),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: passContrloller,
                        obscureText: ishiddenPassword,
                        decoration: InputDecoration(
                          hintText: "Password",
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white) //<-- SEE HERE
                              ),
                          // border: OutlineInputBorder(),
                          suffixIcon: InkWell(
                              onTap: toggleViewPassword,
                              child: Icon(Icons.visibility)),
                        ),
                      ),
                      SizedBox(height: 40),
                      new GestureDetector(
                        onTap: () {
                          login();
                        },
                        child: Container(
                          width: 120,
                          height: 40,
                          color: Colors.black87,
                          alignment: Alignment.center,
                          child: BigText(
                              text: "Login", size: 17, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void toggleViewPassword() {
    setState(() {
      ishiddenPassword = !ishiddenPassword;
    });
  }
}
