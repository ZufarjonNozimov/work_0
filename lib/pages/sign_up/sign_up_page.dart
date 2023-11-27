import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_0/pages/home/home_pagee.dart';
import 'package:work_0/pages/splash/splash_next_main_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final passwordController = TextEditingController();
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Form(
          key: _key,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blueGrey.shade900,
                  Colors.blueGrey.shade900,
                  Colors.blueGrey.shade900,
                ],
              ),
            ),
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    label: const Text(
                      "Full name",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Write your name";
                    }
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    label: const Text(
                      "Email",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  validator: (value) {
                    var checkEmail =
                        RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
                    if (!checkEmail.hasMatch(value ?? "")) {
                      return "Wrong email";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    label: const Text(
                      "Password",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  validator: (value) {
                    var checkPassword = RegExp(
                        r"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$");
                    if (!checkPassword.hasMatch(value ?? "")) {
                      return "Wrong email";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    label: const Text(
                      "Confis password",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if ((value ?? "") == passwordController.text) {
                      return "not passsword";
                    }
                    ;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    fixedSize: const Size(double.maxFinite, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    var result = _key.currentState!.validate();
                    if (result) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const SplashMainPage(),
                        ),
                        (context) => false,
                      );
                    }
                  },
                  child: const Text(
                    "SIGN UP",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
