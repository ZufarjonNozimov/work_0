import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_0/pages/home/home_pagee.dart';
import 'package:work_0/pages/sign_up/sign_up_page.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _key,
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    label: const Text("Email"),
                    hintText: 'forxmpel@gmail.com',
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
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    label: const Text("Password"),
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
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(double.maxFinite, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    var result = _key.currentState!.validate();
                    if (result) {
                      Navigator.pushReplacement(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    }
                  },
                  child: const Text(
                    "LOG IN",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("You don't have an account?"),
                    CupertinoButton(
                      padding: const EdgeInsets.all(8),
                      child: const Text("Sign up"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => SignUpPage(),
                          ),
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
