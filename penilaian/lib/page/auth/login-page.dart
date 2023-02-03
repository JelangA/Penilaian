// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new
import 'package:flutter/material.dart';

import 'package:penilaian/widget/bigText.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool ishiddenPassword = true;

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
            colors: [Color.fromARGB(255, 112, 111, 219), Color.fromARGB(255, 203, 98, 98)],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              BigText(text: "E-Task", size: 40,color: Colors.white,),
              BigText(text: "MAKE EASIER BECOME GREAT EARLIER", size: 18, color: Colors.white,),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 380,
                width: 330,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: SizedBox(
                  width: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BigText(
                        text: "Username",
                        size: 17,
                      ),
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                            labelText: "Email",
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.account_box)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      BigText(
                        text: "password",
                        size: 17,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: passContrloller,
                        obscureText: ishiddenPassword,
                        decoration: InputDecoration(
                          labelText: "password",
                          border: OutlineInputBorder(),
                          suffixIcon: InkWell(
                              onTap: toggleViewPassword,
                              child: Icon(Icons.visibility),),
                        ),
                      ),
                      SizedBox(height: 40,),
                      new GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 120,
                          height: 40,
                          color: Colors.black87,
                          alignment: Alignment.center,
                          child: BigText(text: "Login",size: 17, color: Colors.white,),
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
